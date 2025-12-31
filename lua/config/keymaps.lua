-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- jk to exit insert mode
vim.keymap.set("i", "jk", "<esc>", { desc = "Exit insert mode" })

-- jk to exit terminal mode
vim.keymap.set("t", "jk", "<C-\\><C-n>", { desc = "Exit terminal mode" })
