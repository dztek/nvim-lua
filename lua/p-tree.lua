vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  actions = {
    open_file = {
      --quit_on_open = true
    }
  },
  update_focused_file = {
    enable = false,
    update_cwd = true
  },
  filters = {
    custom = { '^.git$', '^node_modules' },
  },
  git = {
    enable = false
  },
  log = {
    enable = true,
    types = {
      diagnostics = true
    }
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    debounce_delay = 50,
    icons = {
      hint = 'H',
      info = 'I',
      warning = 'W',
      error = 'E'
    }
  }
})

vim.keymap.set('n', '<c-h>', '<cmd>NvimTreeToggle<cr>')
vim.keymap.set('n', '<c-j>', '<cmd>NvimTreeToggle<cr>')
