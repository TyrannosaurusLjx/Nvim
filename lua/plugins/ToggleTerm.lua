return{
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true,
        require("toggleterm").setup{
            direction = 'float',
            close_on_exit = true,
            float_opts = {
            border = 'curved',
            width = 80,
            height = 15,
            row = 7,
            col = 45,
            winblend = 0,
            --zindex = <value>,
            title_pos = 'center',
            },
        }
    }
}
