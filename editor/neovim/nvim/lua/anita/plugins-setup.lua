-- Ensure packer is installed
local ensure_packer = function()
  local fn = vim.fn
  -- Define the installation path for packer.nvim
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
 
  -- Check if packer is already installed
  if fn.empty(fn.glob(install_path)) > 0 then
  -- Automatically install packer if it's not already installed
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]] -- Load packer.nvim immediately
    return true -- Indicate that packer was just installed
  end
  return false -- Indicate that packer was already installed
end

-- Flag to determine if packer was installed during this session
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- Autocommand that reloads neovim whenwher you save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerCompile
  augroup end
]])

-- Safely load packer (prevent errors if packer is not available)
local status, packer = pcall(require, "packer")
if not status then
  return
end


-- Add plugins to packer
return packer.startup(function(use)

  -- **Core Plugins**
  -- Plugin manager itself (manages its own updates)
  use("wbthomason/packer.nvim") -- Packer manages itself

  -- lua functions that many plugins use
  use("nvim-lua/plenary.nvim") 

  -- **Appearance Plugins**
  -- Nightfly: A visually pleasing dark colorscheme for Neovim
  use("bluz71/vim-nightfly-guicolors") -- A nice dark colorscheme

  -- **Utility Plugins**
  -- Vim-be-good: A game-like plugin to practice Vim movements
  use("ThePrimeagen/vim-be-good") -- Practice Vim movements
  
  -- Tmux Navigator: Seamlessly navigate between Vim and Tmux panes
  use("christoomey/vim-tmux-navigator")-- Navigate seamlessly between Vim and Tmux splits

  -- Maximizer: Quickly maximize or restore the current window
  use("szw/vim-maximizer") -- maximises and restores current window

  -- **Text Manipulation Plugins**

  -- Surround: Add, delete, and change surrounding characters (e.g., quotes, brackets)
  use("tpope/vim-surround") -- Add, delete, and change surrounding characters (e.g., quotes, parentheses)
  
  -- ReplaceWithRegister: Replace text using the contents of a register
  use("vim-scripts/ReplaceWithRegister") -- Replace text with the contents of a register (useful for quick substitutions)
  
  -- Comment.nvim: Toggle comments easily with gc
  use("numToStr/Comment.nvim")


  -- **File Management Plugins**
  -- Nvim-tree: A fast and customizable file explorer for Neovim
  use("nvim-tree/nvim-tree.lua")

  -- Web devicons: Provides file type icons for Neovim
  use("kyazdani42/nvim-web-devicons")


  -- **Statusline Plugin**

  -- statusline
  use("nvim-lualine/lualine.nvim")

  -- **Search and Navigation Plugins**

  -- Telescope-fzf-native: Improves Telescope's fuzzy search speed (requires build)
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency

  -- Telescope: A powerful fuzzy finder for files, buffers, and more
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })


  -- **Autocompletion Plugins**

  -- Nvim-cmp: A flexible and fast autocompletion plugin
  use("hrsh7th/nvim-cmp")

  -- Cmp-buffer: Autocompletion suggestions from the current buffer
  use("hrsh7th/cmp-buffer")

  -- Cmp-path: Autocompletion suggestions for file paths
  use("hrsh7th/cmp-path")

  -- **Snippets Plugins**

  -- LuaSnip: A powerful snippet engine for Neovim
  use("L3MON4D3/LuaSnip")

  -- Cmp-luasnip: Integrates LuaSnip with nvim-cmp for autocompletion
  use("saadparwaiz1/cmp_luasnip")

  -- Friendly-snippets: A collection of prebuilt snippets for various languages
  use("rafamadriz/friendly-snippets")


  -- Managing & installing lsp server
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")


  -- configuring lsp servers
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use({"glepnir/lspsaga.nvim", branch = "main" })
  use("jose-elias-alvarez/typescript.nvim")
  use("onsails/lspkind.nvim")

  -- formatting and linting
  use("jose-elias-alvarez/null-ls.nvim")
  use("jayp0521/mason-null-ls.nvim")

  --treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update({with_sync = true })
    end,
  })

  -- autoclossing
  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")

  -- git integration
  use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side


  -- Automatically install missing plugins on first run
  if packer_bootstrap then
    require("packer").sync()
  end
end)



