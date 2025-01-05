-- Attempt to load the nvim-tree plugin
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  -- If the plugin is not installed, safely exit
  return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrWplugin = 1

-- Customize the color of indentation markers in nvim-tree
-- The highlight group `NvimTreeIndentMarker` controls the vertical lines in the tree.
-- `guifg` sets the foreground color (text or line color) for GUI environments.
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- Configure nvim-tree with custom settings
nvimtree.setup({
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "󰜴", -- arrow when folder is closed
          arrow_open = "󰜮", -- arrow when folder is open
        },
      },
    },
  },
})

-- Key Points:
-- 1. The `pcall` ensures Neovim won't throw an error if `nvim-tree` is not installed.
-- 2. `vim.g.loaded` and `vim.g.loaded_netrwPlugin` disable NetRW.
-- 3. Arrows are customized for folder states using Unicode characters.
--    - You can replace `→` and `↓` with other symbols like `➔`, `⇢`, or Nerd Font icons.
-- 4. Save this file in your plugins folder and reload Neovim to apply changes.

-- To test:
-- - Open Neovim and toggle nvim-tree with `:NvimTreeToggle`.
-- - Check if the arrows are displayed for folders.

