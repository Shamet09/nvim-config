return {
  -- Import LazyVim Python extra (includes pyright, ruff, etc.)
  { import = "lazyvim.plugins.extras.lang.python" },

  -- Import LazyVim C/C++ extra (includes clangd)
  { import = "lazyvim.plugins.extras.lang.clangd" },

  -- Better diff view
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose" },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Open diff view" },
      { "<leader>gq", "<cmd>DiffviewClose<cr>", desc = "Close diff view" },
    },
  },

  -- HTTP/REST client
  {
    "rest-nvim/rest.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    ft = "http",
    keys = {
      { "<leader>rr", "<Plug>RestNvim", desc = "Run REST request" },
    },
  },

  -- Regex explainer
  {
    "bennypowers/nvim-regexplainer",
    dependencies = { "nvim-treesitter/nvim-treesitter", "MunifTanjim/nui.nvim" },
    keys = {
      { "<leader>rx", "<cmd>RegexplainerToggle<cr>", desc = "Explain Regex" },
    },
    opts = {},
  },

  -- Enhanced gitsigns with blame
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 300,
      },
    },
  },

  -- Add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "c",
        "cpp",
        "python",
        "lua",
        "regex",
        "json",
        "yaml",
        "dockerfile",
        "http",
      })
    end,
  },
}
