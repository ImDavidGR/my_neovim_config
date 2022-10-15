local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " " -- leader key

map("n", "<leader>qq", ":q!<CR>", opts)
map("n", "<leader>qw", ":wq<CR>", opts)
map("n", "<leader>ww", ":wa<CR>", opts)
map("n", "<leader>wz", ":ZenMode<CR>", opts)

--> nvim tree mappings <--
map("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>gt", ":NvimTreeFocus<CR>", opts)

--> telescope mappings <--
map("n", "<leader>ff", ":Telescope find_files<cr>", opts)
map("n", "<leader>fg", ":Telescope live_grep<cr>", opts)
map("n", "<leader>fb", ":Telescope buffers<cr>", opts)

map("n", "<leader>bd", ":bd<CR>", opts)


vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gD', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', '<leader>ca', "<cmd>Lspsaga code_action<CR>", opts)

--[[ vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts) ]]
