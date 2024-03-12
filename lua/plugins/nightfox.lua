return{
    { 
        "EdenEast/nightfox.nvim",

        
        config = function ()
            require("nightfox").setup({

                options = {
                    transparent = true,--背景透明
                    terminal_colors = false,
                    
                }

            })
            vim.cmd("colorscheme nightfox")
        end
    } -- lazy

}
