local status, toggleterm = pcall(require, 'toggleterm')
if not status then return end

toggleterm.setup({
   open_mapping = [[<c-º>]],
   size = 55,
   shade_terminals = true,
   direction = "float",
   float_opts = {
      border = "curved",
   },
   close_on_exit = true,
})
