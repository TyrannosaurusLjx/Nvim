local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


vim.cmd('autocmd VimLeave * :SessionSave')

require("core.options")
require("core.keymaps")
require("lazy").setup({{import = "plugins"}})

--require'lspconfig'.pyright.setup{}
--require'lspconfig'.lua_ls.setup{}
--require'lspconfig'.clangd.setup{}
--require'lspconfig'.cpplint.setup{}
--require'lspconfig'.markdownlint.setup{}
--require'lspconfig'.alex.setup{}
