#!/bin/bash

# UI-PE 提示词库升级部署脚本
# 使用方式：chmod +x deploy.sh && ./deploy.sh

set -e  # 遇到错误立即退出

echo "🚀 开始部署 UI-PE 提示词库升级..."
echo ""

# 确认当前在正确的目录
if [ ! -f "README.md" ] || [ ! -d "prompts" ]; then
    echo "❌ 错误：请在 UI-PE 项目根目录执行此脚本"
    exit 1
fi

echo "📍 当前目录：$(pwd)"
echo ""

# 1. 创建并切换到新分支
echo "1️⃣ 创建分支 feature/prompt-library-ui..."
git checkout -b feature/prompt-library-ui 2>/dev/null || git checkout feature/prompt-library-ui
echo "✅ 分支创建/切换成功"
echo ""

# 2. 查看修改状态
echo "2️⃣ 查看文件变更..."
git status --short
echo ""

# 3. 添加所有文件
echo "3️⃣ 添加文件到暂存区..."
git add .
echo "✅ 文件已添加"
echo ""

# 4. 提交
echo "4️⃣ 提交更改..."
git commit -m "feat: 升级为可组合提示词模块系统

- 新增交互式提示词库页面（library.html）
  - 支持搜索、标签过滤、一键复制
  - 弹窗预览完整内容
  - 响应式设计

- 重构为 4 层架构：Base + Style + Page-Type + Adapter
  - prompts/_base/foundation.md - 基础规范
  - prompts/styles/ - 风格层
  - prompts/page-types/ - 页面类型层
  - prompts/adapters/ - 输出适配层

- 引入反同质化策略
  - 禁止清单（8 项 AI 常见套路）
  - 风格签名体系（每种风格 3-5 个独有细节）
  - 审美检查清单

- 新增 Dashboard 提示词体系
  - 完整信息架构和组件规范
  - 数据可视化规则
  - 深色主题风格

- 创建示例与提示词映射文档（EXAMPLES-MAPPING.md）
- 更新 manifest.json 至 v2.0.0
- 更新 README.md 和项目文档

🎯 目标：让开发者在无 UI 介入的项目中也能生成差异化、高质量的设计

📊 统计：
- 新增文件：11
- 更新文件：3
- 代码行数：约 3000+ 行"

echo "✅ 提交成功"
echo ""

# 5. 推送到远程
echo "5️⃣ 推送到远程仓库..."
git push -u origin feature/prompt-library-ui
echo "✅ 推送成功"
echo ""

# 6. 创建 PR
echo "6️⃣ 创建 Pull Request..."
gh pr create \
  --title "✨ Feat: 可组合提示词模块系统 + 交互式库页面" \
  --body "## 🎯 目标

将 UI-PE 从"提示词集合"升级为"可组合、可搜索、反同质化"的提示词系统，让开发者在无 UI 介入的项目中也能生成差异化、高质量的设计。

---

## ✨ 主要变更

### 1️⃣ 交互式提示词库
- **新增 \`library.html\`** - GitHub Pages 上的全功能提示词库
- 支持搜索、标签过滤、一键复制、弹窗预览
- 响应式设计，移动端友好

### 2️⃣ 可组合提示词模块系统
- **4 层架构**：Base → Style → Page-Type → Adapter
- 新增 \`prompts/_base/foundation.md\` - 基础规范 + 反模板约束
- 新增 \`prompts/styles/\` - 风格层（minimalist, dashboard-dark）
- 新增 \`prompts/page-types/\` - 页面类型（landing-page, dashboard）
- 新增 \`prompts/adapters/\` - 输出适配（html-css, react-tailwind）

### 3️⃣ 反同质化策略
- **禁止清单**：明确列出 AI 常见的"安全套路"
- **风格签名**：每个风格 3-5 个硬性特征，确保可辨识
- **审美检查清单**：交付前的质量门槛

### 4️⃣ Dashboard 提示词体系
- 完整的信息架构（Sidebar + TopNav + Main）
- 组件体系（Stats Cards, Charts, Tables, Filters）
- 数据可视化规则（颜色语义、数字格式化）
- 深色主题风格规范

### 5️⃣ 示例与提示词映射
- **新增 \`EXAMPLES-MAPPING.md\`**
- 每个示例页面的 prompt 组合说明
- 风格签名提取方法
- 配色方案和关键细节

### 6️⃣ 元数据系统
- 更新 \`prompts/manifest.json\` 至 v2.0.0
- 包含所有模块的元数据
- 支持搜索和过滤

---

## 📂 文件变更统计

- **新增文件**：11
  - library.html
  - prompts/manifest.json（更新）
  - prompts/_base/foundation.md
  - prompts/styles/minimalist.md
  - prompts/styles/dashboard-dark.md
  - prompts/page-types/landing-page.md
  - prompts/page-types/dashboard.md
  - prompts/adapters/html-css.md
  - prompts/adapters/react-tailwind.md
  - EXAMPLES-MAPPING.md
  - IMPLEMENTATION-SUMMARY.md
  
- **修改文件**：3
  - index.html
  - README.md
  - prompts/manifest.json
  
- **代码行数**：约 3000+ 行

---

## 🧪 测试建议

1. **功能测试**：
   - 访问 GitHub Pages 查看 \`library.html\`
   - 测试搜索、过滤、复制功能
   - 测试响应式布局

2. **提示词测试**：
   - 使用组合提示词生成页面，验证产物质量
   - 确认风格签名在产物中可辨识

3. **兼容性测试**：
   - 旧版 \`prompts/landing-pages/\` 中的 12 个风格仍可使用

---

## 📝 后续工作（可选）

- [ ] 添加更多风格模块（如 brutalist, editorial）
- [ ] 添加更多页面类型（如 pricing, auth, settings）
- [ ] 为每个风格创建对应的示例页面
- [ ] 增强 \`library.html\` 的功能（如收藏、评分）

---

## 📖 文档

- 查看 \`IMPLEMENTATION-SUMMARY.md\` 了解完整实施细节
- 查看 \`EXAMPLES-MAPPING.md\` 学习如何使用提示词
- 查看更新后的 \`README.md\` 了解新架构

---

**Breaking Changes**: 无  
**Backward Compatibility**: ✅ 完全兼容旧版提示词  
**作者**: @henry-insomniac" \
  --base main

echo "✅ PR 创建成功"
echo ""

# 7. 获取 PR 编号并合并
echo "7️⃣ 合并 Pull Request..."
PR_NUMBER=$(gh pr list --head feature/prompt-library-ui --json number --jq '.[0].number')

if [ -z "$PR_NUMBER" ]; then
    echo "❌ 错误：无法获取 PR 编号"
    exit 1
fi

echo "   PR 编号：#$PR_NUMBER"
echo "   正在合并..."

gh pr merge $PR_NUMBER --merge --delete-branch

echo "✅ PR 已合并并删除分支"
echo ""

# 8. 切换回 main 分支并拉取最新代码
echo "8️⃣ 切换回 main 分支..."
git checkout main
git pull origin main
echo "✅ 已更新到最新代码"
echo ""

echo "🎉 部署完成！"
echo ""
echo "📊 总结："
echo "   - 分支：feature/prompt-library-ui → main"
echo "   - PR：#$PR_NUMBER （已合并）"
echo "   - GitHub Pages 将在几分钟内自动更新"
echo ""
echo "🔗 访问："
echo "   - 仓库：https://github.com/henry-insomniac/UI-PE"
echo "   - Pages：https://henry-insomniac.github.io/UI-PE/"
echo "   - 提示词库：https://henry-insomniac.github.io/UI-PE/library.html"

