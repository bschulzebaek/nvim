local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")

-- Scroll down half of screen and keep cursor centered
keymap.set("n", "<C-d>", "<C-d>zz")
-- Scroll up half of screen and keep cursor centered
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

--keymap.set("n", "<C-j>", ":tabprevious<CR>")
--keymap.set("n", "<C-k>", ":tabnext<CR>")

-- List and select buffer
keymap.set("n", "<C-b>", ":ls<CR>:b<Space>")

-- Quit all
keymap.set("n", "<C-q>", ":qa<CR>")

-- Write current buffer
keymap.set("n", "<C-s>", ":w!<CR>")

--
-- Terminal navigation
--

-- Open new terminal in new vertical split
keymap.set("n", "<C-x>", ":vert term<CR>")
-- Exit terminal mode and go to previous buffer
keymap.set("t", "<Esc>", "<C-\\><C-n><C-w>p")
-- Delete terminal buffer -> Exit to previous buffer
keymap.set("t", "<C-q>", "<C-\\><C-n>:bd!<CR>")


