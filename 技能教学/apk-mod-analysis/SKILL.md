# APK 逆向分析经验

## 适用场景

当需要对 Android APK 进行逆向修改，但缺乏原始源代码时，使用此技能指导分析流程。

## 核心工作流

### 1. 反编译与文件定位

```bash
# 使用 APKTool 反编译
apktool d target.apk -o output_dir

# 使用 grep 定位目标类
grep -r "class_name" output_dir/smali/
```

**经验教训**：不要假设类名与 Java 源代码一致。游戏开发中常使用混淆或简写类名（如 `GV_Technology` 而非 `GameValuesTechnology`）。

### 2. 字段类型分析

定位目标类后，提取所有 `.field` 声明：

```smali
.field public FIELD_NAME:I    # I = int
.field public FIELD_NAME:F    # F = float
.field public FIELD_NAME:Ljava/lang/String;  # 对象类型
.field public FIELD_NAME:Z    # Z = boolean
.field public FIELD_NAME:J    # J = long (需要 2 个寄存器)
```

**关键经验**：
- 记录每个字段的类型，后续写入时必须匹配
- 使用 `grep '\.field' target_class.smali | wc -l` 确认字段总数
- 注意 `J`(long) 和 `D`(double) 类型占用两个寄存器，`.registers` 声明必须足够

### 3. 理解原有逻辑

阅读 `<init>` 方法了解默认值：

```smali
.method public constructor <init>()V
    .registers 3
    const/16 v0, 0x2d      # 45
    iput v0, p0, LClass;->FIELD:I
    
    const/high16 v0, 0x40400000  # 3.0f
    iput v0, p0, LClass;->FLOAT_FIELD:F
.end method
```

**关键经验**：
- `const/16` 用于 -32768 到 32767 的整数
- `const/high16` 用于浮点数的高 16 位
- `const-string` 用于字符串
- 这些指令帮助理解原版的默认行为

### 4. 确定注入点

找到调用目标类的位置，确定在哪里注入新逻辑：

```bash
# 查找谁实例化了目标类
grep -r "new-instance.*GV_Technology" smali/

# 查找谁调用了关键方法
grep -r "invoke.*GV_Technology.*method" smali/
```

**经验教训**：
- 优先在构造函数调用后、首次使用前注入
- 如果找不到直接调用点，可以在类的 `<init>` 末尾注入

### 5. 验证假设

修改前必须验证：
- 字段名是否完全匹配（包括大小写）
- 类型签名是否正确
- 包路径是否正确

**实战案例**：在《文明时代 2》中，目标类是 `Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_Technology`，包含 29 个字段（15 个 int，14 个 float）。通过 `grep '\.field'` 提取完整列表后，与 JSON 配置一一映射。

## 检查清单

- [ ] 已确认目标类的完整包路径
- [ ] 已提取所有字段及其类型
- [ ] 已理解原有逻辑的默认行为
- [ ] 已确定安全的注入点
- [ ] 已验证字段名和类型签名
- [ ] 已备份原始 smali 文件

## 常见陷阱

1. **混淆类名**：游戏可能使用 ProGuard/R8 混淆，类名不一定是原始 Java 名
2. **字段重载**：子类可能覆盖父类字段，需要检查继承链
3. **静态 vs 实例**：`.field public static` 是静态字段，访问方式不同（`sget`/`sput` vs `iget`/`iput`）
4. **寄存器溢出**：`.registers N` 声明的寄存器数量不足会导致编译失败
