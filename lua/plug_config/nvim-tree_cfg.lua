local status, nvim_tree = pcall(require, "nvim-tree")
if not status then return end

nvim_tree.setup({
    view = {
        adaptive_size = true,
    },
    update_focused_file = {
        enable = true
    }
})
