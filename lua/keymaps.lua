local v = vim
local k = v.keymap
v.g.leader = '<space>'

-- bookmarks
k.set('n', 'mn', ':BookmarkNext<cr>')
k.set('n', 'mp', ':BookmarkPrev<cr>')

-- quitters
k.set('n', '<leader>q', ':q<cr>')
k.set('n', '<leader>w', ':q<cr>')
k.set('n', '<leader>nq', ':q!<cr>')
k.set('n', '<leader>cc', ':qa<cr>')

-- packer
k.set('n', '<leader>00', ':so<Return>:PackerSync<Return>')
k.set('n', '<leader>99', ':so<Return>:PackerInstall<Return>')

-- savers
-- save while in insert mode then switch to normal
k.set('i', '<C-s>', '<C-c>:w<cr>')
-- save and quit
k.set('i', '<C-w>', '<C-c>:wq<cr>')
k.set('i', '<cmd-s>', ':w<cr>')

--  select all
k.set('n', '<C-a>', 'gg<S-v>G')

-- vertical split open
k.set('n', '<leader>vs', ':vsplit<Return><C-w>w', { silent = true })
k.set('n', '<leader>hs', '<C-w>s<Return>', { silent = true })

k.set('n', '<leader>f', '<C-w>w')
k.set('n', '<leader>j', '<C-w>w')
k.set('n', '<leader>a', '^')
k.set('n', '<leader>;', '$')
