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
        "org",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "org" },
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
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
