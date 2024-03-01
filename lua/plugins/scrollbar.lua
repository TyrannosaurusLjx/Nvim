-- 右侧滚动指示条
return{
    {
        'petertriho/nvim-scrollbar',
        config = function ()
            require("scrollbar").setup()
        end
    }
}
