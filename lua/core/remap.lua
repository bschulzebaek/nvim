local keymap = vim.keymap

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = 'Move selection up'})

keymap.set("n", "J", "mzJ`z")

keymap.set("n", "<C-d>", "<C-d>zz", { desc = 'Scroll down half page' })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = 'Scroll up half page' })

-- Conflict with tmux default prefix key 
--keymap.set("n", "<C-b>", ":ls<CR>:b<Space>", { desc = 'List and select buffer' })

keymap.set("n", "<C-q>", ":qa<CR>", { desc = 'Quit all' })

keymap.set("n", "<C-s>", ":w!<CR>", { desc = 'Write current buffer' })

