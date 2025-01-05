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

- Plugin Support: Many Neovim plugins, such as nvim-treesitter and Telescope, require Node.js for additional functionality.
- Language Server Protocols (LSP): Install and configure LSP servers for languages like JavaScript, TypeScript, etc.

Optional: Update npm

Sometimes, the npm version installed with Node.js might be outdated. To update npm to the latest version, run:
```sh
npm install -g npm
```

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
│               ├── CONTRIBUTING.md
│               ├── LICENSE.md
│               ├── Makefile
│               ├── README.md
│               ├── doc
│               │   ├── configs.md
│               │   ├── configs.txt
│               │   ├── lspconfig.txt
│               │   ├── server_configurations.md
│               │   └── server_configurations.txt
│               ├── flake.lock
│               ├── flake.nix
│               ├── lua
│               │   ├── lspconfig
│               │   │   ├── async.lua
│               │   │   ├── configs
│               │   │   │   ├── ada_ls.lua
│               │   │   │   ├── agda_ls.lua
│               │   │   │   ├── aiken.lua
│               │   │   │   ├── anakin_language_server.lua
│               │   │   │   ├── angularls.lua
│               │   │   │   ├── ansiblels.lua
│               │   │   │   ├── antlersls.lua
│               │   │   │   ├── apex_ls.lua
│               │   │   │   ├── arduino_language_server.lua
│               │   │   │   ├── asm_lsp.lua
│               │   │   │   ├── ast_grep.lua
│               │   │   │   ├── astro.lua
│               │   │   │   ├── autohotkey_lsp.lua
│               │   │   │   ├── autotools_ls.lua
│               │   │   │   ├── awk_ls.lua
│               │   │   │   ├── azure_pipelines_ls.lua
│               │   │   │   ├── bacon_ls.lua
│               │   │   │   ├── ballerina.lua
│               │   │   │   ├── basedpyright.lua
│               │   │   │   ├── bashls.lua
│               │   │   │   ├── basics_ls.lua
│               │   │   │   ├── bazelrc_lsp.lua
│               │   │   │   ├── beancount.lua
│               │   │   │   ├── bicep.lua
│               │   │   │   ├── biome.lua
│               │   │   │   ├── bitbake_language_server.lua
│               │   │   │   ├── bitbake_ls.lua
│               │   │   │   ├── blueprint_ls.lua
│               │   │   │   ├── bqnlsp.lua
│               │   │   │   ├── bright_script.lua
│               │   │   │   ├── bsl_ls.lua
│               │   │   │   ├── buck2.lua
│               │   │   │   ├── buddy_ls.lua
│               │   │   │   ├── buf_ls.lua
│               │   │   │   ├── bufls.lua
│               │   │   │   ├── bzl.lua
│               │   │   │   ├── c3_lsp.lua
│               │   │   │   ├── cadence.lua
│               │   │   │   ├── cairo_ls.lua
│               │   │   │   ├── ccls.lua
│               │   │   │   ├── cds_lsp.lua
│               │   │   │   ├── circom-lsp.lua
│               │   │   │   ├── clangd.lua
│               │   │   │   ├── clarity_lsp.lua
│               │   │   │   ├── clojure_lsp.lua
│               │   │   │   ├── cmake.lua
│               │   │   │   ├── cobol_ls.lua
│               │   │   │   ├── codeqlls.lua
│               │   │   │   ├── coffeesense.lua
│               │   │   │   ├── contextive.lua
│               │   │   │   ├── coq_lsp.lua
│               │   │   │   ├── crystalline.lua
│               │   │   │   ├── csharp_ls.lua
│               │   │   │   ├── css_variables.lua
│               │   │   │   ├── cssls.lua
│               │   │   │   ├── cssmodules_ls.lua
│               │   │   │   ├── cucumber_language_server.lua
│               │   │   │   ├── cue.lua
│               │   │   │   ├── custom_elements_ls.lua
│               │   │   │   ├── cypher_ls.lua
│               │   │   │   ├── daedalus_ls.lua
│               │   │   │   ├── dafny.lua
│               │   │   │   ├── dagger.lua
│               │   │   │   ├── dartls.lua
│               │   │   │   ├── dcmls.lua
│               │   │   │   ├── debputy.lua
│               │   │   │   ├── delphi_ls.lua
│               │   │   │   ├── denols.lua
│               │   │   │   ├── dhall_lsp_server.lua
│               │   │   │   ├── diagnosticls.lua
│               │   │   │   ├── digestif.lua
│               │   │   │   ├── djlsp.lua
│               │   │   │   ├── docker_compose_language_service.lua
│               │   │   │   ├── dockerls.lua
│               │   │   │   ├── dolmenls.lua
│               │   │   │   ├── dotls.lua
│               │   │   │   ├── dprint.lua
│               │   │   │   ├── drools_lsp.lua
│               │   │   │   ├── ds_pinyin_lsp.lua
│               │   │   │   ├── earthlyls.lua
│               │   │   │   ├── ecsact.lua
│               │   │   │   ├── efm.lua
│               │   │   │   ├── elixirls.lua
│               │   │   │   ├── elmls.lua
│               │   │   │   ├── elp.lua
│               │   │   │   ├── ember.lua
│               │   │   │   ├── emmet_language_server.lua
│               │   │   │   ├── emmet_ls.lua
│               │   │   │   ├── erg_language_server.lua
│               │   │   │   ├── erlangls.lua
│               │   │   │   ├── esbonio.lua
│               │   │   │   ├── eslint.lua
│               │   │   │   ├── facility_language_server.lua
│               │   │   │   ├── fennel_language_server.lua
│               │   │   │   ├── fennel_ls.lua
│               │   │   │   ├── fish_lsp.lua
│               │   │   │   ├── flow.lua
│               │   │   │   ├── flux_lsp.lua
│               │   │   │   ├── foam_ls.lua
│               │   │   │   ├── fortls.lua
│               │   │   │   ├── fsautocomplete.lua
│               │   │   │   ├── fsharp_language_server.lua
│               │   │   │   ├── fstar.lua
│               │   │   │   ├── futhark_lsp.lua
│               │   │   │   ├── gdscript.lua
│               │   │   │   ├── gdshader_lsp.lua
│               │   │   │   ├── ghcide.lua
│               │   │   │   ├── ghdl_ls.lua
│               │   │   │   ├── ginko_ls.lua
│               │   │   │   ├── gitlab_ci_ls.lua
│               │   │   │   ├── glasgow.lua
│               │   │   │   ├── gleam.lua
│               │   │   │   ├── glint.lua
│               │   │   │   ├── glsl_analyzer.lua
│               │   │   │   ├── glslls.lua
│               │   │   │   ├── golangci_lint_ls.lua
│               │   │   │   ├── gopls.lua
│               │   │   │   ├── gradle_ls.lua
│               │   │   │   ├── grammarly.lua
│               │   │   │   ├── graphql.lua
│               │   │   │   ├── groovyls.lua
│               │   │   │   ├── guile_ls.lua
│               │   │   │   ├── harper_ls.lua
│               │   │   │   ├── haxe_language_server.lua
│               │   │   │   ├── hdl_checker.lua
│               │   │   │   ├── helm_ls.lua
│               │   │   │   ├── hhvm.lua
│               │   │   │   ├── hie.lua
│               │   │   │   ├── hlasm.lua
│               │   │   │   ├── hls.lua
│               │   │   │   ├── hoon_ls.lua
│               │   │   │   ├── html.lua
│               │   │   │   ├── htmx.lua
│               │   │   │   ├── hydra_lsp.lua
│               │   │   │   ├── hyprls.lua
│               │   │   │   ├── idris2_lsp.lua
│               │   │   │   ├── intelephense.lua
│               │   │   │   ├── janet_lsp.lua
│               │   │   │   ├── java_language_server.lua
│               │   │   │   ├── jdtls.lua
│               │   │   │   ├── jedi_language_server.lua
│               │   │   │   ├── jinja_lsp.lua
│               │   │   │   ├── jqls.lua
│               │   │   │   ├── jsonls.lua
│               │   │   │   ├── jsonnet_ls.lua
│               │   │   │   ├── julials.lua
│               │   │   │   ├── kcl.lua
│               │   │   │   ├── koka.lua
│               │   │   │   ├── kotlin_language_server.lua
│               │   │   │   ├── kulala_ls.lua
│               │   │   │   ├── lean3ls.lua
│               │   │   │   ├── leanls.lua
│               │   │   │   ├── lelwel_ls.lua
│               │   │   │   ├── lemminx.lua
│               │   │   │   ├── lexical.lua
│               │   │   │   ├── lsp_ai.lua
│               │   │   │   ├── ltex.lua
│               │   │   │   ├── ltex_plus.lua
│               │   │   │   ├── lua_ls.lua
│               │   │   │   ├── luau_lsp.lua
│               │   │   │   ├── lwc_ls.lua
│               │   │   │   ├── m68k.lua
│               │   │   │   ├── markdown_oxide.lua
│               │   │   │   ├── marko-js.lua
│               │   │   │   ├── marksman.lua
│               │   │   │   ├── matlab_ls.lua
│               │   │   │   ├── mdx_analyzer.lua
│               │   │   │   ├── mesonlsp.lua
│               │   │   │   ├── metals.lua
│               │   │   │   ├── millet.lua
│               │   │   │   ├── mint.lua
│               │   │   │   ├── mlir_lsp_server.lua
│               │   │   │   ├── mlir_pdll_lsp_server.lua
│               │   │   │   ├── mm0_ls.lua
│               │   │   │   ├── mojo.lua
│               │   │   │   ├── motoko_lsp.lua
│               │   │   │   ├── move_analyzer.lua
│               │   │   │   ├── msbuild_project_tools_server.lua
│               │   │   │   ├── mutt_ls.lua
│               │   │   │   ├── nelua_lsp.lua
│               │   │   │   ├── neocmake.lua
│               │   │   │   ├── nextflow_ls.lua
│               │   │   │   ├── nextls.lua
│               │   │   │   ├── nginx_language_server.lua
│               │   │   │   ├── nickel_ls.lua
│               │   │   │   ├── nil_ls.lua
│               │   │   │   ├── nim_langserver.lua
│               │   │   │   ├── nimls.lua
│               │   │   │   ├── nixd.lua
│               │   │   │   ├── nomad_lsp.lua
│               │   │   │   ├── ntt.lua
│               │   │   │   ├── nushell.lua
│               │   │   │   ├── nxls.lua
│               │   │   │   ├── ocamlls.lua
│               │   │   │   ├── ocamllsp.lua
│               │   │   │   ├── ols.lua
│               │   │   │   ├── omnisharp.lua
│               │   │   │   ├── opencl_ls.lua
│               │   │   │   ├── openedge_ls.lua
│               │   │   │   ├── openscad_ls.lua
│               │   │   │   ├── openscad_lsp.lua
│               │   │   │   ├── pact_ls.lua
│               │   │   │   ├── pasls.lua
│               │   │   │   ├── pbls.lua
│               │   │   │   ├── perlls.lua
│               │   │   │   ├── perlnavigator.lua
│               │   │   │   ├── perlpls.lua
│               │   │   │   ├── pest_ls.lua
│               │   │   │   ├── phan.lua
│               │   │   │   ├── phpactor.lua
│               │   │   │   ├── pico8_ls.lua
│               │   │   │   ├── pkgbuild_language_server.lua
│               │   │   │   ├── please.lua
│               │   │   │   ├── poryscript_pls.lua
│               │   │   │   ├── postgres_lsp.lua
│               │   │   │   ├── powershell_es.lua
│               │   │   │   ├── prismals.lua
│               │   │   │   ├── prolog_ls.lua
│               │   │   │   ├── prosemd_lsp.lua
│               │   │   │   ├── protols.lua
│               │   │   │   ├── psalm.lua
│               │   │   │   ├── pug.lua
│               │   │   │   ├── puppet.lua
│               │   │   │   ├── purescriptls.lua
│               │   │   │   ├── pylsp.lua
│               │   │   │   ├── pylyzer.lua
│               │   │   │   ├── pyre.lua
│               │   │   │   ├── pyright.lua
│               │   │   │   ├── qml_lsp.lua
│               │   │   │   ├── qmlls.lua
│               │   │   │   ├── quick_lint_js.lua
│               │   │   │   ├── r_language_server.lua
│               │   │   │   ├── racket_langserver.lua
│               │   │   │   ├── raku_navigator.lua
│               │   │   │   ├── reason_ls.lua
│               │   │   │   ├── regal.lua
│               │   │   │   ├── regols.lua
│               │   │   │   ├── relay_lsp.lua
│               │   │   │   ├── remark_ls.lua
│               │   │   │   ├── rescriptls.lua
│               │   │   │   ├── rls.lua
│               │   │   │   ├── rnix.lua
│               │   │   │   ├── robotcode.lua
│               │   │   │   ├── robotframework_ls.lua
│               │   │   │   ├── roc_ls.lua
│               │   │   │   ├── rome.lua
│               │   │   │   ├── rubocop.lua
│               │   │   │   ├── ruby_lsp.lua
│               │   │   │   ├── ruff.lua
│               │   │   │   ├── ruff_lsp.lua
│               │   │   │   ├── rune_languageserver.lua
│               │   │   │   ├── rust_analyzer.lua
│               │   │   │   ├── salt_ls.lua
│               │   │   │   ├── scheme_langserver.lua
│               │   │   │   ├── scry.lua
│               │   │   │   ├── serve_d.lua
│               │   │   │   ├── shopify_theme_ls.lua
│               │   │   │   ├── sixtyfps.lua
│               │   │   │   ├── slangd.lua
│               │   │   │   ├── slint_lsp.lua
│               │   │   │   ├── smarty_ls.lua
│               │   │   │   ├── smithy_ls.lua
│               │   │   │   ├── snakeskin_ls.lua
│               │   │   │   ├── snyk_ls.lua
│               │   │   │   ├── solang.lua
│               │   │   │   ├── solargraph.lua
│               │   │   │   ├── solc.lua
│               │   │   │   ├── solidity.lua
│               │   │   │   ├── solidity_ls.lua
│               │   │   │   ├── solidity_ls_nomicfoundation.lua
│               │   │   │   ├── somesass_ls.lua
│               │   │   │   ├── sorbet.lua
│               │   │   │   ├── sourcekit.lua
│               │   │   │   ├── sourcery.lua
│               │   │   │   ├── spectral.lua
│               │   │   │   ├── spyglassmc_language_server.lua
│               │   │   │   ├── sqlls.lua
│               │   │   │   ├── sqls.lua
│               │   │   │   ├── standardrb.lua
│               │   │   │   ├── starlark_rust.lua
│               │   │   │   ├── starpls.lua
│               │   │   │   ├── statix.lua
│               │   │   │   ├── steep.lua
│               │   │   │   ├── stimulus_ls.lua
│               │   │   │   ├── stylelint_lsp.lua
│               │   │   │   ├── superhtml.lua
│               │   │   │   ├── svelte.lua
│               │   │   │   ├── svlangserver.lua
│               │   │   │   ├── svls.lua
│               │   │   │   ├── swift_mesonls.lua
│               │   │   │   ├── syntax_tree.lua
│               │   │   │   ├── tabby_ml.lua
│               │   │   │   ├── tailwindcss.lua
│               │   │   │   ├── taplo.lua
│               │   │   │   ├── tblgen_lsp_server.lua
│               │   │   │   ├── teal_ls.lua
│               │   │   │   ├── templ.lua
│               │   │   │   ├── terraform_lsp.lua
│               │   │   │   ├── terraformls.lua
│               │   │   │   ├── texlab.lua
│               │   │   │   ├── textlsp.lua
│               │   │   │   ├── tflint.lua
│               │   │   │   ├── theme_check.lua
│               │   │   │   ├── thriftls.lua
│               │   │   │   ├── tilt_ls.lua
│               │   │   │   ├── tinymist.lua
│               │   │   │   ├── ts_ls.lua
│               │   │   │   ├── ts_query_ls.lua
│               │   │   │   ├── tsp_server.lua
│               │   │   │   ├── ttags.lua
│               │   │   │   ├── turtle_ls.lua
│               │   │   │   ├── tvm_ffi_navigator.lua
│               │   │   │   ├── twiggy_language_server.lua
│               │   │   │   ├── typeprof.lua
│               │   │   │   ├── typos_lsp.lua
│               │   │   │   ├── typst_lsp.lua
│               │   │   │   ├── uiua.lua
│               │   │   │   ├── ungrammar_languageserver.lua
│               │   │   │   ├── unison.lua
│               │   │   │   ├── unocss.lua
│               │   │   │   ├── uvls.lua
│               │   │   │   ├── v_analyzer.lua
│               │   │   │   ├── vacuum.lua
│               │   │   │   ├── vala_ls.lua
│               │   │   │   ├── vale_ls.lua
│               │   │   │   ├── vdmj.lua
│               │   │   │   ├── verible.lua
│               │   │   │   ├── veridian.lua
│               │   │   │   ├── veryl_ls.lua
│               │   │   │   ├── vhdl_ls.lua
│               │   │   │   ├── vimls.lua
│               │   │   │   ├── visualforce_ls.lua
│               │   │   │   ├── vls.lua
│               │   │   │   ├── volar.lua
│               │   │   │   ├── vscoqtop.lua
│               │   │   │   ├── vtsls.lua
│               │   │   │   ├── vuels.lua
│               │   │   │   ├── wgsl_analyzer.lua
│               │   │   │   ├── yamlls.lua
│               │   │   │   ├── yang_lsp.lua
│               │   │   │   ├── yls.lua
│               │   │   │   ├── ziggy.lua
│               │   │   │   ├── ziggy_schema.lua
│               │   │   │   ├── zk.lua
│               │   │   │   └── zls.lua
│               │   │   ├── configs.lua
│               │   │   ├── health.lua
│               │   │   ├── manager.lua
│               │   │   ├── ui
│               │   │   │   └── windows.lua
│               │   │   └── util.lua
│               │   └── lspconfig.lua
│               ├── neovim.yml
│               ├── nvim-lspconfig-scm-1.rockspec
│               ├── plugin
│               │   └── lspconfig.lua
│               ├── scripts
│               │   ├── docgen.lua
│               │   ├── docgen.sh
│               │   └── docs_template.md
│               ├── selene.toml
│               └── test
│                   ├── lspconfig_spec.lua
│                   └── test_dir
│                       ├── a
│                       │   └── a_marker.txt
│                       └── root_marker.txt
└── plugin
    └── packer_compiled.lua

```







---
