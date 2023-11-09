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
vim.keymap.set("n", "<C-w>s", ":split<Enter><C-w>J:Neotree float focus<cr>")
vim.keymap.set("n", "<C-w>v", ":vsplit<Enter><C-w>L:Neotree float focus<cr>")
vim.keymap.set("n", "<C-w>S", ":split ")
vim.keymap.set("n", "<C-w>V", ":vsplit ")
vim.keymap.set("n", "<C-l>", "<C-w>w")

-- Window tabs
vim.keymap.set("n", "<C-w>i", ":tabnew ~/.config/nvim<cr>:Neotree<cr>")
vim.keymap.set("n", "<C-w>c", ":tabclose<cr>")
vim.keymap.set("n", "<C-w>t", ":tabnew<cr>:Neotree float focus<cr>")
-- Moving to window tabs
vim.keymap.set("n", "<Tab>", "gt")
vim.keymap.set("n", "C-<Tab>", "gT")

-- Autocomplite path
vim.keymap.set("i", "<F1>", "<C-x><C-f>")

-- Mouse

local function mouseToggle()
    if vim.opt.mouse == true then
        vim.cmd([[set mouse=]])
    else
        vim.cmd([[set mouse=a]])
    end
end

vim.keymap.set("n", "<leader>mn", ":set mouse=a<cr>", {silent = true})
vim.keymap.set("n", "<leader>mf", ":set mouse=<cr>", {silent = true})


