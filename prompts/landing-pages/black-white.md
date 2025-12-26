# 黑白风格 (Black & White) - SaaS 落地页提示词

> 📌 来源：基于 [saaspo.com](https://saaspo.com/page-types/saas-landing-page-examples) 的 Black & White 分类

## 🎨 风格特征

- 只使用黑色、白色和灰度
- 经典、永恒、不过时
- 极致的简约和专注
- 高对比度，视觉冲击力强
- 强调内容和排版本身
- 适合高端品牌和专业服务

## 📸 参考案例

- Apple (部分页面)
- Squarespace
- Readymag
- Pitch
- 高端摄影/设计工作室网站

## 🤖 完整提示词模板

```
请设计一个黑白风格 (Black & White) 的 SaaS 产品落地页，具体要求：

【整体风格】
- 只使用黑、白、灰三种色调
- 经典、高端、永恒的设计
- 强调排版和内容本身
- 不依赖颜色来传达信息

【配色规则】

**白色背景方案：**
- 背景：#ffffff 或 #fafafa
- 主文字：#000000 或 #111111
- 次要文字：#666666 或 #888888
- 边框/分隔：#e5e5e5 或 #d4d4d4
- CTA：黑色按钮 #000000

**黑色背景方案：**
- 背景：#000000 或 #0a0a0a
- 主文字：#ffffff
- 次要文字：#a0a0a0 或 #888888
- 边框/分隔：#333333 或 #444444
- CTA：白色按钮 #ffffff

**混合方案：**
- 交替使用黑色和白色区域
- 创造强烈的视觉对比
- 分隔不同的内容区域

【排版重点】
- 排版是黑白设计的核心
- 使用不同的字重创造层次（Light、Regular、Bold、Black）
- 大胆的字号对比（标题可以非常大）
- 精心设计的字间距和行高
- 可以使用衬线字体增加优雅感

【字体选择】
- 无衬线（现代感）：
  - Helvetica Neue、Inter、Archivo Black
- 衬线（优雅感）：
  - Playfair Display、Cormorant、Bodoni
- 混合使用：标题用衬线，正文用无衬线

【视觉元素】
- 图片：使用黑白照片或插图
- 图标：线性图标，黑色或白色
- 装饰：简单的几何线条和形状
- 分隔：使用线条而不是颜色变化

【高对比度技巧】
- 黑色背景 + 大号白色标题 = 强调
- 白色背景 + 黑色正文 = 可读性
- 灰色元素 = 次要信息

【CTA 设计】
- 白色背景上：黑色填充按钮
- 黑色背景上：白色填充或描边按钮
- 悬停效果：反转颜色

【布局建议】
- 大量留白
- 清晰的网格系统
- 对称或有意的不对称
- 内容分区明确

【动画/交互】
- 简洁的过渡效果
- 悬停时的颜色反转
- 下划线动画
- 避免过于花哨的动效

【注意事项】
- 保持足够的对比度（可访问性）
- 灰色的使用要谨慎
- 图片要精心选择
- 不是每个产品都适合纯黑白
```

## 🎯 快速版提示词

```
创建黑白风格的 SaaS 落地页：

【配色】
- 白色背景：#ffffff
- 黑色文字：#000000
- 灰色次要：#888888
- CTA 按钮：纯黑 #000000

【排版】
- 标题：大号加粗（64-96px），字间距 -0.02em
- 正文：中等（16-18px），行高 1.7
- 字体：衬线（Playfair）标题 + 无衬线（Inter）正文

【视觉】
- 使用黑白图片或产品截图
- 线性黑色图标
- 简单的几何线条装饰
- 大量留白

【交互】
- 按钮悬停：颜色反转（黑变白，白变黑）
- 链接：下划线动画
```

## 🔧 样式参考

```css
/* 黑白风格基础样式 */
:root {
  --black: #000000;
  --white: #ffffff;
  --gray: #888888;
  --light-gray: #e5e5e5;
}

body {
  font-family: 'Inter', -apple-system, sans-serif;
  color: var(--black);
  background: var(--white);
}

h1, h2, h3 {
  font-family: 'Playfair Display', Georgia, serif;
  font-weight: 700;
  letter-spacing: -0.02em;
}

/* 黑色按钮 */
.btn-black {
  background: var(--black);
  color: var(--white);
  border: 2px solid var(--black);
  padding: 16px 32px;
  transition: all 0.3s;
}

.btn-black:hover {
  background: var(--white);
  color: var(--black);
}

/* 反色区域 */
.section-dark {
  background: var(--black);
  color: var(--white);
}

.section-dark .btn-black {
  background: var(--white);
  color: var(--black);
  border-color: var(--white);
}

.section-dark .btn-black:hover {
  background: var(--black);
  color: var(--white);
}

/* 图片黑白滤镜 */
.bw-image {
  filter: grayscale(100%);
  transition: filter 0.3s;
}

.bw-image:hover {
  filter: grayscale(0%);
}
```

## 💡 使用技巧

1. **排版是王道**：没有颜色加持，排版必须精致
2. **对比度检查**：确保文字在背景上清晰可读
3. **适当的灰色**：不要只用纯黑纯白，灰色很重要
4. **照片处理**：产品截图或照片转为黑白
5. **留白的力量**：黑白设计更需要留白

## 📝 对话示例

```
【你】：我需要设计一个高端设计工具的落地页，
希望采用黑白风格，体现专业和品质感。

【使用提示词】：
- 配色：纯黑白 + 适度灰色
- 布局：
  - Hero：黑色背景 + 超大白色标题
  - 功能区：白色背景 + 黑色内容
  - 交替使用黑白区域
- 字体：Playfair Display（标题）+ Inter（正文）
- 产品截图转为黑白
- CTA：白色描边按钮（黑色区域）/ 黑色填充按钮（白色区域）
- 动效：悬停颜色反转
```

---

**最佳适用场景**：设计工具、高端 SaaS、摄影/创意平台、专业服务、追求永恒经典感的品牌

