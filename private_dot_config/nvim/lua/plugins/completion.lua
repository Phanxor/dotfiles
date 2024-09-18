return {
  { "rafamadriz/friendly-snippets", enabled = false },
  { "garymjr/nvim-snippets", enabled = false },
  -- { "hrsh7th/nvim-cmp", enabled = true },
  -- { "hrsh7th/cmp-buffer", enabled = false },
  {
    "hrsh7th/nvim-cmp",
    -- dependencies = {
    --   "hrsh7th/cmp-buffer",
    --   "hrsh7th/cmp-path",
    --   "hrsh7th/cmp-nvim-lsp",
    --   "quangnguyen30192/cmp-nvim-ultisnips",
    -- },
    event = "InsertEnter",
    config = function()
      local cmp = require("cmp")
      vim.opt.completeopt = { "menu", "menuone" }

      cmp.setup({
        sources = {
          { name = "nvim_lsp" },
          -- { name = "buffer" },
          { name = "path" },
          -- { name = "ultisnips" },
          { name = "texlab" },
        },
        mapping = cmp.mapping.preset.insert({
          ["§"] = cmp.mapping.select_next_item(),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<Esc>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly
        }),
      })
    end,
  },
  -- { "quangnguyen30192/cmp-nvim-ultisnips" },
}
