return{
    'rmagatti/auto-session',
    config = function ()
        require("auto-session").setup({
        log_level = "error",
        -- 打开这些目录里面的内容时，不加载会话
        auto_session_suppress_dirs = {"~/", "~/Projects", "~/Downloads", "/", "/ect", "/usr"},
        auto_session_enable_last_session = true,
        -- 保存session文件到 ~/.local/share/nvim/sessions目录
        auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
        auto_session_enabled = true,
            --test
        auto_save_enabled = true,
        auto_restore_enabled = false,
        auto_session_use_git_branch = nil,
        -- the configs below are lua only
        bypass_session_save_file_types = nil
})
    end
}
