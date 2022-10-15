local status, zenmode = pcall(require, "zen-mode")
if (not status) then return end

zenmode.setup {
}

vim.keymap.set('n', '<leader>zz', '<cmd>ZenMode<cr>', { silent = true })
