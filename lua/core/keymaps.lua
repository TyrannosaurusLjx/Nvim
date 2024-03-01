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
--keymap.set("n","open","<ESC>:Ntree<CR>")
keymap.set("n","tree","<ESC>:Neotree<CR>")


--telescope 映射
--local builtin = require('telescope.builtin')
keymap.set("n", "fl", "<ESC>:Telescope find_files<CR>")--find lua
keymap.set('n', 'fw', "<ESC>:Telescope live_grep <CR>")
keymap.set('n', 'fb', "<ESC>:Telescope buffers<CR>")
keymap.set('n', 'fh', "<ESC>:Telescope help_tags<CR>")
keymap.set('n', 'ff', "<ESC>:Telescope oldfiles<CR>")

--运行终端命令快捷键
keymap.set("n", "ter", "<ESC>:!") -- go to terminal

--强制退出
keymap.set("n", ":qq", ":q!")


--markdown imp
keymap.set("n", "mp", "<ESC>:call mdip#MarkdownClipboardImage()<CR>")

--markdown preview
keymap.set("n", "<F8>", "<ESC>:MarkdownPreview<CR>")

--make viewpoint center
keymap.set("i", "<F9>", "<ESC>zz<CR>gi")

--auto-session
keymap.set("n", "<F10>", "<ESC>:SessionRestore<CR>")

--ToggleTrem
keymap.set("n", "`", "<ESC>:execute 'ToggleTerm name='.expand('%')<CR>")
--下面的只显示文件名而不是完整路径 
--keymap.set("n", "`", "<ESC>:execute 'ToggleTerm name='.expand('%:t')<CR>")
--按`退出终端 
keymap.set("t", "`","exit<CR>")


--cpp 快速编译运行
keymap.set("n","<F12>",":!g++ -o test -std=c++11 '%' && ./test <CR>")

-- glance快捷键,浏览函数定义
keymap.set('n', 'gd', '<CMD>Glance definitions<CR>')
--keymap.set('n', 'gR', '<CMD>Glance references<CR>')
--keymap.set('n', 'gY', '<CMD>Glance type_definitions<CR>')
--keymap.set('n', 'gM', '<CMD>Glance implementations<CR>')
--
--

--设置帮助文档
keymap.set("n",":ljx<CR>",":split ~/.config/nvim/short_intro.md<CR>")

--利用silicon 复制代码图片
keymap.set("v","<F12>","y<ESC>:!silicon --from-clipboard -l rs --to-clipboard<CR><CR>")
