-- 自动补全  
return {  
  {  
    "hrsh7th/nvim-cmp",  
    version = true, -- 最新版本太旧  
    event = "InsertEnter",  
    dependencies = {  
      "hrsh7th/cmp-nvim-lsp",  
      "hrsh7th/cmp-buffer",  
      "hrsh7th/cmp-path",  
      "onsails/lspkind-nvim", --美化自动完成提示信息  
      "hrsh7th/cmp-nvim-lua", --nvim-cmp source for neovim Lua API.  
      "octaltree/cmp-look", --用于完成英语单词  
      "hrsh7th/cmp-calc", --输入数学算式（如1+1=）自动计算  
      "f3fora/cmp-spell", --nvim-cmp 的拼写源基于 vim 的拼写建议  
      "hrsh7th/cmp-emoji", --输入: 可以显示表情  
    },  
    opts = function()  
      vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })  
      local cmp = require("cmp")  
      local defaults = require("cmp.config.default")()  
      return {  
        completion = {  
          completeopt = "menu,menuone,noinsert",  
        },  
        mapping = cmp.mapping.preset.insert({  
          ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),  
          ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),  
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),  
          ["<C-f>"] = cmp.mapping.scroll_docs(4),  
          ["<C-Space>"] = cmp.mapping.complete(),  
          ["<C-e>"] = cmp.mapping.abort(),  
          ["<tab>"] = cmp.mapping.confirm({ select = true }), -- 按tab确认 Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.  
          ["<S-CR>"] = cmp.mapping.confirm({  
            behavior = cmp.ConfirmBehavior.Replace,  
            select = true,  
          }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.  
          ["<C-CR>"] = function(fallback)  
            cmp.abort()  
            fallback()  
          end,  
        }),  
        sources = {  
          { name = "nvim_lsp" },  
          { name = "path" },  
          { name = "buffer" },  
          { name = "emoji" }, -- 实际存在的源  
          { name = "nvim_lua" },  
          -- { name = "treesitter" }, -- 实际存在的源  
        },  
        -- formatting = {  
        --   format = function(_, item)  
        --     local icons = require("lazyvim.config").icons.kinds  
        --     if icons[item.kind] then  
        --       item.kind = icons[item.kind] .. item.kind  
        --     end  
        --     return item  
        --   end,  
        -- },  
        experimental = {  
          ghost_text = {  
            hl_group = "CmpGhostText",  
          },  
        },  
        sorting = defaults.sorting,  
      }  
    end,  
    ---@param opts cmp.ConfigSchema  
    config = function(_, opts)  
      for _, source in ipairs(opts.sources) do  
        source.group_index = source.group_index or 1  
      end  
      require("cmp").setup(opts)  
    end,  
  }  
}  