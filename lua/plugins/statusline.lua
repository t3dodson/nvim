return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local winbar = {
            lualine_z = { 'filename' },
        }
        require('lualine').setup({
            options = {
                theme = 'catppuccin',
                globalstatus = true,
                component_separators = '',
                section_separators = '',
                disabled_filetypes = {
                    winbar = {
                        'help',
                        'NvimTree',
                    },
                },
            },
            winbar = winbar,
            inactive_winbar = winbar,
        })
    end,
}

