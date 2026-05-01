# APK Mod 开发参考经验

## 快速导航

本项目包含两个主要分支：

| 分支 | 用途 | 说明 |
|------|------|------|
| `main` | 原始游戏代码 | 未修改的 APK 反编译代码 |
| `techpoints-mod-config` | 科技点 Mod | 已实现的 JSON 配置加载器 |
| `260501-chore-make-reference-experience` | 开发经验 | **推荐阅读** - 完整的开发经验总结 |

## 开发者指南

如果你是后续接手的开发者，请按以下顺序阅读：

### 第一步：阅读开发经验

前往 `260501-chore-make-reference-experience` 分支：

```bash
git checkout 260501-chore-make-reference-experience
```

该分支包含 4 个完整的开发技能文档：

```
skills/
├── APK_MOD_DEVELOPMENT_INDEX.md       ← 入口文档
├── apk-mod-analysis/SKILL.md          ← APK 逆向分析经验
├── apk-mod-config-loader/SKILL.md     ← JSON 配置加载器开发
├── smali-code-quality/SKILL.md        ← Smali 代码质量标准
└── apk-mod-packaging/SKILL.md         ← APK Mod 打包与分发
```

### 第二步：查看实际代码

前往 `techpoints-mod-config` 分支查看已实现的 Mod：

```bash
git checkout techpoints-mod-config
```

该分支包含：
- `lazy/` - 懒人包（直接复制文件到 APK）
- `mod/` - 手动包（需要手动注入代码）
- 配置文件模板

## 核心经验总结

在开发 APK Mod 过程中，我们遇到了以下关键问题：

1. **`if-eqz` vs `if-nez` 逻辑陷阱**：搞反会导致配置永远不生效或错误加载
2. **寄存器复用 Bug**：同一寄存器存不同类型对象会导致后续维护困难
3. **控制流标签语义混乱**：标签名必须与实际行为一致
4. **异常处理静默吞掉错误**：必须记录日志方便调试

这些经验已详细记录在 `260501-chore-make-reference-experience` 分支的 skills 目录中。

## 项目结构

```
.
├── age/                          ← 游戏原始代码（main 分支）
│   └── of/civilizations2/jakowski/lukasz/
│       └── GameValues/
│           └── GV_Technology.smali
│
└── (其他分支见上方说明)
```

## 注意事项

- **永远不要修改 `main` 分支** - 它是原始代码的基准
- **所有修改都在独立分支进行** - 便于版本控制和回滚
- **Smali 代码修改后必须验证控制流** - 四种场景都要测试
