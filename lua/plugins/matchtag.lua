return {
  'leafOfTree/vim-matchtag',
  init = function()
    vim.g.vim_matchtag_enable_by_default = 1
    vim.g.vim_matchtag_files = '*.html,*.xml,*.js,*.jsx,*.ts,*.tsx,'
  end,
}

