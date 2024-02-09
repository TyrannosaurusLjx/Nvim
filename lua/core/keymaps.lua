local keymap = vim.keymap


-- insert mode
keymap.set("i","qq","<ESC>")

-- 正常模式
keymap.set("n","//",":nohlsearch<CR>")  -- 使用 // 取消搜索

-- 视觉模式下行移动
keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '<-2<CR>gv=gv")

-- bufferline 快捷键
--88上一个，99 下一个 00 关闭 
keymap.set("n","00","<ESC>:bd<CR>")
keymap.set("n","88","<ESC>:BufferLineCyclePrev<CR>")
keymap.set("n","99","<ESC>:BufferLineCycleNext<CR>")

-- tree映射
keymap.set("n","open","<ESC>:Ntree<CR>")
keymap.set("n","tree","<ESC>:Neotree<CR>")
