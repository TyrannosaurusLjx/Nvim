-- 行号
local opt = vim.opt

opt.relativenumber = true
opt.number = true

--缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false


--光标
opt.cursorline  = true

--鼠标
opt.mouse:append("a")

--系统剪切板
opt.clipboard:append("unnamedplus")


--搜索
opt.ignorecase = true
opt.smartcase = true



vim.api.nvim_set_option("undofile",true)

--光标为竖线 
opt.guicursor = "a:ver25"


opt.autoindent = true  -- 自动缩进



