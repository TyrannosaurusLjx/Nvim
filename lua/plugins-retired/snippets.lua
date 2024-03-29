return{
    {
        "honza/vim-snippets",
        config = function()
            vim.g.vsnip_snippet_dir = vim.fn.stdpath('config') .. '/snippets'
        end
    }
}
