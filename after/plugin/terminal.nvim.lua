vim.api.nvim_create_autocmd({ "WinEnter", "BufWinEnter", "Termopen" }, {
    callback = function(args) 
        if vim.startswith(vim.api.nvim_buf_get_name(args.buf), "term://") then
            vim.cmd("startinsert")
        end
    end
})

vim.api.nvim_create_autocmd("TermOpen", {
    command = [[setlocal nonumber norelativenumber winhl=Normal:NormalFloat]]
})

