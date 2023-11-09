require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "python", "javascript", "html", "css" },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
  }
}

