# APK Mod 打包与分发

## 适用场景

完成 APK 逆向修改后，需要将修改后的文件打包成分发给 Modder 使用。

## 核心设计原则

### 1. 双包策略

为不同技术水平的 Modder 提供两种包：

| 包类型 | 目录 | 适用人群 | 操作难度 |
|--------|------|---------|---------|
| 懒人包 | `lazy/` | 新手 | 复制粘贴 |
| 手动包 | `mod/` | 有经验用户 | 手动注入 |

### 2. 分支隔离

**永远不要修改 `main` 分支**。使用独立分支存放 Mod 文件：

```
main/                              ← 原始游戏代码（不变）
techpoints-mod-config/             ← Mod 文件
├── lazy/                          ← 懒人包
├── mod/                           ← 手动包
└── README.md                      ← 使用说明
```

**好处**：
- `main` 分支保持干净，可随时拉取最新原始代码
- Mod 分支只包含修改后的文件，体积小巧
- 便于版本控制和多人协作

## 懒人包（lazy/）结构

### 目录设计

```
lazy/
├── age/of/civilizations2/jakowski/lukasz/GameValues/
│   ├── GV_Technology.smali        ← 已修改的原文件
│   └── TechConfigLoader.smali     ← 新增文件
├── assets/mods/
│   └── technology.json            ← 默认配置（打包进 APK）
└── 懒人包使用说明.md              ← 图文教程
```

### 使用教程模板

```markdown
# 科技点 Mod - 一键导入包

## 只需 2 步，复制 3 个文件到 APK 内

### 步骤 1：复制 Smali 文件

MT 管理器双窗口操作：

| 左窗口（懒人包） | 右窗口（APK 内） |
|-----------------|-----------------|
| `age/.../GameValues/GV_Technology.smali` | → `classes.dex → age/.../GameValues/` 覆盖原文件 |
| `age/.../GameValues/TechConfigLoader.smali` | → `classes.dex → age/.../GameValues/` 粘贴新文件 |

### 步骤 2：复制配置文件到 assets

| 左窗口（懒人包） | 右窗口（APK 内） |
|-----------------|-----------------|
| `assets/mods/technology.json` | → APK 根目录的 `assets/mods/` 粘贴 |

**注意：** 如果 APK 内没有 `assets/mods/` 目录，需要先在 APK 根目录创建 `assets` 文件夹，再在 `assets` 内创建 `mods` 文件夹。

### 步骤 3：签名安装

退出 APK → 点击 APK → 功能 → APK 签名 → 安装
```

## 手动包（mod/）结构

### 目录设计

```
mod/
├── age/of/civilizations2/jakowski/lukasz/GameValues/
│   └── TechConfigLoader.smali     ← 新增文件
├── docs/
│   └── 导入说明.md                ← 详细教程
└── template/
    └── technology.json            ← 配置模板
```

### 与懒人包的区别

| 项目 | 懒人包 | 手动包 |
|------|--------|--------|
| GV_Technology.smali | 已修改，直接覆盖 | 不提供，需要手动添加调用 |
| TechConfigLoader.smali | 提供 | 提供 |
| assets/mods/config.json | 提供 | 不提供，需要手动创建 |
| 使用难度 | 复制粘贴 | 需要理解注入点 |

## 配置模板设计

### 完整模板

```json
{
  "ADD_CIV_DEFAULT_TECH_LEVEL": 45,
  "MIN_MONEY_REQUIRED_TO_ENABLE_RESEARCH": -2000,
  "MAX_TECHNOLOGY_LEVEL": 3.0,
  "MAX_POINTS_POP_GROWTH": 35,
  "PER_POINT_POP_GROWTH": 0.75
}
```

### 模板规范

1. **包含所有可配置字段**：Modder 可以删除不需要的字段
2. **使用原版默认值**：确保不修改配置时行为不变
3. **字段名与 JSON key 一致**：避免大小写问题
4. **添加注释文件**：在单独的说明文档中解释每个字段

## 读取优先级设计

```
外部存储 (local) > APK 内部 (internal) > 硬编码默认值
```

### 实现要点

1. **外部存储路径**：`Android/data/<包名>/files/mods/config.json`
2. **APK 内部路径**：`assets/mods/config.json`
3. **外部存储优先**：方便用户无需重新打包 APK 即可修改配置
4. **APK 内部作为备份**：开箱即用，Modder 不需要在手机存储中创建文件夹

## 版本控制最佳实践

### 提交规范

```bash
# 初始创建
git checkout -b 260501-feat-techpoints-mod
git add lazy/ mod/
git commit -m "feat: add techpoints mod config loader"

# 修复 Bug
git add lazy/ mod/
git commit -m "fix: correct control flow for local-internal fallback"

# 同步 lazy 和 mod
cp lazy/path/to/file.smali mod/path/to/file.smali
git add lazy/ mod/
git commit -m "fix: sync lazy and mod versions"
```

### 分支同步

每次修改 `lazy/` 中的文件后，必须同步到 `mod/`：

```bash
# 检查差异
diff lazy/path/to/file mod/path/to/file

# 如果有差异，同步
cp lazy/path/to/file mod/path/to/file
git add lazy/ mod/
git commit -m "chore: sync lazy and mod versions"
```

## 检查清单

### 发布前
- [ ] `lazy/` 和 `mod/` 版本一致
- [ ] 配置文件模板包含所有字段
- [ ] 使用说明清晰完整
- [ ] Smali 代码经过控制流验证
- [ ] 分支已推送到远程

### 分发后
- [ ] 收集用户反馈
- [ ] 记录已知问题
- [ ] 准备修复更新

## 常见问题

### Q: Modder 报告配置不生效
A: 检查：
1. 文件路径是否正确（`mods/config.json`）
2. JSON 格式是否正确（使用 JSON 验证工具）
3. 字段名是否与 smali 中一致

### Q: 游戏崩溃
A: 检查：
1. try-catch 是否正确
2. 字段类型是否匹配
3. 寄存器数量是否足够

### Q: 修改后 APK 无法安装
A: 检查：
1. 是否已签名
2. 签名是否与原 APK 一致
3. 是否有语法错误导致编译失败
