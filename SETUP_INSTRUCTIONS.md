# GitHub Pages Setup - Quick Guide

## Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `dropstcg-legal` (or any name you prefer)
3. Description: "Privacy Policy and Terms of Service for DropsTCG"
4. Make it **Public** (required for free GitHub Pages)
5. **DO NOT** initialize with README, .gitignore, or license
6. Click "Create repository"

## Step 2: Push Your Files

Run these commands in the `legal-pages` folder:

```bash
cd legal-pages
git remote add origin https://github.com/Flairysm/dropstcg-legal.git
git branch -M main
git push -u origin main
```

**Note:** Replace `Flairysm` with your GitHub username and `dropstcg-legal` with your repository name.

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** (top right)
3. Scroll down to **Pages** (left sidebar)
4. Under **Source**, select:
   - **Branch:** `main`
   - **Folder:** `/ (root)`
5. Click **Save**

## Step 4: Get Your URLs

After a few minutes, your pages will be live at:

- **Privacy Policy:** `https://flairysm.github.io/dropstcg-legal/privacy-policy.html`
- **Terms of Service:** `https://flairysm.github.io/dropstcg-legal/terms-of-service.html`

**Note:** Replace `flairysm` with your GitHub username and `dropstcg-legal` with your repository name.

## Step 5: Test

1. Wait 1-2 minutes for GitHub Pages to deploy
2. Visit your URLs in a browser
3. Make sure both pages load correctly
4. Check on mobile device (important for App Store)

## Troubleshooting

- **404 Error:** Wait a few more minutes, GitHub Pages can take up to 10 minutes to deploy
- **Not found:** Make sure the repository is **Public** (not Private)
- **Wrong URL:** Check that your repository name matches in the URL

## Done! ✅

Once your pages are live, you can use these URLs in:
- App Store Connect (Privacy Policy URL - **REQUIRED**)
- Your mobile app (link to Terms & Privacy)
- Any other place you need legal document links

