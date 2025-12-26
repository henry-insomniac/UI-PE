# 滚动动画风格 (Scroll Animations) - SaaS 落地页提示词

> 📌 来源：基于 [saaspo.com](https://saaspo.com/page-types/saas-landing-page-examples) 的 Scroll Animations 分类

## 🎨 风格特征

- 页面滚动时触发各种动画效果
- 元素逐步显现，增强叙事感
- 创造沉浸式的浏览体验
- 引导用户注意力
- 增加页面的动态感和互动性
- 适合讲故事型的产品展示

## 📸 参考案例

- Apple (产品页面)
- Stripe
- Linear
- Figma
- Webflow
- Lottie

## 🤖 完整提示词模板

```
请设计一个具有滚动动画效果的 SaaS 产品落地页，具体要求：

【整体风格】
- 页面滚动时触发精心设计的动画
- 通过动画讲述产品故事
- 创造沉浸式、叙事性的用户体验
- 动画要有目的性，不是为了动而动

【滚动动画类型】

1. **淡入动画 (Fade In)**
   - 元素从透明到不透明
   - 可配合方向：从下往上、从左往右
   - 适合：所有类型的内容块
   
2. **滑入动画 (Slide In)**
   - 元素从某个方向滑入视图
   - 方向：从左、从右、从下、从上
   - 适合：图片、卡片、文字块

3. **缩放动画 (Scale)**
   - 元素从小变大或从大变小
   - 适合：图标、重要数据、产品截图

4. **视差效果 (Parallax)**
   - 不同层次的元素以不同速度移动
   - 创造深度感
   - 适合：背景元素、装饰图形

5. **固定滚动 (Sticky/Pin)**
   - 某个元素在滚动时保持固定
   - 内容在该元素旁边滚动变化
   - 适合：产品演示、功能展示

6. **路径动画 (Path Animation)**
   - 元素沿着特定路径移动
   - 线条逐渐绘制
   - 适合：流程展示、时间线

7. **数字递增 (Counter)**
   - 数字从 0 递增到目标值
   - 适合：统计数据展示

8. **序列动画 (Staggered)**
   - 多个元素依次执行相同动画
   - 有节奏感的出现
   - 适合：列表、卡片网格、功能列表

【动画触发时机】
- 元素进入视口时触发（最常用）
- 元素到达视口中心时触发
- 滚动到特定位置时触发
- 基于滚动进度的连续动画

【动画实现建议】
- 使用 Intersection Observer API 检测元素可见性
- 推荐库：
  - GSAP + ScrollTrigger（最强大）
  - Framer Motion（React）
  - AOS (Animate On Scroll)
  - Lenis（平滑滚动）

【页面结构建议】

Section 1: Hero（首屏）
- 立即可见，无需等待
- 可以有持续的背景动画
- CTA 按钮可以有微动效

Section 2: 问题陈述
- 滚动时文字逐行淡入
- 强调问题的痛点

Section 3: 解决方案
- 产品截图从下方滑入
- 配合功能描述淡入

Section 4: 功能展示（Sticky 区域）
- 左侧产品截图固定
- 右侧功能描述依次滚动切换
- 截图随着滚动变化

Section 5: 数据证明
- 数字递增动画
- 客户 Logo 依次淡入

Section 6: CTA
- 最终的行动号召
- 按钮可以有吸引注意的动效

【动画参数建议】
- 持续时间：300-800ms（过长会让人不耐烦）
- 缓动函数：ease-out 或 cubic-bezier(0.16, 1, 0.3, 1)
- 延迟：序列动画中每个元素间隔 50-150ms
- 触发阈值：元素进入视口 20-30% 时触发

【性能优化】
- 使用 transform 和 opacity（GPU 加速）
- 避免动画触发重排（避免动画 width、height）
- 使用 will-change 提示浏览器
- 移动端可以简化或禁用部分动画
- 尊重 prefers-reduced-motion 设置

【避免的问题】
❌ 动画过长让用户等待
❌ 动画过于花哨分散注意力
❌ 每次滚动都触发同一动画（应该只触发一次）
❌ 影响页面性能的复杂动画
❌ 忽略可访问性（减少动画偏好）
```

## 🎯 快速版提示词

```
创建具有滚动动画的 SaaS 落地页：

【动画类型】
- 文字块：从下往上淡入
- 图片/卡片：从侧边滑入
- 数据：数字递增动画
- 列表/卡片网格：依次淡入（staggered，每个延迟 100ms）
- 产品展示区：使用 Sticky 滚动效果

【动画参数】
- 持续时间：500ms
- 缓动：ease-out
- 触发：元素进入视口 20% 时
- 每个动画只触发一次

【推荐实现】
- 使用 GSAP + ScrollTrigger
- 或 AOS (Animate On Scroll) 库
- 配合 Lenis 实现平滑滚动

【注意】
- 首屏无动画延迟，立即显示
- 移动端简化动画
- 添加 prefers-reduced-motion 支持
```

## 🔧 代码片段

```html
<!-- 使用 AOS 库的简单实现 -->
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<script>
  AOS.init({
    duration: 600,
    once: true, // 只触发一次
    offset: 100
  });
</script>

<!-- 使用示例 -->
<div data-aos="fade-up">从下往上淡入</div>
<div data-aos="fade-left">从左滑入</div>
<div data-aos="fade-right" data-aos-delay="100">从右滑入，延迟 100ms</div>
```

```css
/* 纯 CSS 简单实现 */
.animate-on-scroll {
  opacity: 0;
  transform: translateY(30px);
  transition: opacity 0.6s ease-out, transform 0.6s ease-out;
}

.animate-on-scroll.visible {
  opacity: 1;
  transform: translateY(0);
}

/* 减少动画偏好 */
@media (prefers-reduced-motion: reduce) {
  .animate-on-scroll {
    opacity: 1;
    transform: none;
    transition: none;
  }
}
```

```javascript
// Intersection Observer 实现
const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add('visible');
      observer.unobserve(entry.target); // 只触发一次
    }
  });
}, { threshold: 0.2 });

document.querySelectorAll('.animate-on-scroll').forEach(el => {
  observer.observe(el);
});
```

## 💡 使用技巧

1. **首屏不等待**：Hero 区域立即显示，不要让用户等待
2. **只触发一次**：向上滚回时不要再次触发动画
3. **有节奏感**：序列动画的延迟要有规律
4. **服务内容**：动画应该引导注意力，而不是分散
5. **测试性能**：在低端设备上测试动画流畅度
6. **可访问性**：提供关闭动画的选项

## 📝 对话示例

```
【你】：我需要设计一个项目管理工具的落地页，
希望使用滚动动画来展示产品的核心功能流程。

【使用提示词】：
- 动画效果：
  1. Hero：无延迟直接显示
  2. 功能区：使用 Sticky 滚动
     - 左侧产品截图固定
     - 右侧 4 个功能描述依次滚动切换
     - 截图随功能变化
  3. 数据证明：数字从 0 递增
  4. 客户评价：卡片从下淡入，依次出现
  
- 动画参数：
  - 持续时间：500ms
  - 缓动：cubic-bezier(0.16, 1, 0.3, 1)
  - 使用 GSAP ScrollTrigger 实现
```

---

**最佳适用场景**：产品故事讲述、功能展示、品牌页面、高端 SaaS、需要引导用户关注的内容

