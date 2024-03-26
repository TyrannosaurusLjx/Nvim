return{
    {
    "folke/edgy.nvim",
    event = "VeryLazy",
    opts = {},

    config = function ()
        require("edgy").setup()
    end
    }
}
