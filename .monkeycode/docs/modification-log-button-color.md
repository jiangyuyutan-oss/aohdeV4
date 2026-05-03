# 按钮颜色修改记录

## 修改信息
- **日期**: 2026-05-03
- **修改文件**: `age/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Main.smali`
- **备份文件**: `Button_Classic_LR_Main.smali.bak`
- **修改类型**: 样式调整 - 按钮颜色主题改为蓝色调

## 修改详情

### 1. 默认按钮颜色 (第 51-59 行)

**修改前**：
```smali
const/high16 v0, 0x3f800000  # 1.0f
const v1, 0x3f0ccccd  # 0.55f
invoke-virtual {p1, v0, v0, v0, v1}, setColor(FFFF)V
```
- 颜色：白色 (RGB: 1.0, 1.0, 1.0)
- 透明度：0.55

**修改后**：
```smali
const v0, 0x3ecccccd  # 0.4f (Red)
const v1, 0x3f19999a  # 0.6f (Green)
const v2, 0x3f800000  # 1.0f (Blue)
const v3, 0x3f333333  # 0.7f (Alpha)
invoke-virtual {p1, v0, v1, v2, v3}, setColor(FFFF)V
```
- 颜色：蓝色调 (RGB: 0.4, 0.6, 1.0)
- 透明度：0.7 (更不透明)

### 2. 不可点击按钮颜色 (第 68-75 行)

**修改前**：
```smali
const v3, 0x3ecccccd  # 0.4f
invoke-direct {v1, v0, v0, v0, v3}, Color;-><init>(FFFF)V
```
- 颜色：灰色 (RGB: 1.0, 1.0, 1.0)
- 透明度：0.4

**修改后**：
```smali
const v4, 0x3e4ccccd  # 0.2f (Red)
const v5, 0x3e99999a  # 0.3f (Green)
const v6, 0x3f000000  # 0.5f (Blue)
invoke-direct {v1, v4, v5, v6, v3}, Color;-><init>(FFFF)V
```
- 颜色：深蓝色 (RGB: 0.2, 0.3, 0.5)
- 透明度：0.7 (继承 v3)

### 3. 悬停状态颜色 (第 253-260 行)

**修改前**：
```smali
const v3, 0x3ef851ec  # 0.485f
invoke-direct {v1, v0, v0, v0, v3}, Color;-><init>(FFFF)V
```
- 颜色：浅灰色 (RGB: 1.0, 1.0, 1.0)
- 透明度：0.485

**修改后**：
```smali
const v3, 0x3f000000  # 0.5f (Red)
const v4, 0x3f333333  # 0.7f (Green)
const v5, 0x3f800000  # 1.0f (Blue)
const v6, 0x3f4ccccd  # 0.8f (Alpha)
invoke-direct {v1, v3, v4, v5, v6}, Color;-><init>(FFFF)V
```
- 颜色：亮蓝色 (RGB: 0.5, 0.7, 1.0)
- 透明度：0.8 (更明显)

## 颜色方案

| 状态 | 颜色 | RGB | Alpha | 十六进制 |
|------|------|-----|-------|----------|
| 默认 | 蓝色 | 0.4, 0.6, 1.0 | 0.7 | #6699FFB3 |
| 悬停 | 亮蓝 | 0.5, 0.7, 1.0 | 0.8 | #80B3FFCC |
| 禁用 | 深蓝 | 0.2, 0.3, 0.5 | 0.7 | #334D80B3 |

## 验证步骤

```bash
# 1. 编译 APK
apktool b /workspace -o /workspace/output_blue_theme.apk

# 2. 签名
apksigner sign --ks my-key.jks --out signed_blue.apk output_blue_theme.apk

# 3. 安装
adb install -r signed_blue.apk

# 4. 测试
# - 启动游戏
# - 查看主菜单按钮颜色
# - 悬停按钮查看高亮效果
# - 确认不可点击按钮显示深蓝色
```

## 回滚方法

如需恢复原始颜色：

```bash
cp /workspace/age/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Main.smali.bak \
   /workspace/age/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Main.smali
```

## 注意事项

1. 只修改了 `Button_Classic_LR_Main` 类，这是主菜单使用的按钮样式
2. 其他按钮样式（如 `Button_Classic.smali`）未修改
3. 如需全局修改，需要修改基类 `Button_Classic.smali`
4. 颜色值使用 IEEE 754 浮点数十六进制表示

---

**修改者**: AI Assistant
**审核状态**: 待测试
