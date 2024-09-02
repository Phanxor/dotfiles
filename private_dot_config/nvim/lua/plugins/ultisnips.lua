return {
  {
    "SirVer/ultisnips",
    event = { "InsertEnter" },
  },
  { "rafamadriz/friendly-snippets", enabled = false },
  { "garymjr/nvim-snippets", enabled = false },
  -- { "hrsh7th/nvim-cmp", enabled = true },
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
          { name = "buffer" },
          { name = "path" },
          { name = "ultisnips" },
        },
        mapping = cmp.mapping.preset.insert({
          ["<S-j>"] = cmp.mapping.select_next_item(),
          ["<S-k>"] = cmp.mapping.select_prev_item(),
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly
        }),
      })
    end,
  },
  -- { "hrsh7th/cmp-buffer", enabled = false },
  { "quangnguyen30192/cmp-nvim-ultisnips" },
}
