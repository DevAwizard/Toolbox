-- Attempt to load the telescope plugin
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  -- If the plugin is not installed, safely exit
  return
end

-- Attempt to load telescope actions for custom key bindings
local actions_setup, actions = pcall(require, "telescope_actions")
if not actions_setup then
  -- If actions module is not found, safely exit
  return
end

-- Configure telescope with custom settings
telescope.setup({
  defaults = {
    mappings = {
      i = { -- Insert mode keybindings
        ["<C-k>"] = actions.move_selection_previous, -- Move to the previous item
        ["<C-j>"] = actions.move_selection_next, -- Move to the next item
        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- Send selected items to quickfix and open the list
      }
    }
  }
})

-- Load the fzf extension for enhanced fuzzy finding
telescope.load_extension("fzf")

