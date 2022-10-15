local status, ts = pcall(require, 'nvim-treesitter.configs')
if not status then return end

ts.setup {
   highlight = {
      enable = true,
      disable = {},
   },
   indent = {
      enable = true,
      disable = {},
   },
   ensure_installed = {
      "typescript",
      "javascript",
      "tsx",
      "php",
      "json",
      "yaml",
      "css",
      "html",
      "lua"
   },
   autotag = {
      enable = true,
   },
   rainbow = {
      enable = true,
      extended_mode = true,
      max_file_line = nil,
   }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
