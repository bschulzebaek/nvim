local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("n", "<C-j>", ":tabprevious<CR>")
keymap.set("n", "<C-k>", ":tabnext<CR>")

keymap.set("n", "<C-q>", ":qa<CR>")


keymap.set("n", "<C-s>", ":w<CR>")


