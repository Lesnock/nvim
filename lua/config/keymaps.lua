-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<cr>", "zz", { desc = "Centralize Window" })
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Quit Terminal Mode" })
