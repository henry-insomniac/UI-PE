# Dashboard 深色风格 - Style Layer

> 📌 这是**风格层** prompt，专为 Dashboard 设计的深色主题风格（Dribbble 风格）。
> 使用时需组合：Base + Style + Page-Type + Adapter

## 🎨 风格签名（Style Signatures）

这些是 Dashboard 深色风格的**硬性特征**，必须在最终产物中体现：

1. **分层灰度系统** - 4 层灰度（#0c0c0f → #22222b）
2. **6px 边框半径** - 统一的圆角体系
3. **rgba(255,255,255,0.06) 边框** - 微妙的分隔线
4. **JetBrains Mono 数字字体** - 所有数据使用等宽字体
5. **cubic-bezier(0.4, 0, 0.2, 1) 过渡** - 流畅的动画缓动

## 📐 颜色系统

### 背景分层（4 层）

```css
:root {
  /* 背景层次 */
  --bg-primary: #0c0c0f;    /* 最深 - 整体背景 */
  --bg-secondary: #131318;  /* 次深 - 卡片/侧边栏 */
  --bg-tertiary: #1a1a21;   /* 浅一点 - hover 状态 */
  --bg-elevated: #22222b;   /* 最浅 - 突出元素 */
  
  /* 边框 */
  --border: rgba(255, 255, 255, 0.06);
  --border-hover: rgba(255, 255, 255, 0.12);
  
  /* 文字 */
  --text-primary: #ffffff;
  --text-secondary: #e5e7eb;
  --text-tertiary: #9ca3af;
  --text-muted: #6b7280;
}
```

### 功能色

```css
:root {
  /* Success / Positive */
  --success: #10b981;
  --success-bg: rgba(16, 185, 129, 0.1);
  
  /* Warning */
  --warning: #f59e0b;
  --warning-bg: rgba(245, 158, 11, 0.1);
  
  /* Error / Negative */
  --error: #ef4444;
  --error-bg: rgba(239, 68, 68, 0.1);
  
  /* Info / Primary */
  --primary: #8b5cf6;
  --primary-bg: rgba(139, 92, 246, 0.1);
}
```

### 渐变色（用于数据可视化）

```css
/* Chart Gradients */
--gradient-purple: linear-gradient(135deg, #8b5cf6 0%, #6366f1 100%);
--gradient-blue: linear-gradient(135deg, #3b82f6 0%, #06b6d4 100%);
--gradient-green: linear-gradient(135deg, #10b981 0%, #34d399 100%);
--gradient-orange: linear-gradient(135deg, #f59e0b 0%, #f97316 100%);
```

## 🎯 排版系统

### 字体选择

```css
/* 主字体 */
font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;

/* 数字字体（数据展示） */
font-family: 'JetBrains Mono', 'Roboto Mono', monospace;
```

### 字号系统

```css
/* Headings */
--text-xs: 12px;    /* 标注、辅助信息 */
--text-sm: 14px;    /* 正文、表格内容 */
--text-base: 16px;  /* 基础正文 */
--text-lg: 18px;    /* 小标题 */
--text-xl: 20px;    /* 卡片标题 */
--text-2xl: 24px;   /* 页面标题 */
--text-3xl: 28px;   /* 大数据展示 */
--text-4xl: 36px;   /* 特大数据展示 */

/* Line Height */
--leading-tight: 1.25;
--leading-normal: 1.5;
--leading-relaxed: 1.75;
```

## 📦 组件样式

### Sidebar（侧边栏）

```css
.sidebar {
  width: 240px;
  background: var(--bg-secondary);
  border-right: 1px solid var(--border);
  padding: 24px 16px;
}

.sidebar-nav-item {
  padding: 12px 16px;
  border-radius: 8px;
  color: var(--text-tertiary);
  transition: all 0.2s cubic-bezier(0.4, 0, 0.2, 1);
}

.sidebar-nav-item:hover {
  background: var(--bg-tertiary);
  color: var(--text-primary);
}

.sidebar-nav-item.active {
  background: var(--primary-bg);
  color: var(--primary);
}
```

### Stats Card（统计卡片）

```css
.stats-card {
  background: var(--bg-secondary);
  border: 1px solid var(--border);
  border-radius: 16px;
  padding: 24px;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

.stats-card:hover {
  border-color: var(--border-hover);
  transform: translateY(-2px);
}

.stats-value {
  font-size: var(--text-3xl);
  font-weight: 700;
  font-family: 'JetBrains Mono', monospace;
  color: var(--text-primary);
  line-height: 1;
  margin-bottom: 8px;
}

.stats-label {
  font-size: var(--text-sm);
  color: var(--text-muted);
}

.stats-change {
  font-size: var(--text-sm);
  font-weight: 600;
  font-family: 'JetBrains Mono', monospace;
}

.stats-change.positive {
  color: var(--success);
}

.stats-change.negative {
  color: var(--error);
}
```

### Chart Container（图表容器）

```css
.chart-container {
  background: var(--bg-secondary);
  border: 1px solid var(--border);
  border-radius: 16px;
  padding: 24px;
}

.chart-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 24px;
}

.chart-title {
  font-size: var(--text-xl);
  font-weight: 600;
  color: var(--text-primary);
}

.chart-legend {
  display: flex;
  gap: 16px;
}

.chart-legend-item {
  display: flex;
  align-items: center;
  gap: 8px;
  font-size: var(--text-sm);
  color: var(--text-tertiary);
}

.chart-legend-dot {
  width: 8px;
  height: 8px;
  border-radius: 50%;
}
```

### Table（数据表格）

```css
.table {
  width: 100%;
  background: var(--bg-secondary);
  border: 1px solid var(--border);
  border-radius: 16px;
  overflow: hidden;
}

.table-header {
  background: var(--bg-primary);
  border-bottom: 1px solid var(--border);
}

.table-header th {
  padding: 16px;
  text-align: left;
  font-size: var(--text-sm);
  font-weight: 600;
  color: var(--text-tertiary);
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.table-row {
  border-bottom: 1px solid var(--border);
  transition: background 0.2s;
}

.table-row:hover {
  background: var(--bg-tertiary);
}

.table-row:last-child {
  border-bottom: none;
}

.table-cell {
  padding: 16px;
  font-size: var(--text-sm);
  color: var(--text-secondary);
}

.table-cell-number {
  font-family: 'JetBrains Mono', monospace;
  text-align: right;
}
```

### Badge（徽标）

```css
.badge {
  display: inline-flex;
  align-items: center;
  padding: 4px 12px;
  border-radius: 999px;
  font-size: 12px;
  font-weight: 600;
}

.badge-success {
  background: var(--success-bg);
  color: var(--success);
}

.badge-warning {
  background: var(--warning-bg);
  color: var(--warning);
}

.badge-error {
  background: var(--error-bg);
  color: var(--error);
}

.badge-neutral {
  background: rgba(255, 255, 255, 0.05);
  color: var(--text-tertiary);
}
```

## ✨ 动画与交互

### 过渡效果

```css
/* 标准过渡 */
transition: all 0.2s cubic-bezier(0.4, 0, 0.2, 1);

/* 慢速过渡（图表加载） */
transition: all 0.5s cubic-bezier(0.4, 0, 0.2, 1);
```

### Hover 状态

```css
/* 卡片 hover */
.card:hover {
  border-color: var(--border-hover);
  transform: translateY(-2px);
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
}

/* 按钮 hover */
.button:hover {
  background: var(--bg-elevated);
}

/* 表格行 hover */
.table-row:hover {
  background: var(--bg-tertiary);
}
```

### 加载状态

```css
/* 骨架屏动画 */
@keyframes pulse {
  0%, 100% { opacity: 1; }
  50% { opacity: 0.5; }
}

.skeleton {
  background: var(--bg-tertiary);
  animation: pulse 1.5s cubic-bezier(0.4, 0, 0.6, 1) infinite;
  border-radius: 8px;
}
```

## 📊 数据可视化样式

### 图表配色

```javascript
// Chart.js / Recharts 配色方案
const chartColors = {
  primary: ['#8b5cf6', '#a78bfa', '#c4b5fd'],
  multi: ['#8b5cf6', '#3b82f6', '#10b981', '#f59e0b', '#ef4444'],
  gradient: {
    purple: ['#8b5cf6', '#6366f1'],
    blue: ['#3b82f6', '#06b6d4'],
    green: ['#10b981', '#34d399'],
  }
};

// 网格样式
const gridStyle = {
  stroke: 'rgba(255, 255, 255, 0.05)',
  strokeWidth: 1,
};

// 文字样式
const textStyle = {
  fill: '#9ca3af',
  fontSize: 12,
  fontFamily: 'Inter',
};
```

## 🚫 避免的元素（Anti-Patterns）

```
❌ 纯黑背景（#000000）- 使用 #0c0c0f
❌ 纯白边框 - 使用 rgba(255,255,255,0.06)
❌ 过多渐变 - 仅用于图表和特殊强调
❌ 不一致的圆角 - 统一 16px
❌ 非等宽字体显示数字 - 必须用 JetBrains Mono
❌ 过度动画 - 保持克制
❌ 低对比度文字 - 确保可读性
```

## 📋 检查清单

在交付前，确认以下所有项：

- [ ] 使用 4 层灰度背景系统
- [ ] 所有边框使用 rgba(255,255,255,0.06)
- [ ] 统一 16px 圆角（卡片）
- [ ] 数字使用 JetBrains Mono 字体
- [ ] 过渡动画使用 cubic-bezier(0.4, 0, 0.2, 1)
- [ ] 功能色正确（绿色上升，红色下降）
- [ ] Hover 状态明显
- [ ] 表格行可 hover
- [ ] 侧边栏当前项高亮
- [ ] 图表配色协调

## 💡 使用示例

```
【基础规范】
遵守 prompts/_base/foundation.md

【风格】
Dashboard 深色风格（prompts/styles/dashboard-dark.md）：
- 4 层灰度背景 (#0c0c0f → #22222b)
- rgba(255,255,255,0.06) 边框
- JetBrains Mono 显示所有数字
- 16px 统一圆角
- 紫色主题（#8b5cf6）

【页面类型】
Dashboard（prompts/page-types/dashboard.md）

【输出】
React + Tailwind（prompts/adapters/react-tailwind.md）
```

---

**参考案例**：Linear Dashboard, Vercel Analytics, GitHub Insights
**适用场景**：分析仪表板、管理后台、数据可视化平台
**最后更新**：2025-12-27

