# Smali 代码质量标准

## 适用场景

编写、修改或审查 Smali 代码时，使用此技能确保代码质量，避免常见陷阱。

## 核心原则

### 1. 控制流正确性

Smali 是低级字节码表示，控制流错误会导致严重的运行时 bug。

#### 条件判断指令速查

| 指令 | 含义 | 跳转条件 |
|------|------|---------|
| `if-eqz vX, :label` | if equals zero | vX == 0 时跳转 |
| `if-nez vX, :label` | if not equals zero | vX != 0 时跳转 |
| `if-eq vA, vB, :label` | if equal | vA == vB 时跳转 |
| `if-ne vA, vB, :label` | if not equal | vA != vB 时跳转 |
| `if-lt vA, vB, :label` | if less than | vA < vB 时跳转 |
| `if-ge vA, vB, :label` | if greater or equal | vA >= vB 时跳转 |
| `goto :label` | 无条件跳转 | 总是跳转 |

#### 布尔值转换规则

```smali
# Java: if (file.exists()) { ... }
# 正确 Smali:
invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z
move-result v7
if-nez v7, :label_true    # v7 != 0 (true) → 跳转

# Java: if (!file.exists()) { ... }
# 正确 Smali:
invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z
move-result v7
if-eqz v7, :label_false   # v7 == 0 (false) → 跳转
```

**致命陷阱**：`if-eqz` 和 `if-nez` 搞反是最常见的 bug 来源。务必在编写后画控制流表验证。

### 2. 寄存器管理规范

#### 静态方法寄存器分配

```smali
.method public static methodName(LParamType;)V
    .registers 8          # v0-v7
    .param p0, "paramName"
```

- `.registers N` 声明局部变量寄存器数量（v0 到 v(N-1)）
- `p0` 是方法参数（静态方法 p0 是第一个参数）
- 实例方法 `p0` 是 `this`，`p1` 是第一个参数

#### 类型与寄存器关系

| Java 类型 | Smali 类型 | 占用寄存器 | 指令示例 |
|-----------|-----------|-----------|---------|
| int | I | 1 | `const/16`, `const` |
| float | F | 1 | `const/high16`, `const` |
| boolean | Z | 1 | `const/4` (0 或 1) |
| long | J | 2 | `const-wide` |
| double | D | 2 | `const-wide` |
| 对象 | L... | 1 | `const-string`, `new-instance` |

#### 寄存器分配最佳实践

1. **按功能分组**：
   ```smali
   # v0-v3: JSON 解析相关
   # v4: FileHandle
   # v5-v7: Gdx 对象和临时变量
   ```

2. **避免类型混用**：不要在同一个寄存器中交替存储 int 和对象
3. **预留 catch 块寄存器**：catch 块需要的寄存器也要计入总数

### 3. Try-Catch 块规范

#### 正确格式

```smali
.catch Ljava/lang/Exception; {:try_start .. :try_end} :try_catch

:try_start
    ... 正常代码 ...
:try_end
    return-void

:try_catch
    move-exception v5
    ... 错误处理 ...
    return-void
```

**关键要求**：
- `:try_start` 和 `:try_end` 必须是实际存在的标签
- `:try_catch` 必须放在 `return-void` 之后
- `.catch` 指令必须在方法开头声明

**常见错误**：
```smali
# 错误 1：标签不存在
.catch Ljava/lang/Exception; {:try_start .. :try_end} :try_catch
# 但没有定义 :try_start 或 :try_end 标签

# 错误 2：范围不完整
:try_start
    ... 部分代码 ...
# 缺少 :try_end，try 块范围不明确
```

### 4. 字段访问规范

#### 实例字段 vs 静态字段

```smali
# 实例字段（需要 this 引用）
iget v0, p0, LClass;->field:I    # 读取
iput v0, p0, LClass;->field:I    # 写入

# 静态字段（不需要 this）
sget v0, LClass;->staticField:I  # 读取
sput v0, LClass;->staticField:I  # 写入
```

#### 字段签名格式

```
L完整/包/路径/类名;->字段名:类型
```

示例：
```smali
Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology;->ADD_CIV_DEFAULT_TECH_LEVEL:I
Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
```

### 5. 方法调用规范

#### 调用类型速查

| 调用类型 | 指令 | 适用场景 |
|---------|------|---------|
| 直接调用 | `invoke-direct` | 构造函数、private 方法 |
| 静态调用 | `invoke-static` | static 方法 |
| 虚调用 | `invoke-virtual` | 非 final 实例方法 |
| 接口调用 | `invoke-interface` | 接口方法 |

#### 返回值处理

```smali
# 有返回值的方法
invoke-virtual {v5, v4}, LClass;->method()Ljava/lang/Object;
move-result-object v2          # 对象类型

invoke-virtual {v1}, LClass;->asInt()I
move-result v3                 # 基本类型

invoke-virtual {v4}, LClass;->exists()Z
move-result v7                 # boolean
```

### 6. 代码审查清单

每次编写 Smali 代码后，逐项检查：

#### 控制流
- [ ] 所有 `if-eqz`/`if-nez` 条件与预期一致
- [ ] 所有标签都有定义
- [ ] 没有死代码（不可达的代码路径）
- [ ] `goto` 不会造成无限循环
- [ ] 四种场景（如果适用）全部验证通过

#### 寄存器
- [ ] `.registers` 数量足够
- [ ] 没有寄存器类型混用
- [ ] `move-result` 与调用指令配对
- [ ] catch 块寄存器不冲突

#### Try-Catch
- [ ] `.catch` 指令格式正确
- [ ] `:try_start`、`:try_end`、`:try_catch` 都存在
- [ ] catch 块以 `move-exception` 开头
- [ ] 所有路径都有 `return-void`

#### 字段访问
- [ ] 实例字段使用 `iget`/`iput`
- [ ] 静态字段使用 `sget`/`sput`
- [ ] 字段签名完整且正确
- [ ] 类型与字段声明匹配

#### 方法调用
- [ ] 调用类型正确（direct/virtual/interface/static）
- [ ] 参数数量和类型匹配
- [ ] 返回值正确处理

## 常见 Bug 模式

### 1. 标签名与语义不符

```smali
# 错误：标签叫 try_internal，但实际行为是检查 internal
if-nez v7, :try_internal    # 语义混乱
```

**解决方案**：标签名应清晰表达意图，如 `:check_internal`、`:fallback_internal`。

### 2. 寄存器复用导致的隐性 Bug

```smali
# 危险：v4 被复用存不同类型的对象
move-result-object v4        # v4 = local FileHandle
...
move-result-object v4        # v4 = internal FileHandle
```

**解决方案**：使用专用寄存器，或通过清晰的标签隔离逻辑块。

### 3. 异常处理静默吞掉错误

```smali
:try_catch
    nop                      # 什么都不做
    return-void
```

**解决方案**：至少记录日志，方便调试。

### 4. 条件判断搞反

```smali
# 想实现"文件存在时解析"
invoke-virtual {v4}, ...->exists()Z
move-result v7
if-nez v7, :parse            # 正确：v7 != 0 (存在) 时跳转
```

**验证方法**：写出真值表，逐一验证每个分支。

## 调试技巧

1. **添加临时日志**：
   ```smali
   sget-object v8, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;
   const-string v6, "DEBUG"
   const-string v7, "Reached this point"
   invoke-interface {v8, v6, v7}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V
   ```

2. **使用 APKTool 重新编译验证**：
   ```bash
   apktool b output_dir -o modified.apk
   ```

3. **检查 smali 语法**：使用 `smali assemble` 进行语法验证
