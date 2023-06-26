_G.DEFAULT_THEME = 'nightfox'

local function isempty(s)
  return s == nil or s == ''
end

--vv core config
require('base')
require('colors')
require('keymaps')
require('plugins')
require('text')
require('style')
require('other')

-- plug config
-- require('p-bookmark')
require('p-cmp')
require('p-lspconfig')
require('p-lspkind')
require('p-lualine')
require('p-mason')
-- require('p-null')
require('p-template-string')
require('p-telescope')
require('p-tree')
require('p-treesitter')

-- Set the Theme on RUN
SetTheme(DEFAULT_THEME)
