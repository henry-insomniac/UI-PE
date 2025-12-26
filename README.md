# UI-PE: UI 设计风格提示词工程库

## 📖 项目简介

这是一个**设计风格提示词库**，用于帮助你更精准地向 AI 表达 UI 设计需求。

通过分析优秀的 SaaS 落地页设计案例（如 saaspo.com），总结提炼出不同设计风格的标准化提示词模板。

## 🎯 项目目标

- **解决痛点**：与 AI 沟通设计需求时难以准确表达想要的风格
- **提供方案**：建立标准化的设计风格提示词库，一键复用
- **持续优化**：不断收集和完善各类设计风格的提示词

## 📂 项目结构

```
UI-PE/
├── README.md                    # 项目说明
├── prompts/                     # 提示词库目录
│   └── landing-pages/           # 落地页风格（基于 saaspo.com 分类）
│       ├── minimalist.md        # 极简风格
│       ├── tech-modern.md       # 现代科技风
│       ├── business-pro.md      # 专业商务风
│       ├── creative-bold.md     # 创意大胆风
│       ├── glassmorphism.md     # 玻璃态风格
│       ├── dark-mode.md         # 🆕 深色模式
│       ├── gradient-style.md    # 🆕 渐变色风格
│       ├── bento-layout.md      # 🆕 Bento 布局
│       ├── scroll-animations.md # 🆕 滚动动画
│       ├── copy-focused.md      # 🆕 以文案为主
│       ├── playful.md           # 🆕 俏皮风格
│       └── black-white.md       # 🆕 黑白风格
├── examples/                    # 可视化示例页面
│   ├── index.html              # 示例导航页
│   ├── minimalist-example.html
│   ├── tech-modern-example.html
│   └── ... 更多示例
└── QUICK-START.md               # 快速上手指南
```

> 💡 **风格分类来源**：基于 [saaspo.com](https://saaspo.com/page-types/saas-landing-page-examples) 的 1150+ SaaS 落地页案例分析

## 🚀 快速开始

### 0. 查看可视化示例（推荐！）

在 `examples/` 文件夹中有 5 个完整的 HTML 示例页面，双击即可在浏览器中查看效果：

```bash
cd examples
open minimalist-example.html      # 极简风格
open tech-modern-example.html     # 现代科技风
open business-pro-example.html    # 专业商务风
open creative-bold-example.html   # 创意大胆风
open glassmorphism-example.html   # 玻璃态风格
```

直观地看到每种风格的实际效果，帮助你快速选择！

### 1. 选择设计风格

浏览 `prompts/` 目录，找到符合你需求的设计风格。

### 2. 复制提示词

复制对应风格的提示词模板，根据你的具体需求修改。

### 3. 与 AI 对话

将提示词粘贴给 AI（如 Cursor、ChatGPT、Claude），开始生成设计。

## 📋 提示词使用示例

```
我想要一个 [极简风格] 的 SaaS 落地页，具体要求：
- 使用 [蓝色系] 作为主色调
- 突出 [AI 驱动的数据分析] 功能
- 目标用户是 [企业级客户]

请使用以下设计风格：
[粘贴对应风格的提示词模板]
```

## 🎨 风格分类

### 落地页风格

1. **极简风格** (Minimalist) - 大量留白、简洁图标、单一配色
2. **现代科技风** (Tech Modern) - 渐变色、3D元素、动态效果
3. **专业商务风** (Business Professional) - 深色背景、数据可视化、严肃感
4. **创意大胆风** (Creative Bold) - 鲜艳配色、不规则布局、插画风
5. **玻璃态风格** (Glassmorphism) - 半透明、模糊效果、层次感

## 🔧 维护与更新

- 持续收集优秀设计案例
- 根据实际使用效果优化提示词
- 添加新的设计风格分类

## 📝 贡献指南

欢迎补充新的设计风格提示词！

---

**最后更新**: 2025-12-26

