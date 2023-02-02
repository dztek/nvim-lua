require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "help", "javascript", "json", "graphql" },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    disable = { "c", "rust" },
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
    disable = {},
  }
}
