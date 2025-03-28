-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local vim = vim

vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.autochdir = true

local Plug = vim.fn["plug#"]

vim.call("plug#begin")
Plug("Mofiqul/vscode.nvim")
vim.call("plug#end")
vim.cmd("colorscheme vscode")

-- Custom Keymaps
vim.keymap.set("n", "<C>h", "")
vim.keymap.set("n", "<C>l", "")
vim.keymap.set("n", "<F3>", "<cmd>Neotree toggle<cr>")
vim.keymap.set("n", "<F12>", "<cmd>lua Snacks.dashboard()<cr>")
vim.keymap.set("n", "<tab><Right>", "<cmd>1bnext<cr>")
vim.keymap.set("n", "<tab><Left>", "<cmd>1bprev<cr>")
vim.keymap.set("n", "<tab>,", "<C-W>h")
vim.keymap.set("n", "<tab>.", "<C-W>l")
-- vim.keymap.set("i", "<C-h>", "<C-W>")

-- Extra Config
--vim.g.lazyvim_prettier_needs_config = false
--vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--  pattern = { "*" },
--  command = [[%s/\s\+$//e]],
--})

-- Custom Commands
vim.api.nvim_create_user_command("Livegrep", "Telescope live_grep", {})
