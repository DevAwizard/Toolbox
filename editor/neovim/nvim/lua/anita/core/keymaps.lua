-- Set leader key to space
vim.g.mapleader = " " 

-- Use a local variable for conciseness
local keymap = vim.keymap -- for conciseness

-- General keymaps
-- Exit insert mode by pressing "jk" quickly
keymap.set("i", "jk", "<ESC>")

-- Clear search highlights with leader + nh
keymap.set("n", "<leader>nh", ":nohl<CR>")


-- Delete a character without copying it to the clipboard
keymap.set("n", "x", '"_x')

-- Increment numbers with leader + +
keymap.set("n", "<leader>+", "<C-a>") -- increment numbers normal mode

-- Decrement numbers with leader + -

keymap.set("n", "<leader>-", "<C-x>") -- decrement numbers normal mode

-- Split window vertically with leader + sv
keymap.set("n", "<leader>sv", "<C-w>v") -- split windows vertically
-- Split window horizontally with leader + sh
keymap.set("n", "<leader>sh", "<C-w>s") -- split windows horizontally
-- Make all split windows equal width and height with leader + se
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
-- Close the current split window with leader + sx
keymap.set("n", "<leader>sx", "<:close<CR>") -- close current split windox


-- Tab management keymaps
-- Open a new tab with leader + to
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- Close the current tab with leader + tx
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- Go to the next tab with leader + tn
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to the next tab
-- Go to the previous tab with leader + tp
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to the previous tab


-- plugin keymaps

-- vim-maximazer
-- Toggle window maximization with leader + sm (requires vim-maximizer plugin)
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
-- Toggle file explorer with leader + e
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


-- Telescope key mappings
-- Keymaps to enhance searching and navigation using Telescope

-- Find files in the current working directory
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
-- Shortcut: <leader>ff
-- <cmd>Telescope find_files<cr> opens Telescope's file finder.
-- Example: Use this to search for files by name.

-- Search for text in the current working directory using live grep
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
-- Shortcut: <leader>fs
-- <cmd>Telescope live_grep<cr> opens Telescope's live grep functionality.
-- Example: Search for a keyword or text pattern across multiple files.

-- Search for the string under the cursor in the current working directory
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
-- Shortcut: <leader>fc
-- <cmd>Telescope grep_string<cr> searches for the word or string currently under the cursor.
-- Example: Highlight a word and press <leader>fc to find its occurrences in the project.

-- List open buffers and switch between them
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
-- Shortcut: <leader>fb
-- <cmd>Telescope buffers<cr> lists all currently open buffers in Neovim.
-- Example: Quickly switch between open files.

-- Search and browse Neovim's help documentation
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
-- Shortcut: <leader>fh
-- <cmd>Telescope help_tags<cr> opens Telescope's help tags picker.
-- Example: Use this to quickly search through Neovim's help documentation by topic.
-- Tip: Type a keyword (e.g., "options") to view related help topics.

