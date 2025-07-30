-- plugins/conform.lua
return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" }, -- You can set this to format on save
  cmd = { "ConformInfo" },
  -- THIS IS THE MISSING PART: THE CONFIGURATION BLOCK
  opts = {
    format_on_save = false,
  },
}
