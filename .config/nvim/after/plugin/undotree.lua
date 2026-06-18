if vim.g.vscode then
    return
end
vim.keymap.set("n", "<leader>uu", vim.cmd.UndotreeToggle)
