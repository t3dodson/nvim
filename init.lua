local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = ' '
vim.opt.listchars = {
    --lead = '·',
    -- TODO, we default to four spaces, we should detect based on editorconfig and override this setting
    leadmultispace = '|···',
    trail = '!',
    -- eol = '$'
}
vim.opt.list = true

vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 5
if vim.fn.executable('pwsh') then
    vim.opt.shell = 'pwsh'
    vim.opt.shellcmdflag = '-NoLogo'
    vim.opt.shellredir = [[2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode]]
    vim.opt.shellpipe = [[2>&1 | %%{ "$_" } | tee %s; exit $LastExitCode]]
    vim.opt.shellquote = ''
    vim.opt.shellxquote = ''
end

-- nvim-tree recommends disabling built in netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require('lazy').setup('plugins')


vim.cmd.colorscheme 'catppuccin'
vim.cmd[[highlight Normal guibg=NONE ctermbg=NONE]]
vim.cmd[[highlight NormalNC guibg=NONE]]
vim.cmd[[highlight StatusLine guibg=NONE]]
vim.cmd[[highlight StatusLineNC guibg=NONE]]
vim.cmd[[highlight NvimTreeNormal guibg=NONE ctermbg=NONE]]
vim.cmd[[highlight NvimTreeWinSeparator guibg=NONE]]

-- keymaps
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
