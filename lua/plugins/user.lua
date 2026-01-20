return {

  -- Git integration (super useful)
  {
    "tpope/vim-fugitive",
    cmd = "Git",
  },

  -- Hex editor (for binary analysis/reverse engineering)
  {
    "RaafatTurki/hex.nvim",
    config = true,
  },

  -- Better quickfix window
  {
    "kevinhwang91/nvim-bqf",
    ft = "qf",
  },

  -- Markdown preview (for documentation)
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  -- Database viewer (useful for SQL injection testing)
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      "tpope/vim-dadbod",
      "kristijanhusak/vim-dadbod-completion",
    },
  },
  {
    "github/copilot.vim",
    event = "InsertEnter",
  },
}
