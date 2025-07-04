return {
    "mbbill/undotree",
    config = function ()
        vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = "Open [u]ndoTree"})
        vim.keymap.set('n', '<leader>U', vim.cmd.UndotreeFocus, { desc = "Focus [U]ndoTree"})
    end
}
