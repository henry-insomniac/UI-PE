# 示例与提示词映射说明

> 📌 本文档说明每个示例页面对应的 prompt 组合和风格签名细节，帮助你理解如何使用提示词系统生成类似的设计。

## 🎯 使用方式

每个示例由以下 4 层 prompt 组合而成：

```
Base (基础规范)
  ↓
+ Style (风格层)
  ↓
+ Page-Type (页面类型层)
  ↓
+ Adapter (输出适配层)
  ↓
= Final Output (最终产物)
```

---

## 📄 Landing Page Examples

### 1. Elevated Landing Page

**文件**：`examples/elevated-design-example.html`

**Prompt 组合**：

```
【基础规范】
prompts/_base/foundation.md

【风格】
自定义 Elevated 风格（类似 prompts/styles/minimalist.md，但更精致）

风格签名：
- 180px 超大标题
- Syne + Instrument Serif 字体组合
- 98% 黑白灰 + 2% 紫色强调
- 200px 大留白区块 + 16px 基础栅格
- cubic-bezier(0.4, 0, 0.2, 1) 过渡
- 字距 -0.04em（标题）

【页面类型】
SaaS 落地页（prompts/page-types/landing-page.md）

【输出】
HTML/CSS（prompts/adapters/html-css.md）
```

**配色方案**：
```css
--black: #0a0a0a;
--white: #fafafa;
--gray-400: #888;
--gray-600: #555;
--accent: #8b5cf6;  /* 紫色强调，克制使用 */
```

**排版系统**：
```css
/* 字体 */
--font-heading: 'Syne', sans-serif;
--font-serif: 'Instrument Serif', Georgia, serif;

/* 字号 */
H1: clamp(48px, 10vw, 120px)
H2-H3: 36-48px
Body: 18-20px
```

**关键细节**：
1. Hero 标题使用 Syne + Instrument Serif 混合排版
2. 区块间距 160-200px（极致留白）
3. 按钮使用纯白色背景 + 黑色文字
4. Hover 时轻微 scale(1.02) + 阴影
5. 导航栏半透明 backdrop-filter: blur(12px)

---

### 2. Dashboard Elevated Example

**文件**：`examples/dashboard-elevated-example.html`

**Prompt 组合**：

```
【基础规范】
prompts/_base/foundation.md

【风格】
Dashboard 深色风格（prompts/styles/dashboard-dark.md）

风格签名：
- 4 层灰度（#0c0c0f → #22222b）
- rgba(255,255,255,0.06) 边框
- JetBrains Mono 数字字体
- 16px 统一圆角
- cubic-bezier(0.4, 0, 0.2, 1) 过渡

【页面类型】
Dashboard（prompts/page-types/dashboard.md）

【输出】
HTML/CSS（prompts/adapters/html-css.md）
```

**配色方案**：
```css
--bg-primary: #0c0c0f;    /* 最深 - 整体背景 */
--bg-secondary: #131318;  /* 次深 - 卡片/侧边栏 */
--bg-tertiary: #1a1a21;   /* 浅一点 - hover 状态 */
--bg-elevated: #22222b;   /* 最浅 - 突出元素 */

--border: rgba(255, 255, 255, 0.06);

--primary: #8b5cf6;       /* 紫色主题 */
--success: #10b981;
--warning: #f59e0b;
--error: #ef4444;
```

**关键细节**：
1. Sidebar 宽度 240px，背景 --bg-secondary
2. Stats Card 使用 JetBrains Mono 显示数字（28-36px）
3. 图表渐变：linear-gradient(135deg, #8b5cf6, #6366f1)
4. Table hover 状态：background: --bg-tertiary
5. Badge 圆角 999px，半透明背景

---

### 3. Minimalist Example

**文件**：`examples/minimalist-example.html`

**Prompt 组合**：

```
【基础规范】
prompts/_base/foundation.md

【风格】
极简风格（prompts/styles/minimalist.md）

风格签名：
- 80-120px 区块间距
- 单一品牌色（蓝色 #0066FF）
- 线性图标 2px stroke
- Inter 字体，行高 1.6
- 居中对齐布局

【页面类型】
SaaS 落地页（prompts/page-types/landing-page.md）

【输出】
HTML/CSS（prompts/adapters/html-css.md）
```

**配色方案**：
```css
--background: #ffffff;
--text-primary: #1a1a1a;
--text-secondary: #666666;
--brand-color: #0066FF;
--border: #e5e5e5;
```

**关键细节**：
1. Hero 区域垂直居中（min-height: 100vh）
2. 功能卡片 3 列布局（grid-template-columns: repeat(3, 1fr)）
3. 图标使用 stroke-width: 2px 的 SVG
4. CTA 按钮深色（#000000）形成对比
5. Logo 墙灰度处理（grayscale(100%)）

---

### 4. Tech Modern Example

**文件**：`examples/tech-modern-example.html`

**Prompt 组合**：

```
【基础规范】
prompts/_base/foundation.md

【风格】
现代科技风（基于 prompts/landing-pages/tech-modern.md）

风格签名：
- 渐变背景或渐变文字
- 3D 元素或视差效果
- 动态交互动画
- 现代无衬线字体

【页面类型】
SaaS 落地页（prompts/page-types/landing-page.md）

【输出】
HTML/CSS（prompts/adapters/html-css.md）
```

**配色方案**：
```css
--gradient-primary: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
--gradient-secondary: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
--text-primary: #1a202c;
```

**关键细节**：
1. Hero 背景使用渐变 + 动画
2. 3D 卡片效果：transform: perspective(1000px) rotateY(...)
3. 鼠标跟随效果（JavaScript）
4. 滚动视差动画
5. 渐变文字：background-clip: text

---

### 5. Business Pro Example

**文件**：`examples/business-pro-example.html`

**Prompt 组合**：

```
【基础规范】
prompts/_base/foundation.md

【风格】
专业商务风（基于 prompts/landing-pages/business-pro.md）

风格签名：
- 深色或深蓝背景
- 数据可视化图表
- ROI/指标突出展示
- 严肃可信的配色

【页面类型】
SaaS 落地页（prompts/page-types/landing-page.md）

【输出】
HTML/CSS（prompts/adapters/html-css.md）
```

**配色方案**：
```css
--bg-dark: #0f172a;
--bg-card: #1e293b;
--text-primary: #f1f5f9;
--text-secondary: #cbd5e1;
--accent: #3b82f6;
```

**关键细节**：
1. 深色背景 (#0f172a)
2. Stats 区域使用大号数字 + 百分比
3. 图表使用 Canvas 或 SVG 绘制
4. Logo 墙浅色处理（适配深色背景）
5. CTA 按钮使用蓝色 (#3b82f6)

---

### 6. Creative Bold Example

**文件**：`examples/creative-bold-example.html`

**Prompt 组合**：

```
【基础规范】
prompts/_base/foundation.md

【风格】
创意大胆风（基于 prompts/landing-pages/creative-bold.md）

风格签名：
- 多色配色方案
- 插画或抽象图形
- 不规则布局
- 活泼的字体组合

【页面类型】
SaaS 落地页（prompts/page-types/landing-page.md）

【输出】
HTML/CSS（prompts/adapters/html-css.md）
```

**配色方案**：
```css
--color-1: #ff6b6b;  /* 红色 */
--color-2: #4ecdc4;  /* 青色 */
--color-3: #ffe66d;  /* 黄色 */
--color-4: #a8e6cf;  /* 绿色 */
```

**关键细节**：
1. 多种鲜艳颜色混用
2. 不规则形状背景（border-radius: 30% 70% 70% 30% / ...）
3. 手绘风格插画
4. 活泼字体（如 Poppins, Quicksand）
5. 有机布局（非网格）

---

### 7. Glassmorphism Example

**文件**：`examples/glassmorphism-example.html`

**Prompt 组合**：

```
【基础规范】
prompts/_base/foundation.md

【风格】
玻璃态风格（基于 prompts/landing-pages/glassmorphism.md）

风格签名：
- backdrop-filter: blur(12px)
- rgba 半透明背景
- 轻微边框高光
- 多层次叠加

【页面类型】
SaaS 落地页（prompts/page-types/landing-page.md）

【输出】
HTML/CSS（prompts/adapters/html-css.md）
```

**配色方案**：
```css
--glass-bg: rgba(255, 255, 255, 0.1);
--glass-border: rgba(255, 255, 255, 0.2);
--backdrop-blur: blur(12px);
```

**关键细节**：
1. 背景模糊：backdrop-filter: blur(12px)
2. 半透明背景：rgba(255, 255, 255, 0.1)
3. 边框高光：1px solid rgba(255, 255, 255, 0.2)
4. 多层卡片叠加
5. 彩色背景（渐变或图片）作为底层

---

## 📋 使用这些映射的方法

### 方法 1：直接复制提示词组合

```
复制上述任一示例的"Prompt 组合"部分，粘贴给 AI，说明：
"请生成一个与此提示词组合一致的页面"
```

### 方法 2：修改风格签名

```
选择一个基础示例，修改其中的"风格签名"部分：
- 替换配色方案
- 调整间距系统
- 更换字体组合
```

### 方法 3：混合不同层级

```
例如：使用 Elevated 风格 + Dashboard 页面类型：

【基础规范】
prompts/_base/foundation.md

【风格】
Elevated 风格（参考 elevated-design-example.html 的签名）

【页面类型】
Dashboard（prompts/page-types/dashboard.md）

【输出】
React + Tailwind（prompts/adapters/react-tailwind.md）
```

---

## 🔍 如何提取现有示例的风格签名

1. **打开示例页面源代码**
2. **查找 `:root` CSS 变量** - 这是配色方案
3. **查找字体声明** - `<link href="https://fonts.googleapis.com/...>`
4. **查找关键数值**：
   - padding/margin 的常用值（间距系统）
   - border-radius 的常用值（圆角体系）
   - transition 的 duration 和 easing（动效）
5. **总结 3-5 个独特细节** - 这就是风格签名

---

**最后更新**：2025-12-27

