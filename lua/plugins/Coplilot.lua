return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = { enabled = true,
        keymap = {
          accept = "<c-i>",
          -- 其他键盘快捷键
        }
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        python = true,
        help = true,
      },
    },
  }
}
