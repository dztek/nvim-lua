_G.v = vim
_G.k = v.keymap
v.g.leader = '<space>'

-- NvimTreeToggle
k.set('n', '<C-b>j', '<cmd>NvimTreeToggle<cr>')

-- comment
k.set('n', '<leader>c', 'gcc<cr>')

-- bookmarks
k.set('n', 'mn', ':BookmarkNext<cr>')
k.set('n', 'mp', ':BookmarkPrev<cr>')

-- quitters
k.set('n', '<leader>q', ':qall<cr>')
k.set('n', '<leader>w', ':q<cr>')
k.set('n', '<leader>nq', ':q!<cr>')

-- packer
k.set('n', '<leader>99', ':so<Return>:PackerSync<Return>')
k.set('n', '<leader>00', ':so<Return>:PackerInstall<Return>')

-- savers
-- save while in insert mode then switch to normal
k.set('i', '<C-s>', '<C-c>:w<cr>')
k.set('i', '<C-;>', '<C-c>:w<cr>')
-- k.set('n', '<C-;>', '<C-c>:w<cr>')

-- save and quit
k.set('i', '<C-w>', '<C-c>:wqall<cr>')
k.set('i', '<cmd-s>', ':w<cr>')
k.set('n', '<leader>rr', ':so<cr>')

--  select all
k.set('n', '<C-a>', 'gg<S-v>G')

-- vertical split open
k.set('n', '<leader>vs', ':vsplit<Return><C-w>w', { silent = true })
k.set('n', '<leader>hs', '<C-w>s<Return>', { silent = true })
k.set('n', '<leader>f', '<C-w>w')
k.set('n', '<leader>j', '<C-w>w')

-- movers
k.set('n', '<leader>a', '^')
k.set('n', '<leader>s', '$')

-- theming
local dark = 'nightfox'
local light = 'dayfox'
local theme = DEFAULT_THEME == dark and dark or light

_G.SetTheme = function(name)
  local selectedTheme = name and name or theme
  local newTheme = 'colorscheme ' .. selectedTheme
  vim.cmd(newTheme)
  theme = theme == dark and light or dark

  -- TODO: only do this is requested
  -- save to config file
end

-- k.set('n', '<C-l>', SetTheme)
