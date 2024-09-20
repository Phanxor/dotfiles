return {
  {
    "SirVer/ultisnips",
    event = { "InsertEnter" },
    init = function()
      vim.g.UltiSnipsExpandTrigger = "<Tab>"
      vim.g.UltiSnipsJumpForwardTrigger = "ji"
      vim.g.UltiSnipsJumpBackwardTrigger = "jp"
      vim.g.UltiSnipsSnippetDirectories = { "ultisnips" }
      vim.g.snips_author = "Phanxor"
    end,
  },
}
