return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    local modules = { 'ai', 'surround', 'pairs', 'move', 'animate' }
    for _, module in ipairs(modules) do
      require('mini.' .. module).setup()
    end
  end,
}
