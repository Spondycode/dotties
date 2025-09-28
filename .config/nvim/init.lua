-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- from Perplexity to se the moving lines up or down in the visual mo

vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
