local autopairs_setup, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_setup then
  return
end

autopairs.setup({
  check_ts = true, -- enable treesitter
  ts_config = {
    lua = { "string" }, -- dont add pairs in lua string treesitter nodes
    javascript = { "template_string" }, -- dont add pairs in javscript template string
    java = false, -- dont check treesitter on java
  },
})


local cmp_autopairs_setup, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_setup then
  return
end

-- import nvim-cmp plugin safely (completions plugin)
local cmp_setup, cmp = pcall (require, "cmp")
if not cmp_setup then
  return
end

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done)
