-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Exit insert mode with jk
-- Exit insert mode with jk
local map = vim.keymap.set

-- Exit insert mode with jk
map("i", "jk", "<Esc>", { desc = "Exit insert mode" })
map("i", "kj", "<Esc>", { desc = "Exit insert mode" })

-- Exit visual mode with jk
map("v", "jk", "<Esc>", { desc = "Exit visual mode" })
map("v", "kj", "<Esc>", { desc = "Exit visual mode" })

-- Run Python file in terminal (for interactive programs)
map("n", "<F5>", "<cmd>w<cr><cmd>split | term python %<cr>i", { desc = "Run Python file in terminal" })
map("n", "<leader>rp", "<cmd>w<cr><cmd>split | term python %<cr>i", { desc = "Run Python file in terminal" })

-- Compile and run C file (safe with spaces in filename)
map(
  "n",
  "<F7>",
  '<cmd>w<cr><cmd>split | term gcc "%:p" -o "%:p:r" && "%:p:r"<cr>i',
  { desc = "Compile and run C (safe with spaces)" }
)

-- Compile and run C file (standard, F6)
map(
  "n",
  "<F6>",
  "<cmd>w<cr><cmd>split | term gcc % -o %:r && ./%:r<cr>i",
  { desc = "Compile and run C file in terminal" }
)

-- Just compile C file (no run)
map("n", "<leader>cc", "<cmd>w<cr><cmd>!gcc % -o %:r<cr>", { desc = "Compile C file" })

-- Compile C with debugging symbols
map("n", "<leader>cd", "<cmd>w<cr><cmd>!gcc -g % -o %:r<cr>", { desc = "Compile C with debug symbols" })

-- Quick save
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
map("n", "<C-s>", "<cmd>w<cr>", { desc = "Save file" })

-- Quick quit
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })

-- Clear search highlighting
map("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Clear search highlighting" })

-- Better indenting (stay in visual mode)
map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

-- Move lines up and down
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move line down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move line up" })

-- Better paste (don't yank replaced text)
map("v", "p", '"_dP', { desc = "Paste without yanking" })
