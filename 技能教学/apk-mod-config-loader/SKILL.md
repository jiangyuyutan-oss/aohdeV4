# APK JSON 配置加载器开发

## 适用场景

需要在 APK 中添加 JSON 配置文件读取能力，允许用户通过修改外部 JSON 来覆盖游戏默认参数。

## 核心设计原则

### 1. 双重读取优先级

```
优先级 1（最高）: 外部存储 - Gdx.files.local("mods/config.json")
优先级 2（次高）: APK 内部 - Gdx.files.internal("mods/config.json")
优先级 3（最低）: 原版硬编码默认值
```

**为什么这样设计**：
- Modder 可以先将配置打包进 APK assets 快速测试
- 正式发布后可将文件放到外部存储，无需重新打包 APK
- 原版硬编码作为兜底，确保配置缺失时游戏不会崩溃

### 2. 部分覆盖模式

只覆盖 JSON 中存在的字段，不存在的字段保持原值：

```smali
invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
move-result-object v1
if-eqz v1, :skip_field          # JSON 中不存在此 key → 跳过
invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
move-result v3
iput v3, p0, LClass;->FIELD:I
:skip_field
```

**关键经验**：不要假设 JSON 包含所有字段。Modder 可能只修改其中几个值。

## 完整实现模板

### 文件查找逻辑

```smali
.method public static loadConfig(LTargetClass;)V
    .registers 9
    .param p0, "target"

    .catch Ljava/lang/Exception; {:try_start .. :try_end} :try_catch

    :try_start
    # 1. 检查外部存储
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
    const-string v6, "mods/config.json"
    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z
    move-result v7
    if-eqz v7, :check_internal    # v7==0 (不存在) → 检查 internal

    goto :parse                    # v7!=0 (存在) → 直接解析

    # 2. 检查 APK 内部
    :check_internal
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
    const-string v6, "mods/config.json"
    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z
    move-result v7
    if-eqz v7, :try_end           # v7==0 (不存在) → 跳过

    # 3. 解析 JSON
    :parse
    new-instance v5, Lcom/badlogic/gdx/utils/JsonReader;
    invoke-direct {v5}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V
    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v2

    # 4. 逐个字段覆盖（int 类型）
    const-string v0, "FIELD_NAME"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_int_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I
    move-result v3
    iput v3, p0, LTargetClass;->FIELD_NAME:I
    :skip_int_1

    # 5. 逐个字段覆盖（float 类型）
    const-string v0, "FLOAT_FIELD"
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    move-result-object v1
    if-eqz v1, :skip_float_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F
    move-result v3
    iput v3, p0, LTargetClass;->FLOAT_FIELD:F
    :skip_float_1

    :try_end
    return-void

    :try_catch
    move-exception v5
    const-string v6, "ConfigLoader"
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object v7
    sget-object v8, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;
    invoke-interface {v8, v6, v7}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V
    return-void

.end method
```

### 控制流验证表

每次编写后必须验证四种场景：

| local 存在 | internal 存在 | L26 `if-eqz` | L28 `goto` | L38 `if-eqz` | 结果 |
|-----------|---------------|-------------|-----------|-------------|------|
| 是 | 是 | 不跳 | 跳 :parse | 不执行 | 用 local 解析 |
| 是 | 否 | 不跳 | 跳 :parse | 不执行 | 用 local 解析 |
| 否 | 是 | 跳 :check_internal | 不执行 | 不跳，落 :parse | 用 internal 解析 |
| 否 | 否 | 跳 :check_internal | 不执行 | 跳 :try_end | 跳过 |

## 关键经验教训

### 1. `if-eqz` vs `if-nez` 的致命陷阱

```smali
invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z
move-result v7
```

- `exists()` 返回 `true=1` 或 `false=0`
- `if-eqz v7, :label` = 如果 v7 **等于 0**（false/不存在）则跳转
- `if-nez v7, :label` = 如果 v7 **不等于 0**（true/存在）则跳转

**致命 Bug 案例**：
```smali
# 错误写法 - 文件存在时反而跳过了
if-nez v7, :try_end    # 存在 → 跳过解析！

# 正确写法
if-eqz v7, :try_end    # 不存在 → 跳过解析
```

### 2. 寄存器分配策略

```smali
.registers 9           # v0-v8，p0 是参数
# v0 = JSON key 字符串
# v1 = JsonValue 临时变量
# v2 = 根 JsonValue 对象
# v3 = 转换后的值（int/float）
# v4 = FileHandle 对象
# v5 = Gdx.files / JsonReader
# v6 = 路径字符串
# v7 = exists() 结果
# v8 = Gdx.app
```

**经验教训**：不要用同一个寄存器存不同类型的对象。`v4` 专门存 `FileHandle`，`v5` 专门存 `Gdx.files` 和 `JsonReader`，避免复用导致混乱。

### 3. 异常处理必须记录日志

```smali
:try_catch
move-exception v5
const-string v6, "ConfigLoader"
invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v7
sget-object v8, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;
invoke-interface {v8, v6, v7}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V
return-void
```

**为什么重要**：JSON 格式错误、类型不匹配、文件损坏等任何异常都会被静默吞掉。没有日志，Modder 永远不知道配置为什么没生效。

## JSON Schema 设计建议

```json
{
  "INT_FIELD": 45,
  "FLOAT_FIELD": 3.0,
  "BOOLEAN_FIELD": true,
  "STRING_FIELD": "default"
}
```

- 只包含 Modder 可能需要修改的字段
- 在文档中说明每个字段的含义和默认值
- 对于不寻常的默认值（如负数），添加注释说明是原版设定

## 检查清单

- [ ] 控制流逻辑正确（四种场景全部验证）
- [ ] 寄存器分配无冲突
- [ ] 字段类型与目标类声明匹配
- [ ] try-catch 标签定义完整
- [ ] 异常处理包含日志记录
- [ ] JSON 中存在的 key 与字段名完全匹配
- [ ] 懒加载模式（JSON 不存在的 key 不覆盖原值）
