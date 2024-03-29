return{
    {
        'dcampos/nvim-snippy',
        config = function ()
            require("snippy").setup({
                mapping = {
                    is = {
                        ['<Tab>'] = 'expand_or_advance',
                        ['<S-Tab>'] = 'previous',
                    },
                    nx = {
                        ['<leader>x'] = 'cut_text',
                    },
                }
            })
        end
    }
}
