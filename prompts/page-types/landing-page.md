# SaaS 落地页 - Page Type Layer

> 📌 这是**页面类型层** prompt，定义 SaaS 落地页的信息架构和内容结构。
> 使用时需组合：Base + Style + Page-Type + Adapter

## 📋 页面结构（Page Structure）

### 必需区块（Required Sections）

```
1. Navigation（导航栏）
2. Hero Section（首屏）
3. Features（功能展示）
4. Social Proof（社会证明）
5. CTA Section（行动号召）
6. Footer（页脚）
```

### 可选区块（Optional Sections）

```
7. How It Works（工作原理）
8. Pricing（价格方案）
9. Testimonials（用户评价）
10. FAQ（常见问题）
11. Integrations（集成展示）
```

---

## 1️⃣ Navigation（导航栏）

### 结构

```html
<nav>
  <Logo />
  <NavLinks>
    - Features
    - Pricing
    - Docs
    - About
  </NavLinks>
  <CTAButton>开始试用</CTAButton>
</nav>
```

### 要求

- 固定在顶部（position: fixed 或 sticky）
- 半透明背景 + backdrop-filter（滚动时）
- Logo 左对齐，链接居中，CTA 右对齐
- 移动端：汉堡菜单
- 高度：60-80px

---

## 2️⃣ Hero Section（首屏）

### 结构

```
- 主标题（H1）：传达核心价值主张
- 副标题（Subtitle）：补充说明，1-2 句话
- CTA 按钮组：主要 CTA + 次要 CTA（可选）
- 视觉元素：产品截图 / 插画 / 视频
```

### 内容指南

**主标题**：
- 长度：6-12 个字（中文）或 5-10 个词（英文）
- 突出核心利益，而非产品名称
- 示例：
  - ✅ "10 分钟搭建你的在线商店"
  - ❌ "欢迎使用 ShopBuilder"

**副标题**：
- 长度：15-30 个字（中文）
- 解释"是什么"或"为谁"
- 示例："为独立创业者设计的无代码电商平台，无需技术背景即可上手。"

**CTA 按钮**：
- 主要：明确行动 + 价值（"免费试用 14 天"）
- 次要：低承诺行动（"观看演示视频"）

### 要求

- 垂直居中（min-height: 100vh 或 80vh）
- 内容居中或左对齐（根据风格）
- 移动端：单列，视觉元素在下方

---

## 3️⃣ Features（功能展示）

### 结构

```
Section Title: 为什么选择 [产品名]
Features Grid: 3-6 个功能点
每个功能点包含：
- Icon（图标）
- Title（标题，3-6 字）
- Description（描述，1-2 句话）
```

### 内容指南

**功能数量**：
- 首页展示：3-6 个核心功能
- 避免堆砌，聚焦差异化

**描述重点**：
- 说明"好处"而非"特性"
- ✅ "自动化报告，每周节省 5 小时"
- ❌ "支持自定义报告模板"

### 要求

- 桌面：3-4 列布局
- 移动端：1 列堆叠
- 图标大小：32-48px
- 间距：32-48px

---

## 4️⃣ Social Proof（社会证明）

### 可选形式

1. **Logo 墙**（最常见）
   - 展示客户或合作伙伴 Logo
   - 6-12 个 Logo
   - 灰度处理或低饱和度

2. **使用数据**
   - "10,000+ 团队正在使用"
   - "每月处理 100 万次请求"

3. **用户评价**
   - 3-6 条短评价
   - 包含：头像、姓名、职位、公司

### 要求

- 位置：Features 之后
- 背景：与主背景区分（浅灰或深色）
- Logo 高度：30-40px，统一

---

## 5️⃣ CTA Section（行动号召）

### 结构

```
- 标题：强化价值主张
- 描述：降低顾虑（如"无需信用卡"）
- CTA 按钮：重复主要行动
- 视觉元素（可选）
```

### 内容示例

**标题**：
- "准备好提升你的工作效率了吗？"
- "今天就开始你的 14 天免费试用"

**描述**：
- "无需信用卡，随时取消"
- "2 分钟即可完成设置"

### 要求

- 位置：页面底部，Footer 之前
- 背景：与主背景形成对比
- 垂直 padding：80-120px

---

## 6️⃣ Footer（页脚）

### 结构

```
- 链接组（Products, Company, Resources, Support）
- 社交媒体图标
- 版权信息
- 法律链接（Privacy, Terms）
```

### 要求

- 多列布局（桌面），单列堆叠（移动）
- 字号：14px
- 颜色：次要文字色
- Padding：48-64px 上下

---

## 📝 内容原则

### 1. 价值主张清晰

- 首屏 5 秒内传达"是什么 + 为谁 + 为什么"
- 避免抽象词汇（"创新"、"卓越"）

### 2. 层次分明

- H1（主标题）→ H2（区块标题）→ H3（功能标题）→ Body（描述）
- 视觉权重与信息重要性一致

### 3. CTA 明确

- 每个区块最多 1 个主要 CTA
- 文案具体："开始免费试用"而非"了解更多"

### 4. 响应式文案

- 移动端文案可精简（如隐藏副标题）
- 确保核心信息在小屏幕可见

---

## 📐 Layout Grid

```
Hero: 1 列（居中）或 2 列（左文右图）
Features: 3-4 列 → 2 列（平板）→ 1 列（移动）
Social Proof: 6 列 Logo → 3 列 → 2 列
CTA: 1 列（居中）
Footer: 4-5 列 → 2 列 → 1 列
```

---

## 💡 使用示例

```
【基础规范】
遵守 prompts/_base/foundation.md

【风格】
极简风格（prompts/styles/minimalist.md）

【页面类型】
SaaS 落地页（prompts/page-types/landing-page.md）：
- 包含所有必需区块：Nav, Hero, Features, Social Proof, CTA, Footer
- Hero 主标题："10 分钟搭建你的在线商店"
- 展示 4 个核心功能
- Logo 墙展示 8 个客户
- CTA："开始 14 天免费试用"

【输出】
HTML/CSS（prompts/adapters/html-css.md）
```

---

**最后更新**：2025-12-27

