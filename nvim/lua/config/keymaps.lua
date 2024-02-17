-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local discipline = require("gnu.discipline")
discipline.cowboy()

local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "=", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Tabs
keymap.set("n", "te", ":buffer", opts)
keymap.set("n", "<tab>", ":bnext<Return>", opts)
keymap.set("n", "<s-tab>", ":bprevious<Return>", opts)

-- Ultra Yank
keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')
keymap.set("n", "<leader>Y", '"+Y')

-- Split
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Vertical movement
keymap.set("v", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("v", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Diagnostics
keymap.set("n", "<leader>nd", function()
  vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>pd", function()
  vim.diagnostic.goto_next()
end, opts)

-- Noice
keymap.set("n", "<leader>sn", ":Noice<Return>", opts)
