return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "rust",
        "python",
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "terraform",
        "hcl",
      },
    },
  },

  {
    "kyazdani42/nvim-tree.lua",
    dependencies = {
      "b0o/nvim-tree-preview.lua",
    },
  },

  -- code actions in a preview
  {
    "rachartier/tiny-code-action.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
    },
    event = "LspAttach",
    config = function()
      require("tiny-code-action").setup()
    end,
  },

  -- snacks, bunch of nice stuff
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      bigfile = { enabled = false },
      quickfile = { enabled = false },
      scroll = {
        animate = {
          duration = { step = 15, total = 250 },
          easing = "linear",
        },
        spamming = 10, -- threshold for spamming detection
      },
      statuscolumn = { enabled = false },
    },
  },
  -- multi cursor
  -- {
  --   "mg979/vim-visual-multi",
  --   -- config = function()
  --   --   require "configs.multicursor"
  --   -- end,
  -- },
}
