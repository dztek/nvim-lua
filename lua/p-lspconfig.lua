local on_attach = function(_, bufnr)
  -- format on save
  vim.api.nvim_create_autocmd('BufWritePre', {
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format()
    end
  })
end


local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lsp_config = {
  capabilities = capabilities,
  group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
  on_attach = function(_, bufnr)
    on_attach(_, bufnr)
  end
}

require('mason-lspconfig').setup_handlers({
  function(server_name)
    if server_name == 'eslint' then
      print('using a special config for eslint')
      require('lspconfig').eslint.setup({
        capabilities = capabilities,
        group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
        codeActionOnSave = {
          enable = false,
          mode = 'all',
        },
      })
    elseif server_name == 'lua_ls' then
      print('using a special config for lua_ls')
      require('lspconfig').lua_ls.setup({
        capabilities = capabilities,
        group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          }
        }
      })
    else
      print('using default config for ' .. server_name)
      require('lspconfig')[server_name].setup(lsp_config)
    end
  end,
})

vim.keymap.set('n', '<leader>o', '<cmd>TypescriptOrganizeImports<cr>')
vim.keymap.set('n', '<leader>a', '<cmd>TypescriptAddMissingImports<cr>')
vim.keymap.set('n', '<leader>r', '<cmd>TypescriptRemoveUnused<cr>')
