local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Treesitter
	{ "nvim-treesitter/nvim-treesitter" },

    -- Tree
	{
	    "nvim-neo-tree/neo-tree.nvim",
	    branch = "v3.x",
	    dependencies = {
	      "nvim-lua/plenary.nvim",
	      "nvim-tree/nvim-web-devicons",
	      "MunifTanjim/nui.nvim",
	    },
	},

    -- Themes
	{ "joshdick/onedark.vim" },
    { "rebelot/kanagawa.nvim" },
    { "mhartington/oceanic-next" },

    -- LSP
	{ "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-cmdline" },
    { "hrsh7th/nvim-cmp" },
    -- Mason
    { "williamboman/mason.nvim" },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    -- Format
    { "jose-elias-alvarez/null-ls.nvim" },

    -- Auto close
    { "windwp/nvim-autopairs" },
    { "windwp/nvim-ts-autotag" },

    -- Comments
    { "terrortylor/nvim-comment" },

    -- Git
    { "lewis6991/gitsigns.nvim" },

    -- Terminal
    { "akinsho/toggleterm.nvim", version = "*", config = true },

    -- Snipets
    { "hrsh7th/vim-vsnip" },
    { "hrsh7th/vim-vsnip-integ" },
    -- Emmet
    -- { 'jackieaskins/cmp-emmet', build = 'npm run release'  }
	{
	"olrtg/nvim-emmet",
	},
})

