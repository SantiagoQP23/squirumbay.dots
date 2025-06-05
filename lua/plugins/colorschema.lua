return {
  -- {
  --   {
  --     "xiyaowong/transparent.nvim",
  --     config = function()
  --       require("transparent").setup({
  --         enable = true,   -- boolean: enable transparent
  --         extra_groups = { -- table/string: additional groups that should be cleared
  --           "Normal",
  --           "NormalNC",
  --           "Comment",
  --           "Constant",
  --           "Special",
  --           "Identifier",
  --           "Statement",
  --           "PreProc",
  --           "Type",
  --           "Underlined",
  --           "Todo",
  --           "String",
  --           "Function",
  --           "Conditional",
  --           "Repeat",
  --           "Operator",
  --           "Structure",
  --           "LineNr",
  --           "NonText",
  --           "SignColumn",
  --           "CursorLineNr",
  --           "EndOfBuffer",
  --         },
  --         exclude = {},              -- table: groups you don't want to clear
  --       })
  --       vim.cmd("TransparentEnable") -- execute the command to enable transparency
  --     end,
  --   },
  --   { "rktjmp/lush.nvim" },
  --   "anAcc22/sakura.nvim",
  --   config = function()
  --     vim.opt.background = "dark"
  --     vim.cmd("colorscheme sakura")
  --   end,
  -- },
  {
    -- Plugin for the Catppuccin color scheme
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,                     -- Load this plugin immediately
    opts = {
      transparent_background = false, -- Enable transparent background
      flavour = "frappe",             -- Set the flavor of the color scheme
      background = {                  -- :h background
        light = "frappe",
        dark = "mocha",
      },
    },
    integrations = {
      cmp = true,               -- Enable integration with nvim-cmp
      gitsigns = true,          -- Enable integration with gitsigns
      nvimtree = true,          -- Enable integration with nvim-tree
      treesitter = true,        -- Enable integration with treesitter
      notify = false,           -- Disable integration with nvim-notify
      mini = {
        enabled = true,         -- Enable mini plugin integration
        indentscope_color = "", -- Set indentscope color (empty means default)
      },
      -- Additional plugin integrations can be found in the documentation
    },
  },
  {
    -- Plugin for the Modus Themes
    "miikanissi/modus-themes.nvim",
    name = "modus",
    priority = 1000, -- High priority to ensure it loads early
  },
  {
    -- Plugin for the Kanagawa color scheme
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,       -- High priority to ensure it loads early
    opts = {
      transparent = false, -- Enable transparent background
      theme = "dragon",    -- Set the theme variant to 'dragon'
      overrides = function(colors)
        local theme = colors.theme
        return {
          NormalFloat = { bg = "none" },                                -- Transparent background for floating windows
          FloatBorder = { bg = "none" },                                -- Transparent background for floating window borders
          FloatTitle = { bg = "none" },                                 -- Transparent background for floating window titles

          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },   -- Custom colors for dark mode

          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },   -- Custom colors for Lazy plugin
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },  -- Custom colors for Mason plugin

          FzfLuaNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 }, -- Custom colors for FzfLua normal
          FzfLuaBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },  -- Custom colors for FzfLua border
          FzfLuaTitle = { fg = theme.ui.special, bold = true },         -- Custom colors for FzfLua title

          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },        -- Custom colors for popup menu
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },              -- Custom colors for selected item in popup menu
          PmenuSbar = { bg = theme.ui.bg_m1 },                          -- Custom colors for popup menu scrollbar
          PmenuThumb = { bg = theme.ui.bg_p2 },                         -- Custom colors for popup menu thumb
        }
      end,
    },
  },
  -- Plugin for the Oxocarbon color scheme
  -- { "nyoom-engineering/oxocarbon.nvim", name = "oxocarbon" },
  -- Plugin for the Lush color scheme with a dependency on Zenbones
  -- { "rktjmp/lush.nvim", dependencies = { "mcchrish/zenbones.nvim" } },
  -- {
  --   -- Plugin for the Cyberdream color scheme
  --   "scottmckendry/cyberdream.nvim",
  --   lazy = false, -- Load this plugin immediately
  --   priority = 1000, -- High priority to ensure it loads early
  -- },
  -- Plugin for the Doom One color scheme
  -- { "NTBBloodbath/doom-one.nvim", name = "doom-one" },
  -- Plugin for the Aylin color scheme
  -- { "AhmedAbdulrahman/aylin.vim", name = "aylin" },
  -- {
  --   -- Plugin for enabling transparency
  --   "xiyaowong/transparent.nvim",
  -- },
  -- {
  --   -- Plugin for the Bamboo color scheme
  --   "ribru17/bamboo.nvim",
  --   lazy = false, -- Load this plugin immediately
  -- },
  -- {
  -- Plugin for the Everforest color scheme
  {
    "neanias/everforest-nvim",
    version = false, -- Use the latest version
    lazy = false,    -- Load this plugin immediately
    config = function()
      require("everforest").setup({
        background = "hard", -- Set the background to 'hard'
        -- italis = true,                        -- Enable italics
        -- transparent_background_level = 1,     -- Uncomment to enable transparency
        -- diagnostic_text_highlight = true,     -- Enable diagnostic text highlight
        -- diagnostic_virtual_text = "coloured", -- Set diagnostic virtual text to colored
        -- colours_override = function(palette)
        --   palette.bg0 = "#1A1A22"             -- Override background color
        -- end,
      })
    end,
  },
  -- {
  --   -- Plugin for the Oldworld color scheme
  --   "dgox16/oldworld.nvim",
  --   lazy = false, -- Load this plugin immediately
  --   priority = 1000, -- High priority to ensure it loads early
  -- },
  -- Plugin for the Rose Pine color scheme
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     bold = true,
  --     italic = true,
  --     transparent = true,
  --   },
  -- },
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   opts = {
  --     variant = "moon", -- Set the variant to 'moon'
  --     styles = {
  --       bold = true,
  --       italic = true,
  --       transparency = true,
  --     },
  --   },
  -- },
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "oled",
    },
  },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    lazy = true,
    config = function()
      require("kanagawa").setup({
        compile = false,  -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,   -- do not set background color
        dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = {             -- add/modify theme and palette colors
          palette = {},
          theme = {
            wave = {},
            lotus = {},
            dragon = {},
            all = {
              ui = {
                bg_gutter = "none",  -- set bg color for normal background
                bg_sidebar = "none", -- set bg color for sidebar like nvim-tree
                bg_float = "none",   -- set bg color for floating windows
              },
            },
          },
        },
        overrides = function(colors) -- add/modify highlights
          return {
            LineNr = { bg = "none" },
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },
            TelescopeNormal = { bg = "none" },
            TelescopeBorder = { bg = "none" },
            LspInfoBorder = { bg = "none" },
          }
        end,
        theme = "wave",  -- Load "wave" theme
        background = {   -- map the value of 'background' option to a theme
          dark = "wave", -- try "dragon" !
          light = "lotus",
        },
      })
    end,
  },
  {
    -- LazyVim configuration
    "LazyVim/LazyVim",
    opts = {
      -- Set the default color scheme
      colorscheme = "catppuccin",
    },
  },
}
