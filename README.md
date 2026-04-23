# Hussain Gandhi | DevOps Portfolio

A modern, responsive, and fast-loading personal portfolio website designed for a DevOps/Platform Engineering aesthetic. The site features a sleek, terminal-inspired dark mode theme, complete with a typing effect and glowing accents.

## 🚀 Features
- **Zero Build Step**: Built with raw HTML, Vanilla CSS, and JavaScript. Lightning-fast and highly maintainable.
- **Terminal Aesthetic**: Cyberpunk/developer-focused design with monospaced typography, dark backgrounds (`#0d1117`), and electric blue accents (`#00f0ff`).
- **Responsive Layout**: Fully mobile-friendly with CSS Grid and Flexbox, including a collapsible hamburger navigation menu.
- **Dynamic Interactions**: Features a custom JavaScript typing effect in the hero section and smooth scroll navigation.

## 🛠️ Technology Stack
- **Structure**: HTML5
- **Styling**: Vanilla CSS (Custom properties, Flexbox, Grid)
- **Logic**: Vanilla JavaScript
- **Icons**: FontAwesome 6
- **Fonts**: Google Fonts ('Inter' & 'JetBrains Mono')

## 📂 Repository Structure
All static files intended for deployment are located in the `docs/` directory.
```
.
├── docs/
│   ├── index.html       # Main HTML structure
│   ├── style.css        # Custom styles and theming
│   ├── script.js        # Interactive logic (typing effect, smooth scroll)
│   └── profile.png      # Profile image
├── LICENSE
└── README.md
```

## 💻 Local Development
Since the project relies entirely on static files without a build process or a framework like React/Vue, you don't need `npm` or any complex tooling.

1. Clone the repository:
   ```bash
   git clone https://github.com/hussain-gandhi/hussain.gandhi.biz.git
   ```
2. Simply open `docs/index.html` in your favorite web browser, or use a local server like `Live Server` in VSCode or Python's HTTP server:
   ```bash
   python3 -m http.server 8000 --directory docs/
   ```

## 🌐 Deployment
This website is designed to be effortlessly deployed to **GitHub Pages**.

1. Push your code to the `main` branch.
2. In your GitHub repository, navigate to **Settings** > **Pages**.
3. Under **Build and deployment**, set the **Source** to `Deploy from a branch`.
4. Set the **Branch** to `main` and the **Folder** to `/docs`.
5. Click **Save**. Your site will be live within a few minutes!

## 📝 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
