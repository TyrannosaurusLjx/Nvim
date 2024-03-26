-- 自动补全
return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "onsails/lspkind-nvim",
      "hrsh7th/cmp-nvim-lua",
      "octaltree/cmp-look",
      "hrsh7th/cmp-calc",
      "f3fora/cmp-spell",
      "hrsh7th/cmp-emoji",
    },
    config = function()
      local lspkind = require('lspkind')
      local cmp = require("cmp")
      vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
      local defaults = require("cmp.config.default")()
      cmp.setup({
        completion = {
          completeopt = "menu,menuone,noinsert",
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
          -- other mappings...
        }),
        sources = {
          -- Copilot Source
          { name = "copilot", group_index = 2 },
          { name = "nvim_lsp" },
          { name = "path" },
          { name = "buffer" },
          { name = "emoji" },
          { name = "nvim_lua" },
        },
                ---
          -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
        cmp.setup.cmdline({ '/', '?' }, {
          mapping = cmp.mapping.preset.cmdline(),
          sources = {
            { name = 'buffer' }
          }
       }),
                ---
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        -- 快捷键绑定
      mapping = {
        -- 上一个
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        -- 下一个
        ['<tab>'] = cmp.mapping.select_next_item(),
        -- 出现补全
        ['<C-.>'] = cmp.mapping.complete(),
       -- 取消
    --    ['<A-,>'] = cmp.mapping({
    --      i = cmp.mapping.abort(),
    --      c = cmp.mapping.close(),
    --    })
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({
      select = true,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  },

        formatting = {
          format = lspkind.cmp_format({
            with_text = true, --显示 function 等字样
            maxwidth = 50,
            before = function(entry, vim_item)
              vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"  -- 不显示来源 -- "[" .. string.upper(entry.source.name) .. "]"
              return vim_item
            end
          })
        },
        experimental = {
          ghost_text = {
            hl_group = "CmpGhostText",
          },
        },
        sorting = defaults.sorting,
      })
    end,
  },
  -- load vscode snippet (friendly-snippet)
require("luasnip.loaders.from_vscode").lazy_load()
}
