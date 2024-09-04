-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.UltiSnipsExpandTrigger = "<Tab>"
vim.g.UltiSnipsJumpForwardTrigger = "<Tab>"
vim.g.UltiSnipsJumpBackwardTrigger = "<S-Tab>"
vim.g.UltiSnipsSnippetDirectories = { "ultisnips" }
if vim.loop.os_uname().sysname == "Darwin" then
  vim.g.perl_host_prog = "/Users/gebruiker/.plenv/versions/5.40.0/bin/perl"
  vim.g.vimtex_view_method = "skim"
else
  vim.g.perl_host_prog = "/usr/bin/perl"
  vim.g.vimtex_view_method = "zathura"
end
vim.g.python_host_prog = vim.env.HOME .. "/.pyenv/versions/nvim-venv/bin/python"
vim.g.python3_host_prog = vim.env.HOME .. "/.pyenv/versions/nvim-venv/bin/python3"

vim.o.foldenable = true
vim.o.foldmethod = "marker"
vim.o.clipboard = "unnamedplus"
vim.o.autochdir = true
vim.g.snips_author = "Phanxor"
vim.g.tex_flavor = "latex"
vim.g.vimtex_quickfix_open_on_warning = 0
-- vim.s.pdflatex = "pdflatex -file-line-error -interaction=nonstopmode -halt-on-error -synctex=1"
--   .. "-output-directory="
--   .. vim.fn.expand("%:r")
-- vim.s.latexmk = "latexmk -pdf -output-directory=" .. vim.fn.expand("%:r")
vim.g.vimtex_compiler_latexmk = {
  aux_dir = function()
    return vim.env.HOME .. "/.latex/" .. vim.fn.expand("%:p:h:t")
  end,
  out_dir = function()
    return vim.env.HOME .. "/.latex/" .. vim.fn.expand("%:p:h:t")
  end,
  options = { "-verbose", "-file-line-error", "-halt-on-error", "-interaction=nonstopmode", "-synctex=1" },
}
