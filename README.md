# 个人主页网站

一个现代化、响应式的个人主页网站，使用纯 HTML、CSS 和 JavaScript 构建。

## 功能特点

✨ **现代设计**
- 深色主题设计
- 渐变色彩方案
- 流畅的动画效果
- 响应式布局

🎨 **主要功能**
- 个人介绍和简历展示
- 技能展示（带进度条动画）
- 项目作品集
- 联系表单
- 社交媒体链接
- 平滑滚动导航

📱 **完全响应式**
- 适配桌面、平板和手机
- 移动端汉堡菜单
- 自适应布局

## 使用方法

### 方法一：直接在浏览器中打开

1. 找到 `index.html` 文件
2. 双击或右键选择"打开方式" → 选择浏览器
3. 网站将在浏览器中打开

### 方法二：使用本地服务器（推荐）

如果你有 Python 安装，可以运行：

```bash
cd /Users/bob.li/Code/personal-website
python3 -m http.server 8000
```

然后在浏览器中访问 `http://localhost:8000`

## 自定义指南

### 1. 修改个人信息

编辑 `index.html` 文件，找到以下部分并修改：

- **姓名和标题**：在 Hero 部分找到 `<h1>` 和 `<p>` 标签
- **关于我**：在 About 部分修改文本内容
- **联系方式**：在 Contact 部分更新邮箱、电话和地址

### 2. 更新技能

在 Skills 部分，你可以：
- 修改技能卡片的图标（使用 Font Awesome 图标）
- 更改技能名称和描述
- 调整技能进度条（修改 `style="width: XX%"` 的值）

### 3. 添加项目

在 Projects 部分，复制现有的项目卡片并修改：
- 项目图标
- 项目名称和描述
- 技术标签
- GitHub 和演示链接

### 4. 修改颜色主题

编辑 `styles.css` 文件的 `:root` 部分：

```css
:root {
    --primary-color: #6366f1;     /* 主色调 */
    --secondary-color: #8b5cf6;   /* 次要色调 */
    --dark-bg: #0f172a;           /* 深色背景 */
    --light-bg: #1e293b;          /* 浅色背景 */
}
```

### 5. 更新社交媒体链接

在 Hero 和 Footer 部分找到社交媒体图标，修改 `href` 属性为你的实际链接。

## 文件结构

```
personal-website/
│
├── index.html      # 主 HTML 文件
├── styles.css      # 样式表
├── script.js       # JavaScript 交互功能
└── README.md       # 说明文档
```

## 技术栈

- **HTML5**：网页结构
- **CSS3**：样式和动画
  - CSS Grid 和 Flexbox 布局
  - CSS 变量
  - 关键帧动画
- **JavaScript**：交互功能
  - 平滑滚动
  - 导航栏高亮
  - 移动端菜单
  - 滚动动画
  - 表单处理
- **Font Awesome**：图标库

## 浏览器支持

- Chrome（推荐）
- Firefox
- Safari
- Edge
- Opera

## 部署

### GitHub Pages

1. 创建 GitHub 仓库
2. 上传所有文件
3. 在仓库设置中启用 GitHub Pages
4. 选择主分支作为源

### Netlify/Vercel

1. 将代码推送到 Git 仓库
2. 在 Netlify 或 Vercel 中导入项目
3. 自动部署完成

## 下一步优化建议

- 添加真实的个人照片替换图标
- 集成真实的表单后端（如 Formspree、EmailJS）
- 添加博客功能
- 集成 Google Analytics
- 添加更多动画效果
- 优化 SEO

## 许可

MIT License - 随意使用和修改！

## 联系方式

如有问题，请随时联系：bob.li@example.com

---

享受你的新个人主页！🚀
