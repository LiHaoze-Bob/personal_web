# 网站部署指南

本文档详细说明如何将个人主页部署到互联网上，让全世界都能访问。

## 方案一：GitHub Pages（推荐 ⭐）

### 优点
- ✅ 完全免费
- ✅ 自动 HTTPS
- ✅ 可以使用自定义域名
- ✅ 部署简单
- ✅ 自动更新

### 部署步骤

#### 1. 创建 GitHub 账号
如果还没有，访问 [github.com](https://github.com) 注册账号

#### 2. 创建新仓库
- 点击右上角 "+" → "New repository"
- 仓库名填写：`你的用户名.github.io`（例如：`bobli.github.io`）
- 设置为 Public（公开）
- 点击 "Create repository"

#### 3. 上传网站文件

**方法 A：使用 Git 命令行**

在终端中运行：

```bash
cd /Users/bob.li/Code/personal-website

# 初始化 Git 仓库
git init

# 添加所有文件
git add .

# 提交更改
git commit -m "Initial commit: Personal website"

# 添加远程仓库（替换成你的仓库地址）
git remote add origin https://github.com/你的用户名/你的用户名.github.io.git

# 推送到 GitHub
git branch -M main
git push -u origin main
```

**方法 B：使用 GitHub 网页界面**

1. 在 GitHub 仓库页面点击 "uploading an existing file"
2. 拖拽以下文件到页面：
   - index.html
   - styles.css
   - script.js
   - README.md
3. 点击 "Commit changes"

#### 4. 启用 GitHub Pages

1. 在仓库页面，点击 "Settings"
2. 左侧菜单找到 "Pages"
3. 在 "Source" 下拉菜单选择 "main" 分支
4. 点击 "Save"

#### 5. 访问你的网站

等待 1-2 分钟后，访问：
```
https://你的用户名.github.io
```

🎉 完成！你的网站现在已经在互联网上了！

---

## 方案二：Netlify

### 优点
- ✅ 完全免费
- ✅ 自动 HTTPS
- ✅ 持续部署
- ✅ 更快的全球 CDN

### 部署步骤

#### 1. 注册 Netlify
访问 [netlify.com](https://www.netlify.com) 并注册（可以用 GitHub 账号登录）

#### 2. 部署网站

**方法 A：拖拽部署（最简单）**

1. 登录 Netlify
2. 将整个 `personal-website` 文件夹拖拽到 Netlify 的部署区域
3. 等待几秒钟
4. 完成！你会得到一个 `xxx.netlify.app` 的网址

**方法 B：连接 GitHub**

1. 先将代码推送到 GitHub（参考方案一的步骤 3）
2. 在 Netlify 点击 "New site from Git"
3. 选择 "GitHub" 并授权
4. 选择你的仓库
5. 点击 "Deploy site"

#### 3. 自定义域名（可选）

在 Netlify 的 "Domain settings" 中可以：
- 修改 Netlify 子域名
- 添加自己购买的域名

---

## 方案三：Vercel

### 优点
- ✅ 完全免费
- ✅ 极快的部署速度
- ✅ 自动 HTTPS
- ✅ 优秀的性能

### 部署步骤

1. 访问 [vercel.com](https://vercel.com) 并注册
2. 点击 "New Project"
3. 连接 GitHub 并选择仓库
4. 点击 "Deploy"
5. 完成！

---

## 方案四：Cloudflare Pages

### 优点
- ✅ 完全免费
- ✅ 无限带宽
- ✅ 全球 CDN
- ✅ 超快速度

### 部署步骤

1. 访问 [pages.cloudflare.com](https://pages.cloudflare.com)
2. 注册并登录
3. 点击 "Create a project"
4. 连接 GitHub 仓库
5. 配置构建设置（保持默认即可）
6. 点击 "Save and Deploy"

---

## 使用自定义域名

如果你想使用自己的域名（如 `www.bobli.com`）：

### 1. 购买域名
在以下平台购买域名：
- [阿里云](https://wanwang.aliyun.com)
- [腾讯云](https://dnspod.cloud.tencent.com)
- [Namecheap](https://www.namecheap.com)
- [GoDaddy](https://www.godaddy.com)

### 2. 配置 DNS

以 GitHub Pages 为例：

1. 在域名管理后台添加 CNAME 记录：
   ```
   类型: CNAME
   主机记录: www
   记录值: 你的用户名.github.io
   ```

2. 在 GitHub Pages 设置中添加自定义域名

3. 等待 DNS 生效（通常几分钟到几小时）

---

## 快速部署命令（GitHub Pages）

我已经为你准备了一个自动化脚本。在终端运行：

```bash
# 首次部署
cd /Users/bob.li/Code/personal-website
git init
git add .
git commit -m "Initial commit"

# 替换下面的 URL 为你的 GitHub 仓库地址
# git remote add origin https://github.com/你的用户名/你的用户名.github.io.git
# git branch -M main
# git push -u origin main
```

---

## 更新网站

当你修改网站后，更新到互联网：

### GitHub Pages / Netlify / Vercel（连接 Git）
```bash
cd /Users/bob.li/Code/personal-website
git add .
git commit -m "更新网站内容"
git push
```

几秒钟后，更改会自动部署！

### Netlify（拖拽方式）
直接在 Netlify 网站上重新拖拽更新的文件夹

---

## 推荐方案总结

| 方案 | 难度 | 速度 | 推荐度 |
|------|------|------|--------|
| GitHub Pages | ⭐⭐ | 快 | ⭐⭐⭐⭐⭐ |
| Netlify | ⭐ | 很快 | ⭐⭐⭐⭐⭐ |
| Vercel | ⭐ | 很快 | ⭐⭐⭐⭐ |
| Cloudflare Pages | ⭐⭐ | 极快 | ⭐⭐⭐⭐ |

**我的建议：**
- 新手：使用 **Netlify 拖拽部署**（最简单）
- 有 Git 经验：使用 **GitHub Pages**（最流行）
- 追求性能：使用 **Cloudflare Pages**（最快）

---

## 需要帮助？

如果在部署过程中遇到问题，可以：
1. 查看各平台的官方文档
2. 在 GitHub Issues 中提问
3. 联系我获取帮助

祝你部署顺利！🚀
