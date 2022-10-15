local status, indent_blankline = pcall(require, "indent_blankline")
if not status then return end

indent_blankline.setup({
    show_current_context = true,
    show_current_context_start = true,
    filetype_exclude = { "help", "txt", "norg", "md" },
    buftype_exclude = { "terminal", "nofile" },
})

vim.g.indent_blankline_char = "∘"
