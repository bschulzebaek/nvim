local keymap = vim.keymap

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")

-- Scroll down half of screen and keep cursor centered
keymap.set("n", "<C-d>", "<C-d>zz")
-- Scroll up half of screen and keep cursor centered
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- List and select buffer
keymap.set("n", "<C-b>", ":ls<CR>:b<Space>")

-- Quit all
keymap.set("n", "<C-q>", ":qa<CR>")

-- Write current buffer
keymap.set("n", "<C-s>", ":w!<CR>")

