-- Import Neovim's `vim.opt` for conciseness
local opt = vim.opt

-- Line Numbers
opt.relativenumber = true    -- Enables relative line numbers
opt.number = true            -- Displays the current line number

-- Tabs & Indentation
opt.tabstop = 2              -- Number of spaces for a tab
opt.shiftwidth = 2           -- Number of spaces for indentation
opt.expandtab = true         -- Converts tabs to spaces
opt.autoindent = true        -- Maintains the same indentation level as the previous line

-- Line Wrapping
opt.wrap = false             -- Disables line wrapping

-- Search Settings
opt.ignorecase = true        -- Ignore case when searching
opt.smartcase = true         -- Override `ignorecase` if the search contains uppercase letters

-- Cursor Line
opt.cursorline = true        -- Highlights the current cursor line

-- Appearance
opt.termguicolors = true     -- Enables 24-bit RGB color in the terminal
opt.background = "dark"      -- Sets background theme to dark
opt.signcolumn = "yes"       -- Always shows the sign column (e.g., for diagnostics)

-- Backspace Behavior
opt.backspace = "indent,eol,start" -- Allows backspacing over indentation, line breaks, and insertion start

-- Clipboard
opt.clipboard:append("unnamedplus") -- Use the system clipboard for copy/paste

-- Split Windows
opt.splitright = true        -- Opens vertical splits to the right
opt.splitbelow = true        -- Opens horizontal splits below

-- Additional Keyword Characters
opt.iskeyword:append("-")    -- Treat hyphenated words as a single keyword
