-- 自动补全
---

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
      --- luasnip
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      "rafamadriz/friendly-snippets",
      ---
    },

    config = function()
            -- luasnip
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end
      local luasnip = require("luasnip")
            ---

      local lspkind = require('lspkind')
      local cmp = require("cmp")
      vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
      local defaults = require("cmp.config.default")()


      local border_chars = {
        "┌", "─", "┐",
        "│",       "│",
        "└", "─", "┘",
    }
    
    local function draw_border(win_id, width, height)
        local lines = {}
        for i = 1, height do
            local line = border_chars[(i - 1) % 3 + 1]
            if i == 1 or i == height then
                line = border_chars[2]
            end
            table.insert(lines, line)
        end
        vim.api.nvim_buf_set_lines(win_id, 0, -1, false, lines)
    end
    
    local cmp = require("cmp")

    


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
          { name = 'luasnip' },
          -- { name = "copilot", group_index = 2 },
          { name = "nvim_lsp" },
          { name = "path" },
          { name = "buffer" },
          { name = "emoji" },
          { name = "nvim_lua" },
          --{ name = "snippy" },
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
            -- require('snippy').expand_snippet(args.body)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        -- 快捷键绑定
      mapping = {
        -- 上一个
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        -- 下一个
        ['<C-j>'] = cmp.mapping.select_next_item(),
        -- 出现补全
        ['<C-.>'] = cmp.mapping.complete(),
        -- 取消
        --    ['<A-,>'] = cmp.mapping({
        --      i = cmp.mapping.abort(),
        --      c = cmp.mapping.close(),
        --    })
        -- 确认
                    -- LuaSnip
        ["<Tab>"] = cmp.mapping(function(fallback)
          --if cmp.visible() then
          --  cmp.select_next_item()
            -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
            -- they way you will only jump inside the snippet region
          if luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          --elseif has_words_before() then
            --cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
    
        -- 这个没什么好改的,谁能同时按 shift + tab?
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
                --

        -- Accept currently selected item. If none selected, `select` first item.
        -- Set `select` to `false` to only confirm explicitly selected items.
        -- tab 被拓展成luasnip 的键,这里用回车键接受
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

        view = {
          entries = {name = 'custom', selection_order = 'near_cursor' } 
        },

        sorting = defaults.sorting,
      })
    end,
  },

  -- load vscode snippet (friendly-snippet)
require("luasnip.loaders.from_vscode").lazy_load(),
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/nvim/snippets/my-snippets" } })

}
