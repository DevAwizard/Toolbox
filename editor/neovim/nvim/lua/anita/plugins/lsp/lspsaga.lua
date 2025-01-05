local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
  return
end

saga.setup({
  -- Keybinds for navigation in lspsaga windows
  scroll_preview = { scroll_down = "<C-d>", scroll_up = "<C-u>" },

  -- Finder configuration
  finder = {
    keys = {
      jump_to = "p", -- Jump to definition
      edit = "<CR>", -- Open the file
      vsplit = "v",  -- Open in vertical split
      split = "s",   -- Open in horizontal split
      tabe = "t",    -- Open in a new tab
      quit = { "q", "<ESC>" }, -- Quit the finder
    },
  },

  -- UI customization
  ui = {
    colors = {
      normal_bg = "#022746",
    },
  },
})

