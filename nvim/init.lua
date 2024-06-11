-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local vim = vim

vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true

local Plug = vim.fn["plug#"]

vim.call("plug#begin")

Plug("Mofiqul/vscode.nvim")
Plug("mg979/vim-visual-multi")
vim.call("plug#end")
vim.cmd("colorscheme vscode")
vim.keymap.set("n", "<C>h", "")
vim.keymap.set("n", "<C>l", "")
vim.keymap.set("n", "<F3>", "<cmd>Neotree toggle<cr>")
vim.keymap.set("n", "<F12>", "<cmd>Dashboard<cr>")
vim.keymap.set("n", "<tab><Right>", "<cmd>1bnext<cr>")
vim.keymap.set("n", "<tab><Left>", "<cmd>1bprev<cr>")
vim.g.lazyvim_prettier_needs_config = false
