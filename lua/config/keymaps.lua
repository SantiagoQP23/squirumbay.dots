-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Show diagnostic in a floating window
map("n", "<leader>de", vim.diagnostic.open_float, opts)

-- Hover info (LSP documentation)
map("n", "K", vim.lsp.buf.hover, opts)
