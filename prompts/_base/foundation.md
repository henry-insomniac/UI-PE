# 基础规范 - UI 设计交付标准

> 📌 这是所有 UI 设计提示词的**基础层**，定义了通用的交付规范、质量标准和技术要求。
> 在使用任何风格 prompt 时，都应该默认包含这些基础要求。

## 🎯 基础交付规范

### 1. 可访问性 (Accessibility)

**必须遵守**：
```
- 符合 WCAG 2.1 AA 级标准
- 文字与背景对比度 ≥ 4.5:1（正文）或 ≥ 3:1（大号文字 18px+）
- 所有交互元素可通过键盘访问（Tab / Shift+Tab 导航）
- 图片必须有 alt 属性
- 表单元素必须有 label 或 aria-label
- 语义化 HTML 标签（header, nav, main, section, article, footer）
- Focus 状态必须可见（outline 或自定义 focus 样式）
```

### 2. 响应式设计 (Responsive Design)

**断点策略**：
```
- 移动端（Mobile）：< 768px
- 平板（Tablet）：768px - 1024px
- 桌面（Desktop）：≥ 1024px
- 大屏（Large Desktop）：≥ 1440px
```

**响应式规则**：
```
- 移动优先（Mobile First）设计
- 使用相对单位（rem, em, %, vw/vh）而非固定像素
- 图片必须响应式（max-width: 100%, height: auto）
- 字体大小使用 clamp() 或 rem 单位
- 触摸目标最小 44x44px（移动端）
- 避免横向滚动（overflow-x: hidden 或弹性布局）
```

### 3. 性能优化 (Performance)

**必须做到**：
```
- 图片优化（WebP 格式优先，lazy loading）
- 字体优化（font-display: swap, 限制字重数量）
- CSS 压缩与合并
- 避免不必要的 JavaScript 依赖
- 使用 transform 和 opacity 做动画（硬件加速）
- 关键 CSS 内联，非关键 CSS 异步加载
```

### 4. 浏览器兼容性 (Browser Support)

**最低支持**：
```
- Chrome 90+
- Firefox 88+
- Safari 14+
- Edge 90+
- 移动端：iOS 14+, Android 10+
```

**渐进增强**：
```
- 核心功能在所有浏览器可用
- 高级效果（如 backdrop-filter）提供降级方案
- 使用 @supports 做特性检测
```

### 5. 代码质量 (Code Quality)

**HTML 要求**：
```
- 语义化标签优先
- 结构清晰，层级合理（避免过度嵌套）
- 类名使用 BEM 或语义化命名
- 保持一致的缩进（2 或 4 空格）
```

**CSS 要求**：
```
- 使用 CSS 变量管理颜色、间距、字体
- 避免 !important（除非必要）
- 移动端优先的 @media 查询
- 统一的命名规范
- 注释关键区块
```

**JavaScript 要求**（如有）：
```
- 原生 JavaScript 优先（减少依赖）
- 事件委托优化性能
- 避免内联事件处理器
- 使用 async/defer 加载脚本
```

## 🚫 反模板约束（Anti-Slop Rules）

> 这些是 AI 生成常见的"同质化陷阱"，必须**避免**：

### ❌ 禁止的通用元素

```
1. 通用蓝紫渐变背景（#667eea to #764ba2）
   - 这是 AI 最常用的"安全配色"，缺乏辨识度

2. 过度使用玻璃态（Glassmorphism）
   - 不是每个卡片都需要 backdrop-filter: blur()

3. 到处发光（Glow Effects）
   - box-shadow: 0 0 40px rgba(主色, 0.5) 不应该滥用

4. 过多的卡片（Card Overload）
   - 不是所有内容都需要包在卡片里

5. 通用图标库的默认样式
   - 避免直接使用 Font Awesome / Heroicons 的默认样式

6. "Learn More" 按钮泛滥
   - CTA 按钮文案要具体、有行动力

7. 过度圆角（Border Radius 滥用）
   - 不是所有元素都需要 border-radius: 999px

8. 通用"波浪"背景装饰
   - SVG 波浪形状已经成为 AI 生成的标志性元素
```

### ✅ 推荐的替代策略

```
1. 使用品牌色作为唯一强调色，其余保持克制
2. 玻璃态只用于特定层级（如导航栏、弹窗）
3. 发光效果只用于 hover/active 状态
4. 使用留白和分隔线代替无意义的卡片
5. 自定义图标或使用品牌图标系统
6. CTA 文案具体化："开始 14 天试用"而非"了解更多"
7. 统一圆角体系：0px / 8px / 16px 三档
8. 用几何形状、网格或品牌元素做背景装饰
```

## 📐 设计系统基础

### 间距系统 (Spacing Scale)

```
- 4px 基础单位（0.25rem）
- 系统：4, 8, 12, 16, 24, 32, 48, 64, 80, 120, 160px
- 使用：padding, margin, gap
- 区块间距（Section）：80-120px
- 组件间距（Component）：32-48px
- 元素间距（Element）：8-16px
```

### 字体系统 (Typography Scale)

```
- 正文（Body）：16px (1rem) / line-height: 1.6
- 小字（Small）：14px (0.875rem)
- 标注（Caption）：12px (0.75rem)
- H6：18px (1.125rem)
- H5：20px (1.25rem)
- H4：24px (1.5rem)
- H3：30px (1.875rem)
- H2：36px (2.25rem)
- H1：48px+ (3rem+) / line-height: 1.1
- Display：72px+ / line-height: 1
```

### 颜色系统 (Color System)

```
每种风格应定义：
- 主色（Primary）：品牌色
- 次色（Secondary）：辅助色（可选）
- 中性色（Neutral）：黑白灰 5-7 档
- 功能色：
  - 成功（Success）：绿色系
  - 警告（Warning）：黄色系
  - 错误（Error）：红色系
  - 信息（Info）：蓝色系
```

### 动效系统 (Animation System)

```
- 时长（Duration）：
  - 快速：150ms（微交互）
  - 标准：300ms（按钮、卡片）
  - 慢速：500ms（页面过渡）

- 缓动函数（Easing）：
  - 标准：cubic-bezier(0.4, 0, 0.2, 1)
  - 进入：cubic-bezier(0, 0, 0.2, 1)
  - 离开：cubic-bezier(0.4, 0, 1, 1)

- 触发场景：
  - hover: 按钮、链接、卡片
  - focus: 表单元素
  - scroll: 滚动动画（节制使用）
  - page load: 首屏动画（可选）
```

## 🎨 组件边界清单

每个页面必须包含的基础组件：

```
1. Navigation（导航）
   - Logo
   - 主导航链接
   - CTA 按钮（可选）
   - 移动端汉堡菜单

2. Hero Section（首屏）
   - 主标题
   - 副标题 / 描述
   - 主要 CTA
   - 视觉元素（可选）

3. Features（功能展示）
   - 至少 3-6 个功能点
   - 图标 + 标题 + 描述

4. Social Proof（社会证明）
   - 客户 Logo 墙
   - 或用户评价
   - 或使用数据

5. CTA Section（行动号召）
   - 重复主要 CTA
   - 强化价值主张

6. Footer（页脚）
   - 链接组
   - 版权信息
   - 社交媒体链接
```

## 📝 使用方式

在使用任何风格提示词时，请在开头说明：

```
【基础规范】
请遵守《prompts/_base/foundation.md》中定义的所有基础规范。

【风格选择】
使用 [风格名称] 风格。

【页面类型】
创建一个 [页面类型] 页面。

【输出框架】
使用 [HTML/CSS 或 React+Tailwind] 输出。
```

---

**最后更新**: 2025-12-27

