vim.g.mapleader = " "

--Neotree
vim.keymap.set('n','<leader>e',':Neotree float focus<CR>')
vim.keymap.set('n','<leader>o',':Neotree float git_status<CR>')

-- Tabs
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')

--BufferLine
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>X', ':BufferLineCloseRight<CR>')
vim.keymap.set('n', '<leader>s', ':BufferLineSortByTabs><CR>')

