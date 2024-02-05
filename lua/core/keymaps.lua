local keymap = vim.keymap


-- insert mode
keymap.set("i","qq","<ESC>")

-- 视觉模式下行移动
keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '<-2<CR>gv=gv")