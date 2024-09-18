-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- general
vim.o.foldenable = true
vim.o.foldmethod = "marker"
vim.o.clipboard = "unnamedplus"
vim.o.autochdir = true

-- providers
if vim.loop.os_uname().sysname == "Darwin" then
  vim.g.perl_host_prog = "/Users/gebruiker/.plenv/versions/5.40.0/bin/perl"
else
  vim.g.perl_host_prog = "/usr/bin/perl"
end
vim.g.python_host_prog = vim.env.HOME .. "/.pyenv/versions/nvim-venv/bin/python"
vim.g.python3_host_prog = vim.env.HOME .. "/.pyenv/versions/nvim-venv/bin/python3"
