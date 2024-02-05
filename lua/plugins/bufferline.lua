-- 顶部问号符号没配置 配置不完全    
return{
    {
    "akinsho/bufferline.nvim",
    config = function()
        require("bufferline").setup({
            options = {
              mode = 'buffers',
              offsets = {
                {filetype = 'NvimTree'}
              },
            },
            highlights = {
              buffer_selected = {
                italic = false
              },
              indicator_selected = {
                fg = {attribute = 'fg', highlight = 'Function'},
                italic = false
              }
            }
          })
    end,
    }
}