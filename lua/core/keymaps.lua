local keymap = vim.keymap


-- insert mode
keymap.set("i","qq","<ESC>")

-- 正常模式
keymap.set("n","//",":nohlsearch<CR>")  -- 使用 // 取消搜索

-- 视觉模式下行移动
keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '<-2<CR>gv=gv")
