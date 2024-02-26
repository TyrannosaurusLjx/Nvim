return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig['tsserver'].setup({})
            lspconfig['lua_ls'].setup({})
            lspconfig['pyright'].setup({})

        end,
    }
}
