# 设计案例示例

## 🎨 可视化示例页面

这个文件夹包含 5 种设计风格的**完整 HTML 示例页面**，可以直接在浏览器中打开查看效果！

### 📄 示例页面列表

| 风格 | 文件名 | 在线预览 |
|------|--------|---------|
| ⚪ 极简风格 | `minimalist-example.html` | 双击文件在浏览器中打开 |
| 🔵 现代科技风 | `tech-modern-example.html` | 双击文件在浏览器中打开 |
| 💼 专业商务风 | `business-pro-example.html` | 双击文件在浏览器中打开 |
| 🎨 创意大胆风 | `creative-bold-example.html` | 双击文件在浏览器中打开 |
| 💎 玻璃态风格 | `glassmorphism-example.html` | 双击文件在浏览器中打开 |

### 🚀 如何使用示例页面

#### 方式 1：直接打开
```bash
# 在项目根目录下
cd examples
open minimalist-example.html  # macOS
# 或者直接双击 HTML 文件
```

#### 方式 2：本地服务器（推荐）
```bash
# 使用 Python
python -m http.server 8000

# 或使用 Node.js
npx http-server

# 然后访问 http://localhost:8000/examples/
```

#### 方式 3：VS Code Live Server
- 安装 Live Server 扩展
- 右键点击 HTML 文件
- 选择 "Open with Live Server"

### 💡 示例页面的作用

1. **直观对比**：快速浏览不同风格的视觉效果
2. **学习参考**：查看源代码学习布局和样式实现
3. **提案展示**：向客户或团队展示设计方向
4. **二次开发**：基于示例页面进行修改和定制

### 🎯 每个示例包含

✅ 完整的落地页布局（Hero、功能、CTA 等）  
✅ 该风格的典型视觉元素  
✅ 响应式设计（支持移动端）  
✅ 纯 HTML + CSS（无需构建工具）  
✅ 内联样式（方便查看和学习）

---

## 📚 收集更多案例

除了示例页面，你还可以：

### 📁 建议的文件组织方式

```
examples/
├── minimalist-example.html       # 极简风格示例
├── tech-modern-example.html      # 现代科技风示例
├── business-pro-example.html     # 专业商务风示例
├── creative-bold-example.html    # 创意大胆风示例
├── glassmorphism-example.html    # 玻璃态风格示例
│
├── screenshots/                  # 优秀网站截图
│   ├── minimalist/
│   │   ├── linear.png
│   │   └── notion.png
│   ├── tech-modern/
│   └── ...
│
└── analysis/                     # 设计分析笔记
    ├── linear-analysis.md
    └── ...
```

### 💡 如何使用

1. **收集截图**：看到喜欢的设计，截图保存到 `screenshots/` 对应文件夹
2. **分析要点**：在 `analysis/` 中记录设计的优点
3. **提取元素**：配色、字体、间距、布局等
4. **对话参考**：与 AI 对话时可以说"参考 examples/screenshots/minimalist/linear.png 的风格"

### 📝 分析模板

为每个案例创建分析文档：

```markdown
# [网站名称] 设计分析

## 基本信息
- 网站：[URL]
- 产品类型：[SaaS 类型]
- 目标用户：[用户群体]

## 配色方案
- 主色：#XXXXXX
- 辅助色：#XXXXXX
- 背景：#XXXXXX

## 布局特点
- Hero 区域：[描述]
- 功能展示：[描述]
- CTA 位置：[描述]

## 值得学习的点
1. [要点 1]
2. [要点 2]
3. [要点 3]

## 可以用于
- [ ] 我的产品 A
- [ ] 我的产品 B
```

---

**提示**：示例页面仅供学习参考，实际项目中请根据品牌和产品特点进行定制。

