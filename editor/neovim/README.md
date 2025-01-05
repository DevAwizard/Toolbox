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
   - [Step 4: Enable or Install a Coding Font (Optional but Recommended)](#step-4-enable-or-install-a-coding-font-optional-but-Recommended)


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


### 🛠 Step 4: Install or Enable a Coding Font (Optional but Recommended)

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

3. Download the .zip file for your chosen font.

4. Extract the .zip file.

5. Double-click the .ttf files to install them on your system.

6. Setting the Font in Your Terminal
   - Open your terminal preferences (e.g., iTerm2 or Terminal).
   - Navigate to the **Profiles** or **Appearance** section.
   - Change the font to your **installed font** (e.g., “JetBrains Mono Nerd Font”).
Setting the Font in Your Terminal

Whether you used a preinstalled font or manually installed one, follow these steps to apply it in your terminal:
	1.	Open your terminal preferences (e.g., iTerm2 or Terminal).
	2.	Navigate to the Profiles or Appearance section.
	3.	Change the font to your installed font (e.g., JetBrains Mono Nerd Font, MesloLGS NF).










---
