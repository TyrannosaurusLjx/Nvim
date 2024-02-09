return{
   {
    "akinsho/bufferline.nvim",
    config = function()
        require("bufferline").setup({
            options = {
              mode = 'buffers',
            
                    --myconfig
              numbers="ordinal",
              themable=true,



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
