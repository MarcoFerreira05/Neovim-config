vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behaviour in Normal and Visual modes
vim.keymap.set({'n', 'v',}, '<Space>', '<Nop>', {silent = true})

local opts = {noremap = true, silent = true}

-- ctrl + s => save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- space s n f => save file without auto formatting
vim.keymap.set('n', '<leader>snf', '<cmd>noautocmd w <CR>', opts)

-- ctrl + q => quit file
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Auto center cursor when scrolling up or down
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Same for finding
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- space v => split window vertically
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)

-- space h => split window horizontally
vim.keymap.set('n', '<leader>h', '<C-w>h', opts)

-- space se => make split windows have equal width and height
vim.keymap.set('n', '<leader>se', '<C-w>=', opts)

-- space xs => close current split window
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts)

-- ctrl + h|j|k|l => navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Stay in visual mode when indenting
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)
