-- 没弄好
return{
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        build = ":Copilot auth",
        opts = {
          suggestion = { enabled = true },
          panel = { enabled = true },
          filetypes = {
            markdown = true,
            help = true,
            python = true,
            cpp = true,
          },
        },
    
        config=function()
          require("copilot").setup(opts)
        end
    }
}

