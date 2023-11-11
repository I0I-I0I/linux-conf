vim.g.mapleader = ","

-- NeoTree
vim.keymap.set("n", "", ":Neotree toggle float focus<cr>")

-- Tabs
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Turn off search highlight
vim.keymap.set("n", "<leader><space>", ":nohlsearch<cr>")

vim.keymap.set("n", "<F2>", ":set paste<cr>")
vim.keymap.set("n", "<F3>", ":set nopaste<cr>")

-- Folding
vim.keymap.set("n", "<space>", "za")
vim.keymap.set("n", "C-<space>", "zf")

-- Save
vim.cmd("cnoreabbrev save wa<cr>:mksession! session.vim<cr>:qa<cr>")
vim.cmd("cnoreabbrev ss source session.vim<cr>")

-- Split
vim.keymap.set("n", "<C-w>s", ":split<Enter><C-w>J :Telescope find_files<cr>")
vim.keymap.set("n", "<C-w>v", ":vsplit<Enter><C-w>L :Telescope find_files<cr>")
vim.keymap.set("n", "<C-w>S", ":split ")
vim.keymap.set("n", "<C-w>V", ":vsplit ")
-- Moving to tabs
vim.keymap.set("n", "<C-l>", "<C-w>w")
-- Resizing
vim.keymap.set("n", "<C-w>-", ":vertical resize -5<cr>", { silent = true } )
vim.keymap.set("n", "<C-w>+", ":vertical resize +5<cr>", { silent = true } )
-- Window tabs
vim.keymap.set("n", "<C-w>i", ":tabnew ~/.config/nvim<cr>:Neotree<cr>")
vim.keymap.set("n", "<C-w>c", ":tabclose<cr>")
vim.keymap.set("n", "<C-w>tt", ":tabnew<cr>:Telescope find_files<cr>")
vim.keymap.set("n", "<C-w>tn", ":tabnew<cr>:Neotree float focus<cr>")
vim.keymap.set("n", "<C-w>T", ":tabnew ")
-- Moving to window tabs
vim.keymap.set("n", "<Tab>", "gt")
vim.keymap.set("n", "C-<Tab>", "gT")

-- Autocomplite path
vim.keymap.set("i", "<F1>", "<C-x><C-f>")

-- Mouse
vim.keymap.set("n", "<leader>mn", ":set mouse=a<cr>")
vim.keymap.set("n", "<leader>mf", ":set mouse=<cr>")

-- Emmet
vim.keymap.set({ "n", "v" }, '<leader>w', require('nvim-emmet').wrap_with_abbreviation)
