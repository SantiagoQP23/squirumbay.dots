-- plugins/conform.lua
return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" }, -- You can set this to format on save
  cmd = { "ConformInfo" },
  -- THIS IS THE MISSING PART: THE CONFIGURATION BLOCK
  config = function()
    require("conform").setup({
      -- Define your formatters by filetype here
      formatters_by_ft = {
        -- Example for Lua:
        lua = { "stylua" },


        -- Example for JavaScript/TypeScript/HTML/CSS (Prettier supports range formatting):
        javascript = { "prettier" },
        typescript = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        markdown = { "prettier" },

        -- Example for Go (GoFmt/GoImports *do not* support range formatting):
        go = { "goimports" },

      },

    })
  end,
}
