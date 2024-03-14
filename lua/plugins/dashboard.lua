return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup({
            config = {
            },
            theme = 'hyper',
            disable_move = true,
            hide = {
                statusline = true,
                tabline = true,
                winbar = true,
            },
        })
    end,
    dependencies = {{ 'nvim-tree/nvim-web-devicons' }}
}
