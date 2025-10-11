#!/bin/bash

# 个人主页网站部署脚本
# 使用方法: chmod +x deploy.sh && ./deploy.sh

echo "🚀 个人主页网站部署工具"
echo "========================"
echo ""

# 检查是否已经是 Git 仓库
if [ ! -d ".git" ]; then
    echo "📦 初始化 Git 仓库..."
    git init
    echo "✅ Git 仓库初始化完成"
    echo ""
fi

# 添加所有文件
echo "📝 添加文件到 Git..."
git add .

# 提交更改
echo "💾 提交更改..."
read -p "请输入提交信息 (默认: 更新网站): " commit_message
commit_message=${commit_message:-"更新网站"}
git commit -m "$commit_message"

# 检查是否已配置远程仓库
if ! git remote | grep -q "origin"; then
    echo ""
    echo "🔗 配置远程仓库"
    echo "请输入你的 GitHub 仓库地址"
    echo "格式: https://github.com/用户名/仓库名.git"
    read -p "GitHub 仓库地址: " repo_url
    
    if [ -z "$repo_url" ]; then
        echo "❌ 错误：仓库地址不能为空"
        exit 1
    fi
    
    git remote add origin "$repo_url"
    echo "✅ 远程仓库配置完成"
fi

# 推送到 GitHub
echo ""
echo "📤 推送到 GitHub..."
git branch -M main

if git push -u origin main; then
    echo ""
    echo "✅ 部署成功！"
    echo ""
    echo "🎉 你的网站已经上传到 GitHub"
    echo ""
    echo "📌 下一步："
    echo "1. 访问你的 GitHub 仓库"
    echo "2. 进入 Settings → Pages"
    echo "3. 在 Source 下选择 'main' 分支"
    echo "4. 点击 Save"
    echo "5. 等待 1-2 分钟后访问你的网站"
    echo ""
else
    echo ""
    echo "⚠️  推送失败"
    echo ""
    echo "可能的原因："
    echo "1. 仓库地址错误"
    echo "2. 没有推送权限"
    echo "3. 网络连接问题"
    echo ""
    echo "💡 建议："
    echo "1. 检查仓库地址是否正确"
    echo "2. 确认已登录 GitHub"
    echo "3. 尝试使用 SSH 方式连接"
    echo ""
fi
