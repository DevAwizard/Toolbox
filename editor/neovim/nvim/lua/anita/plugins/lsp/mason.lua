
local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

local mason_lspconfig_status,mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end


mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    "html",         -- HTML LSP
    "cssls",        -- CSS LSP
    "clangd",       -- C/C++ LSP
    "bashls",       -- Bash LSP
    "marksman",     -- Markdown LSP
    "tailwindcss",  -- Tailwind CSS LSP
    "lua_ls",       -- Lua LSP
    "pyright",      -- Python LSP
    "ts_ls",        -- TypeScript LSP
  },
})


mason_null_ls.setup({
  ensure_installed = {
    "prettier",     -- Code formatter for JavaScript/TypeScript
    "stylua",       -- Lua formatter
    "eslint_d",     -- JavaScript/TypeScript linter
    "clang_check",  -- Static analysis for C/C++
    "cppcheck",     -- Additional C/C++ analysis
    "djlint",       -- Django template linter/formatter
    "gccdiag",      -- GCC diagnostics for C/C++
    "pylint",       -- Python linter
    "textlint",     -- Text/Markdown linter
    "tidy",         -- HTML/XML formatter
  },
})


