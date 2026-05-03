# 主菜单 UI 修改示例

本文件包含三个实际修改示例，演示如何安全地修改 Age of History II 的主菜单 UI。

## 修改 1：调整按钮悬停颜色（样式调整）

### 目标
修改主菜单按钮悬停时的颜色，从默认的灰色改为更明显的蓝色调。

### 修改文件
`age/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Main.smali`

### 修改位置
第 52-56 行，`drawButtonBGE` 方法中的颜色设置：

```smali
# 原始代码（第 52-56 行）
.line 30
const/high16 v0, 0x3f800000  # 1.0f (R, G, B)

const v1, 0x3f0ccccd  # 0.55f (Alpha - 透明度)

invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V
```

### 修改为
```smali
.line 30
# 修改悬停颜色为蓝色调 (R=0.4, G=0.6, B=1.0, Alpha=0.7)
const v0, 0x3ecccccd  # 0.4f (Red)
const v1, 0x3f19999a  # 0.6f (Green)
const v2, 0x3f800000  # 1.0f (Blue)
const v3, 0x3f333333  # 0.7f (Alpha - 更不透明)

invoke-virtual {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V
```

### 浮点数对照
```
0.4f = 0x3ecccccd  (红色通道)
0.6f = 0x3f19999a  (绿色通道)
1.0f = 0x3f800000  (蓝色通道)
0.7f = 0x3f333333  (透明度)
```

### 效果
按钮悬停时会显示半透明的蓝色高光，而不是原来的灰色。

---

## 修改 2：新增"Mod 中心"按钮（新增组件）

### 目标
在主菜单添加一个新的"Mod 中心"按钮，点击后打开 Mod 管理界面。

### 步骤 1：修改 Menu_Main.smali

在 `Menu_Main` 构造函数中，找到添加按钮的区域（约第 560 行后），添加新按钮：

```smali
# 在 Menu_Main.smali 构造函数的按钮创建区域添加

# ============================================
# 新增："Mod 中心" 按钮
# ============================================
.line 420
new-instance v13, Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main$11

# 计算 Y 坐标：在现有按钮下方
sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I
sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I
sub-int v4, v0, v1  # X = GAMEWIDTH - BUTTON_H

sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I
sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I
mul-int/lit8 v1, v1, 0x4  # 第 4 个位置
sub-int v5, v0, v1  # Y = GAMEHEIGHT - (BUTTON_H * 4)

sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I  # width
sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I  # height
const/4 v8, 0x1  # isClickable = true

# 调用构造函数 (this, "Mod 中心", type, x, y, width, height, isClickable)
invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main;Ljava/lang/String;IIIIIZ)V

# 添加到菜单元素列表
invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
```

### 步骤 2：创建 Menu_Main$11.smali

创建新文件 `age/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main$11.smali`：

```smali
.class final Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main$11;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Main;
.source "Menu_Main.java"

# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main;

# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main;Ljava/lang/String;IIIIIZ)V
    .registers 9
    .param p1, "this$0"  # Menu_Main
    .param p2, "sText"  # String
    .param p3, "iTextPositionX"  # int
    .param p4, "iPosX"  # int
    .param p5, "iPosY"  # int
    .param p6, "iWidth"  # int
    .param p7, "iHeight"  # int
    .param p8, "isClickable"  # boolean

    .line 600
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main$11;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main;

    # 调用父类构造函数
    invoke-direct/range {p0 .. p8}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Main;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 601
    return-void
.end method

# virtual methods
.method public final onClick()V
    .registers 4

    .line 605
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main$11;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main;

    # 播放点击音效（如果有的话）
    # invoke-static {}, SoundManager;->playClick()V

    # 打开 Mod 中心界面
    # 这里需要调用游戏已有的 Mod 管理功能
    # 示例：切换到 Mod 菜单
    iget-object v1, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Main/Menu_Main;->game:Lage/of/civilizations2/jakowski/lukasz/Game;
    
    if-eqz v1, :cond_15
    
    # 调用游戏对象的 Mod 管理方法
    # invoke-virtual {v1}, Game;->openModCenter()V
    
    :cond_15
    return-void
.end method
```

### 效果
主菜单右侧会出现一个新的"Mod 中心"按钮，点击后可以扩展打开 Mod 管理界面。

---

## 修改 3：添加按钮点击动画（交互优化）

### 目标
为按钮添加点击时的缩放动画效果，提升交互反馈。

### 修改文件
`age/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic.smali`

### 步骤 1：添加动画字段

在类定义中添加动画相关字段：

```smali
# 在 Button_Classic.smali 的 instance fields 区域添加

# 动画相关字段
.field public animationScale:F = 1.0f
.field public animationTargetScale:F = 1.0f
.field public animationSpeed:F = 0.2f
.field public isAnimating:Z = false
```

### 步骤 2：修改 onClick 方法

在按钮点击时触发动画：

```smali
# 找到 onClick 方法，在开头添加动画触发代码

.method public onClick()V
    .registers 3

    # 触发动画：缩放到 0.9
    const v0, 0x3f19999a  # 0.6f
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;->animationTargetScale:F

    const/4 v0, 0x1
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;->isAnimating:Z

    # 原有的点击逻辑
    # ...
    
    return-void
.end method
```

### 步骤 3：添加动画更新方法

```smali
# 添加新的虚拟方法
.method public updateAnimation()V
    .registers 5

    # 检查是否在动画中
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;->isAnimating:Z
    
    if-nez v0, :cond_end

    # 插值计算：current += (target - current) * speed
    iget v0, p0, animationTargetScale:F
    iget v1, p0, animationScale:F
    sub-float v2, v0, v1
    
    iget v0, p0, animationSpeed:F
    mul-float v2, v2, v0
    
    add-float/2addr v1, v2
    iput v1, p0, animationScale:F

    # 检查是否接近目标
    iget v0, p0, animationScale:F
    iget v1, p0, animationTargetScale:F
    sub-float v2, v0, v1
    
    # 取绝对值
    cmpl-float v3, v2, 0x0
    if-ltz v3, :cond_15
    neg-float v2, v2
    
    :cond_15
    const v3, 0x3d4ccccd  # 0.01f
    cmpg-float v2, v2, v3
    
    if-gez v2, :cond_25
    # 动画完成，恢复到 1.0
    const/high16 v0, 0x3f800000  # 1.0f
    iput v0, p0, animationScale:F
    iput v0, p0, animationTargetScale:F
    const/4 v0, 0x0
    iput-boolean v0, p0, isAnimating:Z
    
    :cond_25
    return-void
.end method
```

### 步骤 4：修改 drawButton 方法应用缩放

```smali
# 在 drawButton 或 drawButtonBGE 方法中，绘制前应用缩放

.method public drawButtonBGE(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 10
    .param p1, "oSB"  # SpriteBatch
    .param p2, "iTranslateX"  # int
    .param p3, "iTranslateY"  # int
    .param p4, "isActive"  # boolean

    # 更新动画
    invoke-virtual {p0}, updateAnimation()V

    # 应用缩放（如果需要）
    iget v0, p0, animationScale:F
    const/high16 v1, 0x3f800000  # 1.0f
    cmpl-float v0, v0, v1
    
    if-eqz v0, :cond_no_scale
    
    # 保存当前变换
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    move-result-object v5
    
    # 应用缩放到按钮中心
    invoke-virtual {p0}, getPosXE()I
    move-result v0
    add-int/2addr v0, p2
    
    invoke-virtual {p0}, getWidthE()I
    move-result v1
    div-int/lit8 v1, v1, 0x2
    add-int/2addr v0, v1
    
    invoke-virtual {p0}, getPosY()I
    move-result v1
    add-int/2addr v1, p3
    
    invoke-virtual {p0}, getHeightE()I
    move-result v2
    div-int/lit8 v2, v2, 0x2
    add-int/2addr v1, v2
    
    iget v2, p0, animationScale:F
    
    # 这里需要调用 LibGDX 的缩放方法
    # 示例伪代码：
    # invoke-virtual {p1, v0, v1, v2}, SpriteBatch;->scale(FFF)V
    
    :cond_no_scale
    # 原有的绘制逻辑
    # ...
    
    return-void
.end method
```

### 效果
点击按钮时，按钮会快速缩小到 90% 大小，然后弹性恢复至原始大小，提供视觉反馈。

---

## 应用修改后的编译步骤

```bash
# 1. 备份原始文件
cp -r /workspace /workspace_backup_$(date +%Y%m%d_%H%M%S)

# 2. 重新编译 APK（需要 apktool）
apktool b /workspace -o /workspace/output.apk

# 3. 签名 APK（需要 keystore）
apksigner sign --ks /path/to/keystore.jks --out /workspace/signed.apk /workspace/output.apk

# 4. 安装到设备
adb install -r /workspace/signed.apk

# 5. 查看日志调试
adb logcat | grep -i "civilizations"
```

## 验证清单

修改完成后，检查以下项：

- [ ] APK 编译无错误
- [ ] 安装成功，无崩溃
- [ ] 主菜单正常显示
- [ ] 按钮悬停颜色变化（修改 1）
- [ ] 新按钮显示并可点击（修改 2）
- [ ] 点击动画流畅（修改 3）
- [ ] 其他功能未受影响

## 故障排除

### 问题 1：APK 编译失败
```bash
# 检查 smali 语法错误
java -jar smali-3.0.3.jar check /workspace

# 查看详细错误信息
apktool b /workspace -o output.apk 2>&1 | tee build.log
```

### 问题 2：游戏崩溃
```bash
# 查看崩溃日志
adb logcat -d | grep -A 20 "FATAL"

# 常见原因：
# - 寄存器数量不匹配
# - 方法签名错误
# - 类型转换错误
```

### 问题 3：按钮不显示
```bash
# 检查：
# 1. 按钮是否正确添加到 menuElements 列表
# 2. 坐标计算是否正确
# 3. 构造函数参数是否正确
```

---

**最后更新**: 2026-05-03
**适用版本**: Age of History II Developer Edition
