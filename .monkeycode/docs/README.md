# Age of History II - Mod 开发文档中心

> 本文档中心为 Age of History II（文明时代 2）Mod 开发提供完整的中文技术指南。

---

## 快速导航

### 入门必读
- [项目结构说明](#项目结构说明)
- [开发环境搭建](#开发环境搭建)
- [Smali 基础知识](#smali-基础知识)

### 按功能分类

| 分类 | 文档 | 难度 |
|------|------|------|
| UI 修改 | [主菜单 UI 修改指南](#ui-修改) | 进阶 |
| 数值配置 | [GameValues 配置完全指南](#数值配置) | 入门 |
| 代码修改 | [Smali 注入教程](#代码修改) | 高级 |
| 资源替换 | [图片/音效替换指南](#资源替换) | 入门 |

---

## 文档分类详情

### UI 修改

修改游戏界面、按钮、菜单等视觉元素。

| 文档 | 描述 | 难度 |
|------|------|------|
| [Smali UI 修改教程](smali-ui-modification-guide.md) | 完整的 UI 修改入门到进阶指南 | 进阶 |
| [主菜单 UI 修改示例](main-menu-ui-modifications.md) | 3 个实战示例：颜色、新增按钮、动画 | 进阶 |
| [按钮颜色修改记录](modification-log-button-color.md) | 蓝色主题修改的详细记录 | 入门 |

**包含内容**：
- 按钮样式调整（颜色、大小、位置）
- 新增菜单和按钮
- 交互动画优化
- 透明度修改

---

### 数值配置

修改游戏数值、AI 行为、经济系统等配置文件。

| 文档 | 描述 | 难度 |
|------|------|------|
| [GameValues 配置完全指南](../ModsGuide/GameValues_中文指南.md) | 所有 JSON 配置文件的中文翻译和说明 | 入门 |

**包含内容**：
- 经济系统配置
- AI 行为参数
- 战斗数值
- 外交系统
- 政策系统

---

### 代码修改

直接修改 Smali 代码实现高级功能。

**包含内容**：
- Smali 注入技术
- 方法重写
- 新类创建
- 游戏逻辑修改

---

### 资源替换

替换游戏中的图片、音效、字体等资源。

**包含内容**：
- 图片资源替换
- 音效文件替换
- 字体文件替换
- 地图资源修改

---

## 项目结构说明

```
/workspace/
├── age/of/civilizations2/jakowski/lukasz/    # 游戏主体代码 (Smali)
│   ├── Menus/                                # 菜单界面
│   ├── Button/                               # 按钮组件
│   ├── Title/                                # 标题组件
│   ├── CFG.smali                             # 全局配置
│   └── ...
│
├── com/badlogic/gdx/                         # LibGDX 游戏引擎
│
├── team/rainfall/ctap/                       # 自定义工具包
│   └── CTAP.smali                            # CJK 文字处理
│
├── ModsGuide/                                # Mod 开发指南
│   └── GameValues_中文指南.md
│
└── .monkeycode/docs/                         # 本文档中心
    └── README.md                             # 本文件
```

---

## 开发环境搭建

### 必需工具

| 工具 | 用途 | 下载 |
|------|------|------|
| apktool | APK 反编译/编译 | [官网](https://apktool.org/) |
| smali/baksmali | Smali 汇编/反汇编 | [GitHub](https://github.com/JesusFreke/smali) |
| Android SDK | 签名和调试 | [官网](https://developer.android.com/studio) |
| 文本编辑器 | 代码编辑 | VS Code / Notepad++ |

### 基本流程

```
1. 反编译 APK → 得到 Smali 代码
2. 修改 Smali 文件
3. 重新编译 APK
4. 签名 APK
5. 安装测试
```

---

## Smali 基础知识

### 什么是 Smali？

Smali 是 Android DEX 字节码的反汇编格式。

```
Java 源代码 → 编译 → .class → 打包 → .dex → 反汇编 → .smali
```

### 常用指令

| 指令 | 说明 | 示例 |
|------|------|------|
| `const/4` | 4 位常数 | `const/4 v0, 0x1` |
| `invoke-virtual` | 调用虚方法 | `invoke-virtual {p0}, Obj;->method()V` |
| `sget/sput` | 静态字段读写 | `sget v0, Cls;->FIELD:I` |

---

## 学习路径

### 新手入门
1. 阅读 [GameValues 配置完全指南](../ModsGuide/GameValues_中文指南.md)
2. 尝试修改简单的 JSON 配置
3. 测试 Mod 效果

### 进阶开发
1. 学习 [Smali UI 修改教程](smali-ui-modification-guide.md)
2. 跟随 [主菜单 UI 修改示例](main-menu-ui-modifications.md) 实操
3. 理解按钮渲染和布局逻辑

### 高级开发
1. 研究游戏核心逻辑代码
2. 学习 Smali 注入技术
3. 开发完整的功能性 Mod

---

## 贡献指南

欢迎贡献文档和改进建议！

1. 修改文档后提交到新分支
2. 保持文档格式统一
3. 添加必要的代码示例
4. 更新本文档的目录

---

## 相关资源

- [LibGDX 官方文档](https://libgdx.com/wiki/)
- [Smali 语法参考](https://github.com/JesusFreke/smali)
- [Android 逆向工程指南](https://github.com/OWASP/owasp-mstg)

---

**最后更新**: 2026-05-03  
**适用版本**: Age of History II Developer Edition  
**维护者**: Mod 开发社区
