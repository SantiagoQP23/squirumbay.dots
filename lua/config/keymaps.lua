-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Show diagnostic in a floating window
map("n", "<leader>de", vim.diagnostic.open_float, opts)
map('n', '<leader>,', '<cmd>Telescope buffers<CR>', { desc = 'Telescope Buffers', remap = false })
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { desc = 'Telescope Buffers', remap = false })
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = 'Find Files', remap = false })

-- Hover info (LSP documentation)
map("n", "K", vim.lsp.buf.hover, opts)

-- Format selected code using conform.nvim
vim.keymap.set("v", "<leader>cf", function()
  require("conform").format({
    lsp_fallback = true,
    range = {
      ["start"] = vim.api.nvim_buf_get_mark(0, "<"),
      ["end"] = vim.api.nvim_buf_get_mark(0, ">"),
    },
  })
end, { desc = "Format Selection" })
