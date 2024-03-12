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
                height = 20,
                row = 7,
                col = 30,
                winblend = 0,
                --zindex = <value>,
                title_pos = 'center',
            },
            start_in_insert = true,
-- 感觉没效果 
--              highlights = {
--                -- highlights which map to a highlight group name and a table of it's values
--                -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
--                Normal = {
--                  guibg = "red",
--                },
--                NormalFloat = {
--                  link = 'red'
--                },
--                FloatBorder = {
--                  guifg = "red",
--                  guibg = "red",
--                },
--              },
        }
    }
}
