-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jk", "<esc>", { desc = "Easily exit insert mode", silent = true })
map("n", ";", ":", { desc = "Easily enter command mode", silent = false })
map("n", "H", "^", { desc = "Jump to start of line", silent = true })
map("n", "L", "$", { desc = "Jump to end of line", silent = true })
