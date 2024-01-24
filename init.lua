require("core.set")
require("core.bootstrap")
require("core.plugins")
require("core.remap")

--vim.api.nvim_create_autocmd("VimEnter", {
  --callback = function()
  --  if vim.fn.argv(0) == "" then
        --local treeWin = vim.api.nvim.get_current_win()

        --vim.api.nvim_command("vnew")

        --vim.api.nvim_win_set_width(tree, 80)

        --require("telescope.builtin").find_files()
   -- end
  --end,
--})

--vim.print(vim.fn.argv(0))
