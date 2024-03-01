return {  
    {  
        'navarasu/onedark.nvim', -- 插件名称  
        config = function()  
            require('onedark').setup {  
                style = 'cool'  
            }  
            require('onedark').load()  
        end  
    }  
}  
