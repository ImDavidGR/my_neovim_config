local status, notify = pcall(require, "notify")
if not status then return end

notify.setup {
   stages = "fade_in_slide_out",
}

vim.notify = notify
