return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    -- Set the lualine theme
    opts.options = {
      theme = "auto", -- or your preferred theme
      section_separators = { left = "", right = "" },
    }

    -- opts.sections = {
    --   lualine_a = { "mode" },
    --   lualine_b = { "branch", "diff" },
    --   lualine_c = { { "filename", path = 1 } },
    --   lualine_x = {
    --     "encoding",
    --     "fileformat",
    --     "filetype",
    --   },
    --   lualine_y = { "progress" },
    --   lualine_z = { "location" },
    -- }
  end
}
