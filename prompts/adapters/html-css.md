# HTML/CSS Adapter - 输出适配层

> 📌 这是**适配器层** prompt，定义 HTML/CSS 的输出规范和代码约束。
> 使用时需组合：Base + Style + Page-Type + Adapter

## 🎯 输出格式

生成一个**完整的**单文件 HTML，包含：

```html
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>[页面标题]</title>
    <meta name="description" content="[页面描述]">
    
    <!-- Fonts (如需要) -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=[字体]&display=swap" rel="stylesheet">
    
    <style>
        /* CSS 写在这里 */
    </style>
</head>
<body>
    <!-- HTML 结构 -->
    
    <script>
        /* JavaScript（如需要）写在这里 */
    </script>
</body>
</html>
```

---

## 📐 HTML 规范

### 1. 语义化标签

**必须使用**：
```html
<header>     - 页头/导航
<nav>        - 导航链接
<main>       - 主内容区
<section>    - 内容区块
<article>    - 独立内容单元
<aside>      - 侧边栏（如有）
<footer>     - 页脚
<h1>-<h6>    - 标题层级
<figure>     - 图片/图表容器
<figcaption> - 图片说明
```

### 2. 结构规范

```html
<!-- ✅ 推荐结构 -->
<body>
    <header>
        <nav>...</nav>
    </header>
    
    <main>
        <section class="hero">...</section>
        <section class="features">...</section>
        <section class="social-proof">...</section>
        <section class="cta">...</section>
    </main>
    
    <footer>...</footer>
</body>
```

### 3. 类名规范（BEM 或语义化）

```html
<!-- BEM 风格 -->
<div class="card">
    <div class="card__header">
        <h3 class="card__title">...</h3>
    </div>
    <div class="card__body">...</div>
</div>

<!-- 或语义化风格 -->
<div class="feature-card">
    <div class="feature-header">
        <h3 class="feature-title">...</h3>
    </div>
    <div class="feature-body">...</div>
</div>
```

### 4. 可访问性属性

```html
<!-- 导航链接 -->
<a href="#features" aria-label="跳转到功能介绍">Features</a>

<!-- 图片 -->
<img src="product.jpg" alt="产品截图展示主界面">

<!-- 按钮 -->
<button type="button" aria-label="打开菜单">
    <span aria-hidden="true">☰</span>
</button>

<!-- 表单 -->
<label for="email">邮箱地址</label>
<input type="email" id="email" name="email" required>
```

---

## 🎨 CSS 规范

### 1. CSS Reset / Normalize

在样式开头必须包含：

```css
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: [字体栈];
    line-height: 1.6;
    color: [主文字色];
    background: [背景色];
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}

img {
    max-width: 100%;
    height: auto;
    display: block;
}

a {
    text-decoration: none;
    color: inherit;
}

button {
    border: none;
    background: none;
    cursor: pointer;
    font-family: inherit;
}
```

### 2. CSS 变量（推荐）

```css
:root {
    /* Colors */
    --color-primary: #0066FF;
    --color-text: #1a1a1a;
    --color-text-secondary: #666666;
    --color-background: #ffffff;
    --color-border: #e5e5e5;
    
    /* Spacing */
    --spacing-xs: 8px;
    --spacing-sm: 16px;
    --spacing-md: 32px;
    --spacing-lg: 48px;
    --spacing-xl: 80px;
    
    /* Typography */
    --font-body: 'Inter', -apple-system, sans-serif;
    --font-heading: 'Inter', sans-serif;
    
    /* Effects */
    --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    --shadow: 0 4px 24px rgba(0, 0, 0, 0.08);
}
```

### 3. 组件样式结构

按区块组织 CSS：

```css
/* =================================
   1. Base Styles
   ================================= */

/* =================================
   2. Navigation
   ================================= */

/* =================================
   3. Hero Section
   ================================= */

/* =================================
   4. Features Section
   ================================= */

/* ... */

/* =================================
   99. Responsive
   ================================= */
@media (max-width: 768px) {
    /* 移动端样式 */
}
```

### 4. 响应式写法

**移动优先（Mobile First）**：

```css
/* 基础样式（移动端） */
.container {
    padding: 24px;
}

.grid {
    display: grid;
    grid-template-columns: 1fr;
    gap: 24px;
}

/* 平板 */
@media (min-width: 768px) {
    .container {
        padding: 48px;
    }
    .grid {
        grid-template-columns: repeat(2, 1fr);
    }
}

/* 桌面 */
@media (min-width: 1024px) {
    .grid {
        grid-template-columns: repeat(3, 1fr);
        gap: 32px;
    }
}
```

### 5. 现代布局技术

**优先使用**：

```css
/* Flexbox */
.nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

/* Grid */
.features {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 32px;
}

/* Clamp（响应式字号）*/
h1 {
    font-size: clamp(36px, 5vw, 72px);
}

/* Container Query（可选，新特性）*/
@container (min-width: 400px) {
    .card {
        display: flex;
    }
}
```

---

## 💻 JavaScript 规范（如需要）

### 1. 原生 JavaScript 优先

避免引入 jQuery 或其他库（除非必要）。

### 2. 常见交互实现

**平滑滚动（如果不用 CSS scroll-behavior）**：

```javascript
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        target.scrollIntoView({
            behavior: 'smooth',
            block: 'start'
        });
    });
});
```

**移动端菜单切换**：

```javascript
const menuBtn = document.getElementById('menu-btn');
const mobileMenu = document.getElementById('mobile-menu');

menuBtn.addEventListener('click', () => {
    mobileMenu.classList.toggle('active');
});
```

**滚动动画（Intersection Observer）**：

```javascript
const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.classList.add('fade-in');
        }
    });
}, observerOptions);

document.querySelectorAll('.animate-on-scroll').forEach(el => {
    observer.observe(el);
});
```

---

## 📦 输出检查清单

交付前确认：

- [ ] 单文件 HTML，可直接在浏览器打开
- [ ] 所有 CSS 在 `<style>` 标签内
- [ ] 所有 JS（如有）在 `<script>` 标签内
- [ ] 使用语义化 HTML5 标签
- [ ] 包含基本 meta 标签（charset, viewport, description）
- [ ] 图片有 alt 属性
- [ ] 链接有 aria-label（如需要）
- [ ] 响应式设计（至少 mobile + desktop）
- [ ] 代码格式化，缩进一致（2 或 4 空格）
- [ ] 注释关键区块

---

## 🚫 禁止的做法

```
❌ 使用内联样式（style=""）
❌ 使用表格布局（<table> for layout）
❌ 使用过时标签（<center>, <font>）
❌ 未压缩的大图片
❌ 引入不必要的外部库（Bootstrap, jQuery）
❌ 硬编码尺寸（width="800px"）
❌ 使用 px 作为唯一单位
❌ 未测试移动端
```

---

## 💡 使用示例

```
【基础规范】
遵守 prompts/_base/foundation.md

【风格】
极简风格（prompts/styles/minimalist.md）

【页面类型】
SaaS 落地页（prompts/page-types/landing-page.md）

【输出】
HTML/CSS（prompts/adapters/html-css.md）：
- 单文件 HTML
- 内嵌 CSS（使用 CSS 变量）
- 原生 JavaScript（仅用于移动菜单和滚动动画）
- 移动优先响应式
- 语义化标签
- BEM 类名规范
```

---

**最后更新**：2025-12-27

