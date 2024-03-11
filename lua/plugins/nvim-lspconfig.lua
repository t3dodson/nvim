return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        require('lspconfig')['lua_ls'].setup({})
        require('lspconfig')['powershell_es'].setup({
            -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#powershell_es
            bundle_path = vim.fn.stdpath('data') .. '/mason/packages/powershell-editor-services/'
        })
    end,
}