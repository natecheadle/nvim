return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
    event = "VeryLazy",
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "codelldb",
        "stylua",
        "lua-language-server",
        "cmake-language-server",
        "cmakelang",
        "cmakelint",
        "netcoredbg",
        "csharp-language-server",
        "csharpier",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "c",
        "c_sharp",
        "cpp",
        "cmake",
        "json",
        "yaml",
        "glsl",
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    config = function()
      require "configs.nvim-lint"
    end,
    event = "VeryLazy",
  },
  {
    "nvim-neotest/nvim-nio",
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require "configs.nvim-dap"
    end,
    event = "VeryLazy",
  },
  {
    -- UI for debugging
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      require "configs.nvim-dap-ui"
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    },
    event = "VeryLazy",
  },
  {
    "Civitasv/cmake-tools.nvim",
    config = function()
      require "configs.cmake-tools"
    end,
    event = "VeryLazy",
    dependencies = {
      "stevearc/overseer.nvim",
      "akinsho/toggleterm.nvim",
    },
  },
  { "mrjones2014/smart-splits.nvim" },
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
  },
}
