return {

  'mg979/vim-visual-multi',
  branch = 'master',
  config = function()
    vim.g.VM_theme = 'molokai'
    vim.g.VM_maps = {
      ['Select All'] = '<C-a>',
    }
  end,
}
