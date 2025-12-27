# React + Tailwind CSS Adapter - 输出适配层

> 📌 这是**适配器层** prompt，定义 React + Tailwind CSS 的输出规范和代码约束。
> 使用时需组合：Base + Style + Page-Type + Adapter

## 🎯 输出格式

生成 React 组件 + Tailwind 配置，适用于 **Next.js / Vite / Create React App** 项目。

### 文件结构

```
/components
  ├── LandingPage.tsx      # 主组件
  ├── Navigation.tsx       # 导航栏
  ├── Hero.tsx            # 首屏
  ├── Features.tsx        # 功能展示
  ├── SocialProof.tsx     # 社会证明
  ├── CTASection.tsx      # CTA
  └── Footer.tsx          # 页脚

/config
  └── tailwind.config.js   # Tailwind 配置（如需自定义）
```

---

## ⚛️ React 规范

### 1. 组件结构

**函数式组件 + TypeScript**：

```tsx
import React from 'react';

interface HeroProps {
  title: string;
  subtitle: string;
  ctaText?: string;
}

export const Hero: React.FC<HeroProps> = ({ 
  title, 
  subtitle, 
  ctaText = '开始试用' 
}) => {
  return (
    <section className="min-h-screen flex items-center justify-center px-6">
      <div className="max-w-4xl mx-auto text-center">
        <h1 className="text-5xl md:text-7xl font-bold mb-6">
          {title}
        </h1>
        <p className="text-lg md:text-xl text-gray-600 mb-8">
          {subtitle}
        </p>
        <button className="px-8 py-4 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition">
          {ctaText}
        </button>
      </div>
    </section>
  );
};
```

### 2. Props 类型定义

```tsx
// 简单 Props
interface ButtonProps {
  text: string;
  onClick?: () => void;
  variant?: 'primary' | 'secondary';
}

// 包含 children
interface CardProps {
  title: string;
  children: React.ReactNode;
  className?: string;
}

// 数组 Props
interface FeaturesProps {
  features: Array<{
    icon: string;
    title: string;
    description: string;
  }>;
}
```

### 3. 状态管理

```tsx
import { useState } from 'react';

export const Navigation = () => {
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);

  return (
    <nav className="fixed top-0 w-full bg-white/80 backdrop-blur-md z-50">
      <div className="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
        <div className="text-2xl font-bold">Logo</div>
        
        {/* Desktop Menu */}
        <div className="hidden md:flex gap-8">
          <a href="#features">Features</a>
          <a href="#pricing">Pricing</a>
        </div>

        {/* Mobile Menu Button */}
        <button 
          onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
          className="md:hidden"
          aria-label="Toggle menu"
        >
          <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 6h16M4 12h16M4 18h16" />
          </svg>
        </button>
      </div>

      {/* Mobile Menu */}
      {mobileMenuOpen && (
        <div className="md:hidden bg-white border-t">
          <div className="px-6 py-4 flex flex-col gap-4">
            <a href="#features" onClick={() => setMobileMenuOpen(false)}>Features</a>
            <a href="#pricing" onClick={() => setMobileMenuOpen(false)}>Pricing</a>
          </div>
        </div>
      )}
    </nav>
  );
};
```

### 4. 代码组织

```tsx
// ✅ 推荐：拆分大组件
export const LandingPage = () => {
  return (
    <>
      <Navigation />
      <Hero />
      <Features />
      <SocialProof />
      <CTASection />
      <Footer />
    </>
  );
};

// ❌ 避免：所有代码写在一个组件
export const LandingPage = () => {
  return (
    <div>
      {/* 500 lines of code... */}
    </div>
  );
};
```

---

## 🎨 Tailwind CSS 规范

### 1. 基础配置

**tailwind.config.js**：

```javascript
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          DEFAULT: '#0066FF',
          50: '#E5F0FF',
          100: '#CCE0FF',
          // ... 其他色阶
        },
      },
      fontFamily: {
        sans: ['Inter', '-apple-system', 'sans-serif'],
      },
      spacing: {
        '18': '4.5rem',
        '88': '22rem',
      },
    },
  },
  plugins: [],
}
```

### 2. 响应式写法

```tsx
<div className="
  px-6 md:px-12 lg:px-24          // padding
  text-base md:text-lg lg:text-xl // font size
  grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 // grid
  gap-4 md:gap-6 lg:gap-8         // gap
">
  {/* Content */}
</div>
```

### 3. 状态样式

```tsx
<button className="
  px-6 py-3
  bg-blue-600 
  text-white 
  rounded-lg
  hover:bg-blue-700     // hover
  active:bg-blue-800    // active
  focus:ring-4 focus:ring-blue-200 // focus
  disabled:opacity-50 disabled:cursor-not-allowed // disabled
  transition-all duration-300
">
  Button
</button>
```

### 4. 自定义样式（必要时）

```tsx
// 使用 @apply（谨慎使用）
<style jsx>{`
  .custom-gradient {
    @apply bg-gradient-to-r from-blue-500 to-purple-600;
  }
`}</style>

// 或内联样式（复杂计算）
<div style={{
  background: `linear-gradient(135deg, ${color1} 0%, ${color2} 100%)`
}}>
```

---

## 🧩 常见组件模式

### 1. Button 组件

```tsx
interface ButtonProps {
  children: React.ReactNode;
  variant?: 'primary' | 'secondary';
  size?: 'sm' | 'md' | 'lg';
  onClick?: () => void;
}

export const Button: React.FC<ButtonProps> = ({ 
  children, 
  variant = 'primary', 
  size = 'md',
  onClick 
}) => {
  const baseStyles = 'font-semibold rounded-lg transition-all';
  
  const variants = {
    primary: 'bg-blue-600 text-white hover:bg-blue-700',
    secondary: 'bg-gray-200 text-gray-900 hover:bg-gray-300',
  };
  
  const sizes = {
    sm: 'px-4 py-2 text-sm',
    md: 'px-6 py-3 text-base',
    lg: 'px-8 py-4 text-lg',
  };

  return (
    <button 
      className={`${baseStyles} ${variants[variant]} ${sizes[size]}`}
      onClick={onClick}
    >
      {children}
    </button>
  );
};
```

### 2. Card 组件

```tsx
interface CardProps {
  icon: string;
  title: string;
  description: string;
}

export const Card: React.FC<CardProps> = ({ icon, title, description }) => {
  return (
    <div className="
      p-8 
      bg-white 
      rounded-2xl 
      border border-gray-200
      hover:border-gray-300 
      hover:shadow-lg
      transition-all duration-300
    ">
      <div className="text-4xl mb-4">{icon}</div>
      <h3 className="text-xl font-semibold mb-2">{title}</h3>
      <p className="text-gray-600">{description}</p>
    </div>
  );
};
```

### 3. Section 容器

```tsx
interface SectionProps {
  children: React.ReactNode;
  className?: string;
  id?: string;
}

export const Section: React.FC<SectionProps> = ({ children, className = '', id }) => {
  return (
    <section 
      id={id}
      className={`py-20 md:py-32 px-6 ${className}`}
    >
      <div className="max-w-7xl mx-auto">
        {children}
      </div>
    </section>
  );
};
```

---

## 🎭 动画处理

### 1. 使用 Tailwind 动画

```tsx
// 内置动画
<div className="animate-spin">Loading...</div>
<div className="animate-pulse">Skeleton</div>
<div className="animate-bounce">↓</div>

// 自定义动画（tailwind.config.js）
animation: {
  'fade-in': 'fadeIn 0.5s ease-in',
},
keyframes: {
  fadeIn: {
    '0%': { opacity: '0', transform: 'translateY(20px)' },
    '100%': { opacity: '1', transform: 'translateY(0)' },
  },
}
```

### 2. 使用 Framer Motion（推荐）

```tsx
import { motion } from 'framer-motion';

export const Hero = () => {
  return (
    <motion.section
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.6 }}
      className="min-h-screen"
    >
      {/* Content */}
    </motion.section>
  );
};
```

---

## 📦 输出检查清单

交付前确认：

- [ ] 所有组件使用 TypeScript
- [ ] Props 有类型定义
- [ ] 组件拆分合理（每个组件 < 200 行）
- [ ] 使用函数式组件 + Hooks
- [ ] Tailwind 类名符合响应式规范
- [ ] 移动端测试通过
- [ ] 可访问性属性完整（aria-label, alt）
- [ ] 代码格式化（Prettier）
- [ ] 无 TypeScript 错误
- [ ] 导出所有组件

---

## 🚫 禁止的做法

```
❌ 使用 class 组件
❌ 在组件内直接写大量内联样式
❌ 过度使用 @apply（每个元素都 @apply）
❌ 未定义 Props 类型
❌ 组件过大（超过 300 行）
❌ 直接修改 props
❌ 未处理移动端响应式
❌ 忽略 TypeScript 类型错误
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
React + Tailwind CSS（prompts/adapters/react-tailwind.md）：
- TypeScript 函数式组件
- 拆分为 6 个组件：Navigation, Hero, Features, SocialProof, CTASection, Footer
- 所有 Props 有类型定义
- 使用 Tailwind 实用类
- 响应式断点：md (768px), lg (1024px)
- 移动端菜单使用 useState
- 可选：Hero 区域使用 Framer Motion 淡入动画
```

---

**最后更新**：2025-12-27

