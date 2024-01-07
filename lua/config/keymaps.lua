-- Keymaps for better default experience
local opts = { noremap = true, silent = true }

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set('n', 'J', 'mzJ`z')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Navigation keymaps
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', '<C-u>', '<C-u>zzzv')
vim.keymap.set('n', '<C-d>', '<C-d>zzzv')
vim.keymap.set('n', '<C-f>', '<C-f>zzzv')
vim.keymap.set('n', '<C-b>', '<C-b>zzzv')

-- Telescope
vim.keymap.set('n', '<leader>sk', ':Telescope keymaps<CR>')
vim.keymap.set('n', '<leader>st', ':Telescope help_tags<CR>')
vim.keymap.set('n', '<leader>sf', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>sg', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>sb', ':Telescope buffers<CR>')


-- Window Management
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', opts)
vim.keymap.set('n', '<leader>sh', ':split<CR>', opts)
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Visual mode keymaps
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Git
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
vim.keymap.set('n', '<leader>gf', '<cmd>G fetch<cr>')
vim.keymap.set('n', '<leader>gk', '<cmd>G push<cr>')
vim.keymap.set('n', '<leader>gk', '<cmd>G push<cr>')

-- Paste and keep in black hole register
vim.keymap.set('v', '<leader>p', '"_dP')
vim.keymap.set('n', '<leader>d', '\"_d')
vim.keymap.set('v', '<leader>d', '\"_d')

-- Neotree
vim.keymap.set('n', '<leader>n', '<cmd>Neotree filesystem toggle left<cr>', opts)

-- Save
vim.keymap.set('n', '<leader>w', '<cmd>silent write<cr>', opts)
vim.keymap.set('n', '<leader>q', '<cmd>quit<cr>', opts)

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- Code actions
vim.keymap.set('n', '<leader>cr', function()
	vim.lsp.buf.format()
end, { desc = '[C]ode [R]eformat' })
