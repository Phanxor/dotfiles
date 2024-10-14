-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "<C-BS>", "<C-[>diwdla")
vim.keymap.set(
  "i",
  "<C-f>",
  "<Esc>:silent exec '!inkscape-figures create \"'.getline('.').'\" \"'.b:vimtex.root.'/figures\"'<CR><CR>:w<CR>"
)
vim.keymap.set(
  "n",
  "<C-f>",
  ":silent exec '!inkscape-figures edit \"'.b:vimtex.root.'/figures/\" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>"
)
