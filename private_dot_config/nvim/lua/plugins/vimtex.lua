return {
  {
    "lervag/vimtex",
    lazy = false,
    config = function()
      if vim.loop.os_uname().sysname == "Darwin" then
        vim.g.vimtex_view_method = "skim"
      else
        vim.g.vimtex_view_method = "zathura"
      end

      vim.g.tex_flavor = "latex"
      vim.g.vimtex_quickfix_open_on_warning = 0
      vim.o.conceallevel = 0
      -- vim.g.vimtex_syntax_conceal_default = 0
      vim.g.vimtex_view_skim_sync = 1
      vim.g.vimtex_view_skim_no_select = 1
      vim.g.tex_indent_items = 0
      -- vim.g.tex_indent_and = 0
      vim.g.tex_indent_brace = 0
      vim.g.vimtex_indent_lists = {}
      vim.g.latex_indent_enabled = 0
      -- vim.s.pdflatex = "pdflatex -file-line-error -interaction=nonstopmode -halt-on-error -synctex=1"
      --   .. "-output-directory="
      --   .. vim.fn.expand("%:r")
      -- vim.s.latexmk = "latexmk -pdf -output-directory=" .. vim.fn.expand("%:r")
      vim.g.vimtex_compiler_latexmk = {
        aux_dir = function()
          return vim.env.HOME .. "/.latex/" .. vim.fn.expand("%:p:h:t") .. "-" .. vim.fn.expand("%<")
        end,
        out_dir = function()
          return vim.env.HOME .. "/.latex/" .. vim.fn.expand("%:p:h:t") .. "-" .. vim.fn.expand("%<")
        end,
        options = { "-verbose", "-file-line-error", "-halt-on-error", "-interaction=nonstopmode", "-synctex=1" },
      }
    end,
  },
  { "latex-lsp/texlab", lazy = true },
}
-- see also: which-key.lua
