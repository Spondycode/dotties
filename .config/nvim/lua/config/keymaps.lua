-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- local keymap = vim.keymap
-- local opts = { noremap = true, silent = true }
--
-- keymap.set("n", "x", '" _x')
--
-- keymap.set("n", "<Leaderkey>w", "update<Return>", opts)
-- keymap.set("n", "<Leaderkey>q", "update<Return>", opts)
-- keymap.set("n", "<Leaderkey>Q", "qa<Return>", opts)

-- From Devops on  Youtube
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")
