local status, bufferline = pcall(require, 'bufferline')
if not status then return end

bufferline.setup({
    options = {
        mode = "buffers",
        separator_style = 'thin',
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = true,
        indicator = {
            icon = "▎",
            style = 'icon'
        },
        highlights = {
            indicator_selected = {
                bg = "#0093FF",
            },
        }
    },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
