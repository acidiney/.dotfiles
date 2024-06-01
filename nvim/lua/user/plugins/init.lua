return {
  "AstroNvim/astrocommunity",
  "folke/tokyonight.nvim",
  "joshdick/onedark.vim",
  { import = "astrocommunity.colorscheme.catppuccin", enabled = false },
  { import = "astrocommunity.colorscheme.rose-pine", enabled = false },
  {
    "rose-pine",
    opts = {
      variant = "main",
      dark_variant = "main",
      styles = {
        bold = false,
        italic = true,
        transparency = true,
      },
    },
  },
  {
    "catppuccin",
    opts = {
      flavour = "mocchiato",
  --    transparent_background = false,
--      term_colors = false,
    },
  },
}
