return {
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')

            -- 设置 tsserver
            lspconfig.tsserver.setup({})

            -- 设置 lua_ls
            lspconfig.lua_ls.setup({})

            -- 设置 pyright
            lspconfig.pyright.setup({})

            -- 设置 clangd
            lspconfig.clangd.setup({
                cmd = {"/usr/bin/clangd", "--background-index"}
            })
            lspconfig.marksman.setup({})
        end,
    }
}
