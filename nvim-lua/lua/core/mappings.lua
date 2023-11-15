vim.g.mapleader = ","

-- Move string
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

-- Move screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Puste
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Change
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>//gI<Left><Left><Left>")

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
vim.keymap.set("n", "<C-w>s", ":split<cr><C-w>J")
vim.keymap.set("n", "<C-w>v", ":vsplit<cr><C-w>L")
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
vim.keymap.set("n", "<C-w>t", ":tabnew<cr>:Neotree float focus<cr>")
vim.keymap.set("n", "<C-w>T", ":tabnew ")
-- Moving to window tabs
vim.keymap.set("n", "<Tab>", "gt")
vim.keymap.set("n", "<S-Tab>", "gT")

-- Mouse
vim.keymap.set("n", "<leader>mn", ":set mouse=a<cr>")
vim.keymap.set("n", "<leader>mf", ":set mouse=<cr>")

-- NeoTree
vim.keymap.set("n", "<C-b>", ":Neotree toggle float focus<cr>")

-- Emmet
vim.keymap.set({ "n", "v" }, '<leader>w', require('nvim-emmet').wrap_with_abbreviation)

-- Trouble
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
