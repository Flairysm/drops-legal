#!/bin/bash

# GitHub Pages Setup Script for DropsTCG Legal Pages
# This script helps you push your legal pages to GitHub and enable Pages

echo "🚀 DropsTCG GitHub Pages Setup"
echo "================================"
echo ""

# Check if we're in the right directory
if [ ! -f "privacy-policy.html" ]; then
    echo "❌ Error: privacy-policy.html not found"
    echo "Please run this script from the legal-pages directory"
    exit 1
fi

echo "✅ Files found:"
ls -1 *.html
echo ""

# Get GitHub username
read -p "Enter your GitHub username (e.g., Flairysm): " GITHUB_USERNAME

# Get repository name
read -p "Enter repository name (e.g., dropstcg-legal): " REPO_NAME

echo ""
echo "📝 Repository details:"
echo "   Username: $GITHUB_USERNAME"
echo "   Repository: $REPO_NAME"
echo ""

# Confirm
read -p "Have you created this repository on GitHub? (y/n): " CONFIRM
if [ "$CONFIRM" != "y" ]; then
    echo ""
    echo "📋 Please create the repository first:"
    echo "   1. Go to https://github.com/new"
    echo "   2. Repository name: $REPO_NAME"
    echo "   3. Make it PUBLIC (required for free GitHub Pages)"
    echo "   4. DO NOT initialize with README"
    echo "   5. Click 'Create repository'"
    echo ""
    read -p "Press Enter when you've created the repository..."
fi

echo ""
echo "🔗 Adding remote repository..."
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"

echo "📤 Pushing to GitHub..."
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Success! Files pushed to GitHub"
    echo ""
    echo "📄 Next steps:"
    echo "   1. Go to: https://github.com/$GITHUB_USERNAME/$REPO_NAME/settings/pages"
    echo "   2. Under 'Source', select:"
    echo "      - Branch: main"
    echo "      - Folder: / (root)"
    echo "   3. Click 'Save'"
    echo ""
    echo "🌐 Your pages will be available at:"
    echo "   Privacy Policy: https://$GITHUB_USERNAME.github.io/$REPO_NAME/privacy-policy.html"
    echo "   Terms of Service: https://$GITHUB_USERNAME.github.io/$REPO_NAME/terms-of-service.html"
    echo ""
    echo "⏱️  Wait 1-2 minutes for GitHub Pages to deploy, then test the URLs!"
else
    echo ""
    echo "❌ Error pushing to GitHub"
    echo "Please check:"
    echo "   - Repository name is correct"
    echo "   - Repository exists on GitHub"
    echo "   - You have push access"
    echo "   - Repository is PUBLIC (required for free GitHub Pages)"
fi

