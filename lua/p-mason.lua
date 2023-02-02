require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    'sumneko_lua',
    'tsserver',
    'svelte',
    'rust_analyzer',
  },
  automatic_installation = true,
})
