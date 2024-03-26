--return{
    --'nvim-telescope/telescope.nvim', tag = '0.1.5',

    
    --requires = {{'nvim-lua/plenary.nvim'}}
--}


return{
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function ()
            require("telescope").setup {
                  extensions = {
                    file_browser = {
                        theme = 'ivy',
                        path = "/Users/luojunxun/Desktop/",
                        cwd = "/Users/luojunxun/Desktop/",
                        files = true,
                    },
                  },
                }
        end,
    }
}

