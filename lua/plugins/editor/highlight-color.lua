return {
    "brenoprata10/nvim-highlight-colors",
    config = function ()
        require("nvim-highlight-colors").setup({
            ---@usage 'background'|'foreground'|'virtual'
            render = 'background',

            ---Set virtual symbol (requires render to be set to 'virtual')
            virtual_symbol = '■',
            virtual_symbol_prefix = '',
            virtual_symbol_suffix = ' ',

            ---@usage 'inline'|'eol'|'eow'
            virtual_symbol_position = 'inline',

            ---Enable color type
            enable_hex = true, ---#FFFFFF
            enable_short_hex = true, ---#fff
            enable_rgb = true, ---rgb(0 0 0)
            enable_hsl = true, ---hsl(150deg 30% 40%)
            enable_ansi = true, ---\033[0;34m
            enable_hsl_without_function = true, -----foreground: 0 69% 69%;
            enable_var_usage = true, ---var(--testing-color)
            enable_named_colors = true, ---green
            enable_tailwind = true, ---bg-blue-500

            ---Set custom colors :help string.gmatch
            custom_colors = {
                { label = '%-%-theme%-primary%-color', color = '#0f1219' },
                { label = '%-%-theme%-secondary%-color', color = '#5a5d64' },
            },

            exclude_filetypes = {},
            exclude_buftypes = {},
            exclude_buffer = function(bufnr) end
        })
    end
}
