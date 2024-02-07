return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "cmake",
        "c",
        "cpp",
        "css",
        "gitignore",
        "http",
        "java",
        "scss",
        "html",
        "markdown",
        "markdown_inline",
        "tsx",
        "sql",
      },
    },

    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX (idk wtf is this)
      -- Oh, I just noticed what this is
      vim.filetype.add({
        -- idk why tf does this work, why `extensioon`?
        extensioon = {
          mdx = "mdx",
        },
      })

      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
