return {
  "craftzdog/solarized-osaka.nvim",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        -- functions = { italic = true },
      },
    }
  end,
}
