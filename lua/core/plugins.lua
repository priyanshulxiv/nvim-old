require("lazy").setup({
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  "lewis6991/gitsigns.nvim",
  { 
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  "nvim-treesitter/nvim-treesitter",
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opt = {},
  },
  "windwp/nvim-autopairs",
  
  -- LSP 
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  -- Completion
  "hrsh7th/nvim-cmp",
  'hrsh7th/cmp-nvim-lsp',
  "hrsh7th/cmp-buffer",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",

})
