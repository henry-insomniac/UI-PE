# 极简风格 - Style Layer

> 📌 这是**风格层** prompt，专注描述极简风格的视觉特征。
> 使用时需组合：Base + Style + Page-Type + Adapter

## 🎨 风格签名（Style Signatures）

这些是极简风格的**硬性特征**，必须在最终产物中体现：

1. **80-120px 区块间距** - 大量留白是极简的核心
2. **单一品牌色 + 黑白灰** - 配色克制，最多 1-2 种颜色
3. **线性图标（stroke-based）** - 2px stroke, 24x24px 尺寸
4. **无衬线字体 + 1.6+ 行高** - 可读性优先，呼吸感
5. **居中对齐布局** - Hero 区域、主标题居中

## 📐 排版系统

```
字体选择：
- 推荐：Inter, SF Pro, Helvetica, Arial
- 备选：DM Sans, Manrope, Work Sans

字号系统：
- Display（主标题）：56-72px / line-height: 1.0
- H2（副标题）：36-48px / line-height: 1.1
- Body（正文）：16-18px / line-height: 1.6
- Caption（标注）：14px / line-height: 1.5

字重：
- Regular (400) - 正文
- Medium (500) - 小标题
- Semibold (600) - 次要标题
- Bold (700) - 主标题
```

## 🎨 配色方案

```
基础配色：
- 背景：#ffffff 或 #fafafa
- 主文字：#1a1a1a 或 #111111
- 次要文字：#666666 或 #888888
- 分隔线：#e5e5e5 或 rgba(0,0,0,0.08)

品牌色（选择一种）：
- 蓝色：#0066FF, #3b82f6
- 黑色：#000000
- 深灰：#333333

CTA 按钮：
- 使用品牌色作为背景
- 或使用黑色 #000000 形成对比

悬停状态：
- 品牌色按钮：亮度 +10%
- 黑色按钮：#333333
```

## 📦 布局规则

```
间距系统：
- Hero 区域：上下 padding 120-160px
- Section 间距：80-120px
- 组件间距：32-48px
- 元素间距：12-16px

内容宽度：
- 最大宽度：1200px
- 居中对齐：margin: 0 auto
- 侧边 padding：48-64px（桌面），24px（移动）

栅格布局：
- 功能展示：3-4 列（桌面），1 列（移动）
- 使用 CSS Grid 或 Flexbox
- gap: 32-48px
```

## 🎯 图标与图形

```
图标风格：
- 线性图标（stroke-based）
- stroke-width: 2px
- 尺寸：24x24px
- 颜色：继承文字色或品牌色
- 推荐：Feather Icons, Heroicons (outline)

图形元素：
- 简单几何形状（圆、方、线）
- 避免复杂插画
- 产品截图：干净界面，轻微阴影 (0 4px 24px rgba(0,0,0,0.08))
```

## ✨ 交互动效

```
按钮动效：
- transition: all 0.3s ease
- hover: transform: translateY(-2px)
- hover: box-shadow: 0 4px 16px rgba(0,0,0,0.1)

链接动效：
- 下划线：border-bottom: 1px solid currentColor
- hover: opacity: 0.7

滚动动画（可选）：
- 淡入：opacity 0 → 1, transform: translateY(20px) → 0
- duration: 0.6s
- easing: cubic-bezier(0.4, 0, 0.2, 1)
```

## 🚫 避免的元素（Anti-Patterns）

```
❌ 多种颜色混用（超过 2 种主色）
❌ 复杂的背景图案或纹理
❌ 过多的装饰性元素
❌ 填充式图标（filled icons）
❌ 过于花哨的动画效果
❌ 冗长的文案（超过 2 行）
❌ 紧凑的布局（间距不足）
❌ 深色背景（极简通常是浅色）
```

## 📋 检查清单

在交付前，确认以下所有项：

- [ ] 区块间距 ≥ 80px
- [ ] 配色不超过 2 种主色（品牌色 + 黑/灰）
- [ ] 所有图标为线性风格，2px stroke
- [ ] 正文行高 ≥ 1.6
- [ ] Hero 区域居中对齐
- [ ] 留白充足，无拥挤感
- [ ] 字体为无衬线字体
- [ ] CTA 按钮醒目（对比度高）
- [ ] 无复杂插画或装饰
- [ ] 文案简洁（标题 ≤ 10 字，描述 ≤ 2 行）

## 💡 使用示例

```
【基础规范】
遵守 prompts/_base/foundation.md 的所有基础要求。

【风格】
使用极简风格（prompts/styles/minimalist.md）：
- 白色背景 + 单一品牌色（蓝色 #0066FF）
- 80px+ 区块间距，充足留白
- 线性图标，2px stroke
- Inter 字体，行高 1.6

【页面类型】
SaaS 落地页（prompts/page-types/landing-page.md）

【输出】
HTML/CSS（prompts/adapters/html-css.md）
```

---

**参考案例**：Linear.app, Notion, Stripe, Vercel
**适用场景**：B2B SaaS、工具类产品、需要传达专业和信任感的产品
**最后更新**：2025-12-27

