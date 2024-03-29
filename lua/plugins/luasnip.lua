return{
    {
    	"L3MON4D3/LuaSnip",
    	-- follow latest release.
    	dependencies = { "rafamadriz/friendly-snippets" },
    	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    	-- install jsregexp (optional!).
    	build = "make install_jsregexp",
    	-- load snippets from path/of/your/nvim/config/my-cool-snippets
        require("luasnip.loaders.from_vscode").lazy_load(),
        -- 加载我的 snippets
        require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/nvim/snippets/my-snippets" } })
    }
}
