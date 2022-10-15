local status, packer = pcall(require, 'packer')
if not status then return end

packer.startup(function(use)
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'

   -- dev icons
   use "kyazdani42/nvim-web-devicons"

   -- top bar / tabs
   use "akinsho/bufferline.nvim"

   -- bottom bar / status bar
   use("nvim-lualine/lualine.nvim")

   -- notifications
   use 'rcarriga/nvim-notify'

   -- file explorer
   use "kyazdani42/nvim-tree.lua"

   -- telescope
   use "nvim-lua/plenary.nvim"
   use "nvim-telescope/telescope.nvim"
   use "startup-nvim/startup.nvim"

   -- treesiter
   use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
   use "nvim-treesitter/nvim-treesitter-textobjects"
   use "nvim-treesitter/nvim-treesitter-refactor"
   use "p00f/nvim-ts-rainbow"
   use "nvim-treesitter/playground"
   use "JoosepAlviste/nvim-ts-context-commentstring"

   -- autopairs| complete automatically () {} [] '' "" <>
   use "windwp/nvim-autopairs"
   use "windwp/nvim-ts-autotag"

   -- map to comment line or block of code
   use "numToStr/Comment.nvim"

   -- terminal
   use "akinsho/toggleterm.nvim"

   -- indent lines
   use "lukas-reineke/indent-blankline.nvim"

   -- colorschemes
   use "EdenEast/nightfox.nvim"
   use "rebelot/kanagawa.nvim"

   -- LSP AND CMP
   use "neovim/nvim-lspconfig"
   use "glepnir/lspsaga.nvim"
   use "onsails/lspkind.nvim"
   use "L3MON4D3/LuaSnip"
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'
   use "hrsh7th/nvim-cmp"
   use "williamboman/mason.nvim"
   use "williamboman/mason-lspconfig.nvim"


   use 'jose-elias-alvarez/null-ls.nvim'
   use 'MunifTanjim/prettier.nvim'

   -- Git
   use 'dinhhuy258/git.nvim'
   use 'lewis6991/gitsigns.nvim'

   use "folke/zen-mode.nvim"
end)
