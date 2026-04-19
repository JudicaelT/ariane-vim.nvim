vim.api.nvim_create_autocmd("User", {
    pattern = "LazyDone",
    callback = function()
        vim.g.mapleader = " " -- Set spacebar as leader key

        require("ariane-vim.options.indentation")
        require("ariane-vim.options.linenumber")
        require("ariane-vim.options.diagnostic")
        require("ariane-vim.options.registry")

        require("ariane-vim.keymaps.navigation")
        require("ariane-vim.keymaps.lsp")
        require("ariane-vim.keymaps.git")
        require("ariane-vim.keymaps.editing")
        require("ariane-vim.keymaps.extra")
    end,
})
