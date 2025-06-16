return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use({
    "nvim-tree/nvim-tree.lua",

    requires = {
      "nvim-tree/nvim-web-devicons",
    },
  })
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-buffer")
  use("L3MON4D3/LuaSnip")
  use("rafamadriz/friendly-snippets")
  use("saadparwaiz1/cmp_luasnip")
  use("folke/which-key.nvim")
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  use("nvim-treesitter/nvim-treesitter")
  use("folke/trouble.nvim")
  use("kylechui/nvim-surround")
  use("windwp/nvim-autopairs")
  use("lukas-reineke/indent-blankline.nvim")
  use("nvimtools/none-ls.nvim")
  use("lewis6991/gitsigns.nvim")
  use("sschleemilch/slimline.nvim")
  use({
    "MeanderingProgrammer/render-markdown.nvim",
    after = { "nvim-treesitter" },
    requires = { "echasnovski/mini.icons", opt = true },
    config = function()
      require("render-markdown").setup({})
    end,
  })
  use({
    "saghen/blink.cmp",
    tag = "v1.*",
  })
  use("neovim/nvim-lspconfig")
  use("echasnovski/mini.statusline")
  use("mbbill/undotree")
  use("oonamo/ef-themes.nvim")
  use("nvim-treesitter/nvim-treesitter-context")
end)
