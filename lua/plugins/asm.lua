return {
  -- Treesitter for Assembly syntax
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "asm",
      })
    end,
  },

  -- LSP for Assembly (asm-lsp)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        asm_lsp = {
          filetypes = { "asm", "s", "S" },
        },
      },
    },
  },
}
