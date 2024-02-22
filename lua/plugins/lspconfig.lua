return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig['tsserver'].setup({})
            lspconfig['lua_ls'].setup({})
        end,
    }
}
