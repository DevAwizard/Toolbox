# 🚀 My Neovim Configuration

Welcome to my custom Neovim setup! 🎉 This repository contains everything you need to create a modern, efficient, and feature-packed Neovim environment.

I’m new to Neovim, and this configuration reflects my journey as a beginner. After diving into documentation and watching tutorials, I’ve put together a simple and functional setup. My goal is to help other beginners like me get started with Neovim by sharing what I’ve learned along the way.

Whether you’re just starting your Neovim journey or looking for inspiration, this guide is for you! Let’s dive in and build a Neovim setup you’ll love! 🚀

#### 🌟 Why Use This Guide?
- **Learn by Doing**: Understand the basics of configuring Neovim step by step.
- **Modern Setup**: Includes plugins and tools to enhance productivity and coding experience.
- **Beginner-Friendly**: Written by someone who’s just starting—so no prior experience needed!

#### 🧐 Why Neovim?
- **Customization**: Make it yours with plugins and settings.
- **Speed**: Lightweight and super fast.
- **Power**: Packed with features for coding and productivity.
- **Great for Beginners**: Start simple and build up as you learn.


## 📚 Table of Contents

1. [Installing Initial Tools](#installing-initial-tools)
   - [Step 1: Install iTerm2 (Optional but Recommended)](#-step-1-install-iterm2-optional-but-recommended)
   - [Step 2: Install Homebrew (If You Don’t Have It)](#-step-2-install-homebrew-if-you-dont-have-it)
   - [Step 3: Install Neovim](#-step-3-install-neovim)
   - [Step 4: Enable or Install a Coding Font (Optional but Recommended)](#-step-4-enable-or-install-a-coding-font-optional-but-recommended)
   - [Step 5: Install Ripgrep (Recommended for Search)](#-step-5-install-ripgrep-recommended-for-search)
   - [Step 6: Install Node (Recommended for Plugin Support)](#-step-6-install-node-recommended-for-plugin-support)
   - [Step 7: Create the config_nvim Folder](#-step-7-create-the-config_nvim-folder)
   - [Step 8: Create the Used Folders and Files](#-step-8-create-the-used-folders-and-files)


## Installing Initial Tools

### 🛠 Step 1: Install iTerm2 (Optional but Recommended)

If you’re on macOS, I recommend using `iTerm2` as your terminal. It’s a powerful replacement for the default Terminal app with features like:
- Split panes for multitasking.
- Better colors and font customization.
- Built-in search and clipboard history.

 Install iTerm2:
 1. Go to the [iTerm2 website](https://iterm2.com/index.html).
 2. Download and install the latest version.

After installing iTerm2, you’re ready to start setting up Neovim!

### 🛠 Step 2: Install Homebrew (If You Don’t Have It)

Homebrew is a package manager for macOS that makes it easy to install software and tools from the terminal. If you don’t have it installed yet, follow these steps:

Install Homebrew:
1. Open your terminal (or iTerm2 if you installed it in the previous step).

2. Run the following command to install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Follow the on-screen instructions to complete the installation. After it’s done, verify that Homebrew is installed by running:

```sh
brew --version
```

If it outputs a version number, like the one below, you’re good to go!

```sh
Homebrew 4.4.14
```
### 🛠 Step 3: Install Neovim

Neovim is the main focus here, so let’s install it first. You don’t need Vim unless you explicitly want to use both.

Install Neovim with `Homebrew` (macOS):

If you’ve installed Homebrew (Step 2), installing Neovim is simple:
```sh
brew install neovim
```
After the installation, verify that Neovim is installed by running:
```sh
nvim --version
```

If it outputs a version number, like the one below, you’re good to go!

```sh
NVIM v0.10.3
Build type: Release
LuaJIT 2.1.1734355927
Run "nvim -V1 -v" for more info
```

Install Vim (Optional):

If you want to try Vim alongside Neovim:
```sh
brew install vim
```
Verify the installation with:
```sh
vim --version
```


### 🛠 Step 4: Enable or Install a Coding Font (Optional but Recommended)

A good coding font with ligatures and icon support enhances your Neovim experience, especially with plugins like Telescope and lualine. Follow the instructions below depending on your setup.

#### 💡 Scenario 1: Fonts Are Preinstalled in iTerm2

If you’re using iTerm2, many popular coding fonts (like Nerd Fonts) are already preinstalled. You can skip manual installation and enable one of these fonts directly:

1. Open iTerm2 Preferences:
   - Press Cmd + , or go to iTerm2 > Preferences from the menu bar.

2. Navigate to Profiles:
   - In the Preferences window, click on the Profiles tab.
	- Select your active profile (e.g., Default).

3. Go to the Text Tab:
   - Click on the Text tab (🖋️).

4. Select a Preinstalled Font:
   - Under the Font section:
      - Click the dropdown or gear icon next to the current font.
   - Choose a preinstalled font with Nerd Font support, such as:
      - MesloLGS NF (default in iTerm2, supports Nerd Fonts).
      - JetBrains Mono Nerd Font.
      - Hack Nerd Font.
5. Save and Apply:
   - Close the Preferences window. The new font will automatically apply to your terminal.

#### 💡 Scenario 2: Manually Install Fonts

1. Visit the [Nerd Fonts Website](https://www.nerdfonts.com/).

2. Find a font you like:
   - `JetBrains` Mono Nerd Font (popular for coding).
   - `Fira Code Nerd Font` (great with ligatures).
   - `Hack Nerd Font` (clean and simple).

3. Download the `.zip file` for your chosen font.

4. Extract the `.zip file`.

5. Double-click the .ttf files to install them on your system.

6. Setting the Font in Your Terminal
   - Open your terminal preferences (e.g., iTerm2 or Terminal).
   - Navigate to the **Profiles** or **Appearance** section.
   - Change the font to your **installed font** (e.g., “JetBrains Mono Nerd Font”).
Setting the Font in Your Terminal

Whether you used a preinstalled font or manually installed one, follow these steps to apply it in your terminal:
1. Open your terminal preferences (e.g., iTerm2 or Terminal).
2.  Navigate to the Profiles or Appearance section.
3.  Change the font to your installed font (e.g., JetBrains Mono Nerd Font, MesloLGS NF).


### 🛠 Step 5: Install Ripgrep (Recommended for Search)

Ripgrep (often abbreviated as rg) is a fast and modern search tool that works seamlessly with Neovim plugins like Telescope for finding files or text within projects.

Install Ripgrep:

Use Homebrew to install it:
```sh
brew install ripgrep
```
Verify Installation:

After installation, confirm that it’s installed by running:
```sh
rg --version
```
You should see output similar to this:
```sh
ripgrep 13.0.0
```
Why Ripgrep?
- Speed: It’s significantly faster than traditional search tools like grep.
- Integration: Many Neovim plugins, such as Telescope, rely on ripgrep for their search functionality.

### 🛠 Step 6: Install Node (Recommended for Plugin Support)

Node.js is an essential dependency for many Neovim plugins, especially those using modern JavaScript tooling. It’s required for features like syntax highlighting (via Treesitter), language servers, and other powerful plugins.

Install Node.js with Homebrew (macOS):

To install Node.js, use Homebrew:
```sh
brew install node
```
Verify Installation:

Once installed, confirm `Node.js` and `npm` (Node.js package manager) are installed by running:
```sh
node --version
npm --version
```

You should see output similar to this:
```sh
v23.5.0  # Node.js version
10.9.2    # npm version
```

#### Why Do You Need Node.js? 🌟

- **Plugin Support**: Many Neovim plugins, such as nvim-treesitter and Telescope, require Node.js for additional functionality.
- **Language Server Protocols (LSP)**: Install and configure LSP servers for languages like JavaScript, TypeScript, etc.

**Optional: Update npm**

Sometimes, the npm version installed with `Node.js` might be outdated. To update npm to the latest version, run:
```sh
npm install -g npm
```

### 📂 Step 7: Create the config_nvim Folder

The `~/.config/nvim` directory is where Neovim stores its configuration files. By default: Use `init.vim` (or `init.lua` for Lua-based configurations) to define your custom settings and plugins. 💻

1. 🚀 Open Terminal
- Launch your terminal to start creating the configuration directory.

2. 🏠 Navigate to Your Home Directory
- Make sure you’re in your home directory by running:

```sh
cd ~
```

3. 📁 Create the .config Directory (if needed)

Check if the .config directory exists:

```sh
ls -a
```
If it doesn’t exist, create it with:
```sh
mkdir .config
```

✅ Tip: The mkdir command is used to create new directories.

4. ✨ Create the nvim Folder
- Navigate to .config:
```sh
cd .config
```

Create the nvim folder:
```sh
mkdir nvim
```

5. ✅ Verify the Directory Structure
- Run this command to confirm the folder was created:
```sh
ls ~/.config
```
- You should see nvim listed! 🎉

🚀 Quick Setup Command

For a one-liner setup:
```sh
mkdir -p ~/.config/nvim
```

The `-p` flag ensures that both .config and nvim are created if they don’t already exist. 🛡️

### 📂 Step 8: Create the Used Folders and Files

In this step, you will create the necessary folders and files for organizing your Neovim configuration.

🗂️ Folder and File Structure

You need to create the following structure inside the ~/.config/nvim directory:
```sh
~/.config/nvim/
├── lua/
│   └── username/
│       ├── core/
│       └── plugins/
├── plugin/
└── init.lua
```
#### 👣 Steps to Create the Structure
1. Navigate to the ~/.config/nvim directory:

```sh
cd ~/.config/nvim
```

2. Create the lua/username folder:

Replace username with your desired username or identifier (e.g., myname).

```sh
mkdir -p lua/username/{core,plugins}
```

3. Create the plugin folder:
```sh
mkdir plugin
```

4. Create the init.lua file:
Use a text editor like touch to create an empty file:
```sh
touch init.lua
```

#### ✍️ Purpose of Each File and Folder
**1. init.lua**:
- This is the main configuration file for Neovim.
- It will load all other Lua modules and define global settings.

**2. lua/username/core**:
- This folder is for core configuration files (e.g., key mappings, options, autocommands).

3. **lua/username/plugins**:
- This folder is for plugin-specific configuration files.

4. **plugin**:
- This is used by Neovim to load custom plugins or runtime configurations.

##### 🎉 Final Check
Once you’ve created the folders and files, the following commands should display your structure:
1. Verify the lua structure:
```sh
tree lua
```

If you don’t have the tree command installed, you can install it using Homebrew:

```sh
brew install tree
```

Expected output:
```sh
lua/
└── username/
    ├── core/
    └── plugins/
```

2. Verify the `plugin` folder and `init.lua` file:
```sh
ls
```

Expected output:
```sh
init.lua  lua  plugin
```




My 
```sh
.
├── init.lua
├── lua
│   └── anita
│       ├── core
│       │   ├── colorscheme.lua
│       │   ├── filetype.lua
│       │   ├── keymaps.lua
│       │   └── options.lua
│       ├── plugins
│       │   ├── autopairs.lua
│       │   ├── comment.lua
│       │   ├── gitsigns.lua
│       │   ├── lsp
│       │   │   ├── lspconfig.lua
│       │   │   ├── lspsaga.lua
│       │   │   ├── mason.lua
│       │   │   └── null-ls.lua
│       │   ├── lualine.lua
│       │   ├── nvim-cmp.lua
│       │   ├── nvim-tree.lua
│       │   ├── telescope.lua
│       │   └── treesitter.lua
│       └── plugins-setup.lua
├── pack
│   └── nvim
│       └── start
│           └── nvim-lspconfig
└── plugin
    └── packer_compiled.lua

```







---
