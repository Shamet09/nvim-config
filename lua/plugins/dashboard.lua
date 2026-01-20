return {
  -- Disable alpha completely
  { "goolord/alpha-nvim", enabled = false },

  -- Dashboard with all options
  {
    "nvimdev/dashboard-nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("dashboard").setup({
        theme = "doom",
        config = {
          header = {
            "",
            "",
            "   ███████╗██╗  ██╗██╗   ██╗██╗███╗   ███╗",
            "   ██╔════╝██║  ██║██║   ██║██║████╗ ████║",
            "   ███████╗███████║██║   ██║██║██╔████╔██║",
            "   ╚════██║██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║",
            "   ███████║██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║",
            "   ╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
            "",
            "",
          },
          center = {
            {
              icon = "  ",
              desc = "Find File                   ",
              key = "f",
              action = "Telescope find_files",
            },
            {
              icon = "  ",
              desc = "New File                    ",
              key = "n",
              action = "enew",
            },
            {
              icon = "  ",
              desc = "Recent Files                ",
              key = "r",
              action = "Telescope oldfiles",
            },
            {
              icon = "  ",
              desc = "Find Text                   ",
              key = "g",
              action = "Telescope live_grep",
            },
            {
              icon = "  ",
              desc = "Config                      ",
              key = "c",
              action = "Telescope find_files cwd=~/.config/nvim",
            },
            {
              icon = "  ",
              desc = "Restore Session             ",
              key = "s",
              action = "lua require('persistence').load()",
            },
            {
              icon = "  ",
              desc = "Lazy Extras                 ",
              key = "x",
              action = "LazyExtras",
            },
            {
              icon = "󰒲  ",
              desc = "Lazy                        ",
              key = "l",
              action = "Lazy",
            },
            {
              icon = "  ",
              desc = "Quit                        ",
              key = "q",
              action = "quit",
            },
          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      })

      -- Hide indent guides on dashboard
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "dashboard",
        callback = function()
          vim.b.miniindentscope_disable = true
          pcall(function()
            require("ibl").setup_buffer(0, { enabled = false })
          end)
        end,
      })
    end,
  },

  -- Configure indent-blankline to exclude dashboard
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      exclude = {
        filetypes = { "dashboard", "alpha", "lazy", "mason" },
      },
    },
  },
}
