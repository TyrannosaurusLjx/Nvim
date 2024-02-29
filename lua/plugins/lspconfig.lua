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
            local python_root_files = {
              'WORKSPACE', -- added for Bazel; items below are from default config
              'pyproject.toml',
              'setup.py',
              'setup.cfg',
              'requirements.txt',
              'Pipfile',
              'pyrightconfig.json',
            }
            lspconfig.pyright.setup({
                root_dir = require('lspconfig').util.root_pattern(unpack(python_root_files)),
            })

            -- 设置 clangd
            lspconfig.clangd.setup({
                cmd = {"/usr/bin/clangd", "--background-index"}
            })
            lspconfig.marksman.setup({})
        end,
    }
}
