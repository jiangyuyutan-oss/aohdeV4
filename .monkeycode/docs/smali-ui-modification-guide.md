# Age of History II - Smali UI 修改教程

## 目录
1. [基础知识](#1-基础知识)
2. [项目结构](#2-项目结构)
3. [UI 修改入门](#3-ui-修改入门)
4. [样式调整](#4-样式调整)
5. [新增组件](#5-新增组件)
6. [交互优化](#6-交互优化)
7. [安全最佳实践](#7-安全最佳实践)
8. [实战示例](#8-实战示例)

---

## 1. 基础知识

### 1.1 什么是 Smali？
Smali 是 Android DEX 字节码的反汇编格式。当你反编译 APK 后，得到的就是 `.smali` 文件。

**类比关系**：
- Java 源代码 → 编译 → `.class` → 打包 → `.dex` → 反汇编 → `.smali`
- 修改 `.smali` → 汇编 → `.dex` → 打包 → 新的 APK

### 1.2 Smali 语法基础

#### 寄存器
```smali
# v0, v1, v2... 是局部寄存器
# p0, p1, p2... 是参数寄存器（p0 通常是 this）

const/4 v0, 0x1      # v0 = 1
const/high16 v0, 0x3f800000  # v0 = 1.0f (浮点数)
move v1, v0          # v1 = v0
```

#### 字段操作
```smali
# 读取静态字段
sget v0, Lcom/example/MyClass;->MY_FIELD:I

# 写入静态字段
sput v0, Lcom/example/MyClass;->MY_FIELD:I

# 读取实例字段
iget v0, p0, Lcom/example/MyClass;->myField:I

# 写入实例字段
iput v0, p0, Lcom/example/MyClass;->myField:I
```

#### 方法调用
```smali
# 调用静态方法
invoke-static {}, Lcom/example/Util;->getValue()I
move-result v0

# 调用实例方法
invoke-virtual {p0}, Lcom/example/MyClass;->getName()Ljava/lang/String;
move-result-object v0

# 调用直接方法（构造函数）
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
```

#### 常用数据类型
```smali
# 整数
const/4 v0, 0x0      # 0
const/4 v0, 0x1      # 1
const/16 v0, 0x64    # 100

# 浮点数
const/4 v0, 0x0      # 0.0f
const/high16 v0, 0x3f800000  # 1.0f
const v0, 0x3e99999a # 0.3f

# 字符串
const-string v0, "Hello World"

# 对象
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
```

### 1.3 游戏 UI 架构

本游戏使用 **LibGDX** 框架，UI 系统核心类：

```
Menu (基类)
  └── Menu_Main (主菜单)
  └── Menu_Options (选项菜单)
  └── ...

Button/MenuElemUI (按钮基类)
  └── Button_Classic (经典按钮)
  └── Button_Classic_LR_Main (主菜单左右布局按钮)
  └── ...

TitleM (标题文本组件)
TextB (文本框组件)
```

---

## 2. 项目结构

### 2.1 核心 UI 目录

```
/workspace/age/of/civilizations2/jakowski/lukasz/
├── Menus/                    # 所有菜单界面
│   ├── Main/                 # 主菜单
│   │   ├── Menu_Main.smali   # 主菜单类
│   │   ├── Menu_Main$1.smali # 匿名内部类（按钮回调）
│   │   └── Menu_Main2.smali  # 主菜单变体
│   ├── Options/              # 选项设置
│   ├── Load/                 # 加载游戏
│   └── NewGame/              # 新游戏
│
├── Button/                   # 按钮组件
│   ├── Classic/              # 经典按钮样式
│   │   ├── Button_Classic.smali
│   │   └── Button_Classic_LR_Main.smali
│   └── MenuElemUI.smali      # 按钮基类
│
├── Title/                    # 标题组件
│   └── TitleM.smali
│
├── CFG.smali                 # 全局配置（颜色、尺寸等）
├── IMGManager.smali          # 图片管理器
└── Images.smali              # 图片资源 ID
```

### 2.2 关键配置文件

- **CFG.smali**: 游戏全局配置，包含按钮高度、间距、颜色等
- **Images.smali**: 所有图片资源的 ID 定义
- **IMGManager.smali**: 图片加载和管理

---

## 3. UI 修改入门

### 3.1 修改流程

```
1. 定位目标 Smali 文件
2. 理解代码结构（构造函数、方法、字段）
3. 修改代码（位置、颜色、大小等）
4. 重新编译 APK
5. 签名并安装测试
```

### 3.2 重新编译 APK

```bash
# 1. 使用 smali 工具重新汇编
java -jar smali-3.0.3.jar assemble /workspace -o classes.dex

# 2. 将 classes.dex 放回 APK
apktool b /workspace -o output.apk

# 3. 签名 APK
apksigner sign --ks my-release-key.jks --out signed.apk output.apk

# 4. 安装到设备
adb install signed.apk
```

### 3.3 安全修改原则

1. **备份原始文件**：修改前先复制原始文件
2. **小步修改**：每次只改一处，便于调试
3. **理解再改**：不要盲目修改，先理解代码逻辑
4. **测试验证**：每次修改后都要测试

---

## 4. 样式调整

### 4.1 修改按钮位置

主菜单按钮位置由以下代码控制（`Menu_Main.smali`）：

```smali
# 计算按钮 Y 坐标
sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I
mul-int/lit8 v0, v0, 0x2    # 第 2 个按钮
add-int v0, v21, v0        # 加上基础 Y 坐标

sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I
mul-int/lit8 v1, v1, 0x2   # 第 2 个间距
add-int v4, v0, v1         # 最终 Y 坐标
```

**修改方法**：
- 修改乘数 `0x2` 为其他值可改变按钮序号位置
- 修改 `BUTTON_H` 或 `PADD` 全局配置可影响所有按钮

### 4.2 修改按钮尺寸

按钮尺寸在构造函数中传入：

```smali
# 参数顺序：(String text, int type, int x, int y, int width, int height, ...)
invoke-direct {v0 .. v7}, Button_Classic_LR_Main;-><init>(Ljava/lang/String;IIIIIZ)V
```

**修改方法**：
- 修改传入的 `width` 和 `height` 参数
- 或修改 `CFG.BUTTON_H` 全局按钮高度

### 4.3 修改颜色和透明度

```smali
# 静态字段定义透明度
.field public static ICONS_ALPHA:F = 0.0f
.field public static ICONS_ALPHA_PC:F = 0.0f

# 修改透明度值
const v0, 0x3e19999a  # 0.15f
sput v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main;->ICONS_ALPHA_PC:F
```

**常用浮点数值**：
```
0.0f  = 0x00000000
0.1f  = 0x3dcccccd
0.2f  = 0x3e4ccccd
0.3f  = 0x3e99999a
0.5f  = 0x3f000000
0.8f  = 0x3f4ccccd
1.0f  = 0x3f800000
```

### 4.4 修改游戏全局配置

编辑 `CFG.smali` 可全局修改：

```smali
# 按钮高度
.field public static BUTTON_H:I

# 游戏宽高
.field public static GAMEWIDTH:I
.field public static GAMEHEIGHT:I

# 间距
.field public static PADD:I
```

---

## 5. 新增组件

### 5.1 添加新按钮到主菜单

#### 步骤 1：创建按钮实例

在 `Menu_Main.smali` 的构造函数中，找到创建按钮的区域：

```smali
# 创建新按钮
new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Main;

# 准备参数
sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I
mul-int/lit8 v0, v0, 0x6    # 第 6 个位置
add-int v0, v21, v0

sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I
mul-int/lit8 v1, v1, 0x6
add-int v4, v0, v1

sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

const-string v2, "New Button"  # 按钮文本
const/4 v3, -0x1               # 类型
const/4 v7, 0x1                # 标志

# 调用构造函数
invoke-direct {v8, v2, v3, v22, v4, v23, v6, v7}, \
    Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Main;-><init>(Ljava/lang/String;IIIIIZ)V

# 添加到菜单元素列表
invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
```

#### 步骤 2：创建按钮回调

创建新的匿名内部类 `Menu_Main$11.smali` 处理点击事件：

```smali
.class final Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main$11;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Main;

.method public constructor <init>(...)V
    # 调用父类构造函数
    invoke-direct {p0, ...}, Button_Classic_LR_Main;-><init>(...)V
.end method

# 重写点击事件处理方法
.method public onClick()V
    # 添加你的逻辑
    # 例如：打开新界面、执行动作等
    return-void
.end method
```

### 5.2 添加新菜单界面

创建新文件 `Menus/Custom/Menu_Custom.smali`：

```smali
.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Custom/Menu_Custom;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;

.method public constructor <init>()V
    .registers 2
    invoke-direct {p0}, Menu;-><init>()V
    
    # 初始化菜单元素
    # 添加按钮、文本等
    return-void
.end method

# 渲染方法
.method public render(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    # 绘制菜单
    return-void
.end method
```

---

## 6. 交互优化

### 6.1 添加按钮动画

在按钮点击时添加动画效果：

```smali
# 在按钮回调中添加
.method public onClick()V
    .registers 3
    
    # 创建缩放动画
    sget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main;->access$000:Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main;
    
    iget v1, p0, ANIMATION_TIME:I
    
    # 触发入场动画
    invoke-virtual {v0, v1}, Menu_Main;->playButtonAnimation(I)V
    
    return-void
.end method
```

### 6.2 修改悬停效果

找到按钮的悬停处理方法：

```smali
.method public onHover()V
    .registers 3
    
    # 修改悬停时的透明度
    const v0, 0x3f000000  # 1.0f 完全不透明
    iput v0, p0, Button;->alpha:F
    
    return-void
.end method
```

### 6.3 添加触控反馈

```smali
# 在 TouchManager.smali 中修改触控响应
.method public handleTouch(FF)V
    .registers 5
    
    # 添加触控音效
    invoke-static {}, SoundManager;->playClickSound()V
    
    # 添加震动反馈（如果设备支持）
    invoke-static {}, VibrationManager;->vibrate()V
    
    return-void
.end method
```

---

## 7. 安全最佳实践

### 7.1 修改前备份

```bash
# 备份整个项目
cp -r /workspace /workspace_backup_$(date +%Y%m%d)

# 或只备份要修改的文件
cp Menu_Main.smali Menu_Main.smali.bak
```

### 7.2 增量修改

每次只修改一处，便于定位问题：

```smali
# 好的做法：一次只改一个参数
# 修改按钮 Y 坐标
add-int v4, v0, v1  # 原来是 add-int v4, v0, v2

# 不好的做法：同时改多处，难以调试
```

### 7.3 验证修改

```bash
# 1. 检查 smali 语法
smali check Menu_Main.smali

# 2. 重新编译
apktool b /workspace -o test.apk

# 3. 安装测试
adb install -r test.apk

# 4. 查看日志
adb logcat | grep -i "age.of.civilizations2"
```

### 7.4 常见错误

| 错误 | 原因 | 解决方法 |
|------|------|----------|
| `Register out of range` | 寄存器编号超限 | 检查 `.registers` 声明数量 |
| `Type mismatch` | 类型不匹配 | 确认方法签名和参数类型 |
| `Unknown opcode` | 指令拼写错误 | 检查 Smali 指令拼写 |
| APK 闪退 | 逻辑错误 | 查看 logcat 日志定位 |

---

## 8. 实战示例

### 示例 1：修改主菜单按钮间距

**目标**：将主菜单按钮间距从默认值改为更紧凑

**修改文件**：`CFG.smali`

```smali
# 原值
.field public static PADD:I = 0xa  # 10px

# 改为
.field public static PADD:I = 0x6  # 6px
```

### 示例 2：添加"关于我们"按钮

**修改文件**：`Menu_Main.smali`

在构造函数末尾添加：

```smali
# 创建"关于我们"按钮
new-instance v13, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Main;

const-string v2, "About Us"
const/4 v3, -0x1
move/from16 v4, v22  # X 坐标
const v5, 0x100      # Y 坐标（自定义）
move/from16 v6, v23  # 宽度
sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I
const/4 v8, 0x1

invoke-direct {v13, v2, v3, v22, v5, v23, v7, v8}, \
    Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Main;-><init>(Ljava/lang/String;IIIIIZ)V

invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
```

### 示例 3：修改按钮悬停透明度

**修改文件**：`Button/Classic/Button_Classic.smali`

```smali
.method public updateHoverState()V
    .registers 3
    
    # 悬停时增加透明度
    iget-boolean v0, p0, Button;->isHovered:Z
    
    if-eqz v0, :cond_not_hovered
    
    # 悬停状态
    const v0, 0x3f800000  # 1.0f 完全可见
    iput v0, p0, Button;->alpha:F
    
    goto :cond_end
    
    :cond_not_hovered
    # 非悬停状态
    const v0, 0x3e4ccccd  # 0.2f 半透明
    iput v0, p0, Button;->alpha:F
    
    :cond_end
    return-void
.end method
```

---

## 附录

### A. Smali 指令速查表

| 指令 | 说明 | 示例 |
|------|------|------|
| `const/4` | 4 位常数 | `const/4 v0, 0x1` |
| `const/16` | 16 位常数 | `const/16 v0, 0x64` |
| `const/high16` | 高 16 位常数（浮点） | `const/high16 v0, 0x3f800000` |
| `move` | 移动值 | `move v1, v0` |
| `invoke-virtual` | 调用虚方法 | `invoke-virtual {p0}, Obj;->method()V` |
| `invoke-static` | 调用静态方法 | `invoke-static {}, Util;->help()V` |
| `invoke-direct` | 调用直接方法 | `invoke-direct {p0}, Obj;-><init>()V` |
| `sget/sput` | 静态字段读写 | `sget v0, Cls;->FIELD:I` |
| `iget/iput` | 实例字段读写 | `iget v0, p0, Cls;->field:I` |
| `new-instance` | 创建对象 | `new-instance v0, LArrayList;` |
| `if-eqz` | 如果等于 0 跳转 | `if-eqz v0, :label` |
| `goto` | 无条件跳转 | `goto :label` |

### B. 浮点数十六进制对照表

| 十进制 | 十六进制 |
|--------|----------|
| 0.0 | 0x00000000 |
| 0.1 | 0x3dcccccd |
| 0.2 | 0x3e4ccccd |
| 0.3 | 0x3e99999a |
| 0.4 | 0x3ecccccd |
| 0.5 | 0x3f000000 |
| 0.6 | 0x3f19999a |
| 0.7 | 0x3f333333 |
| 0.8 | 0x3f4ccccd |
| 0.9 | 0x3f666666 |
| 1.0 | 0x3f800000 |

### C. 有用资源

- [Smali 官方文档](https://github.com/JesusFreke/smali)
- [LibGDX 文档](https://libgdx.com/wiki/)
- [Android 逆向工程指南](https://github.com/OWASP/owasp-mstg)

---

**最后更新**: 2026-05-03
**适用版本**: Age of History II Developer Edition
