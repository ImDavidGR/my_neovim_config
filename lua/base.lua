local set = vim.opt

set.mouse = "a" -- estable el uso del raton
set.number = true -- al poner relativenumber quiero ver tambien la linea actual
set.relativenumber = true -- numeros relativos

set.expandtab = true -- cambia el caracter de tabulacion por espacios
set.tabstop = 3 -- cantidad de espacios insertados al tabular con >> o <<
set.smarttab = true -- cambia el uso de la tecla TAB
set.shiftwidth = 3 -- cantidad de espacios al pulsar TAB
set.breakindent = true -- se mantiene la samgria al crear nuevas lineas debajo
set.scrolloff = 15 -- al hacer scroll se mantienen 5 lineas debajo o arriba

set.hlsearch = true -- resalta las coincidencias de la busqueda
set.incsearch = true -- mueve el cursor a la coincidencia de busqueda
set.ignorecase = true -- ignora mayusculas y minusculas en la busqueda
set.smartcase = true -- '/El' buscara solo El y '/el' buscara El y el

set.termguicolors = true -- activa el soporte de colores en la terminal

set.showmode = false -- se visualiza el modo en el que se encuentra el editor

set.splitbelow = true -- las nuevas ventanas horizontales se abriran abajo
set.splitright = true -- las nuevas ventanas verticales se abriran a la derecha

set.wrap = false -- salto de linea cuando se supera en numero de caracteres

set.cursorline = true -- resalta la linea actual
set.fileencoding = "utf-8" -- estable el encoding del fichero
set.wildmenu = true
set.completeopt = "menuone,noselect"
set.hidden = true
set.fillchars = "eob: "

vim.opt.clipboard:append { 'unnamedplus' }

-- colorschemes
vim.cmd("colorscheme kanagawa")
-- vim.cmd("colorscheme nightfox")
