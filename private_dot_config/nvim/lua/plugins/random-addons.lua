return {
  {
    "nvim-tree/nvim-web-devicons",
    lazy = false,
    config = function()
      require("nvim-web-devicons").setup({})
    end,
    enabled = true,
  },
  {
    "folke/noice.nvim",
    version = "4.4.7",
    lazy = true,
  },
}
