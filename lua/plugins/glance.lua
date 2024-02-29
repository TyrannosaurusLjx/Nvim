return{
    {
        "dnlhc/glance.nvim",
        config = function ()
            require('glance').setup({
--                height = 18,
--                zindex = 45,
--              -- By default glance will open preview "embedded" within your active window
--              -- when `detached` is enabled, glance will render above all existing windows
--              -- and won't be restiricted by the width of your active window
--              --detached = true,
--              -- Or use a function to enable `detached` only when the active window is too small
--              -- (default behavior)
--              preview_win_opts = { -- Configure preview window options
--                cursorline = true,
--                number = true,
--                wrap = true,
--              },
--              border = {
--                enable = false, -- Show window borders. Only horizontal borders allowed
--                top_char = '#',
--                bottom_char = '#',
--              },
--              list = {
--                position = 'right', -- Position of the list window 'left'|'right'
--                width = 0.20, -- 33% width relative to the active window, min 0.1, max 0.5
--              },
            })
        end
    }
}
