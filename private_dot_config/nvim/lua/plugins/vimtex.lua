return {
  {
    "lervag/vimtex",
    lazy = false,
  },
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      spec = {
        ["<localLeader>l"] = {
          name = "+vimtex",
          l = { "Vimtex compile" },
          L = { "Vimtex compile selected" },
          i = { "Vimtex info" },
          I = { "Vimtex info full" },
          t = { "Vimtex TOC" },
          T = { "Vimtex toggle TOC" },
          q = { "Vimtex log" },
          v = { "Vimtex view" },
          r = { "Vimtex reverse search" },
          k = { "Vimtex stop" },
          K = { "Vimtex stop all" },
          e = { "Vimtex errors" },
          o = { "Vimtex compille output" },
          g = { "Vimtex status" },
          G = { "Vimtex full status" },
          c = { "Vimtex clean" },
          C = { "Vimtex full clean" },
          x = { "Vimtex reload" },
          X = { "Vimtex reload state" },
          m = { "Vimtex input maps list" },
          s = { "Vimtex toggle main" },
          a = { "Vimtex context menu" },
        },
      },
    },
  },
}
