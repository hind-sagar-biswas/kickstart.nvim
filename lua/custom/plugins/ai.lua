return {
  {
    'Exafunction/codeium.vim',
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      -- vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-;>', function()
        return vim.fn['codeium#CycleCompletions'](1)
      end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-,>', function()
        return vim.fn['codeium#CycleCompletions'](-1)
      end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-x>', function()
        return vim.fn['codeium#Clear']()
      end, { expr = true, silent = true })
    end,
  },
  -- {
  --   'github/copilot.vim',
  -- },
  {
    'zbirenbaum/copilot-cmp',
    after = { 'copilot.lua' },
    config = function()
      require('copilot_cmp').setup()
    end,
  },
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = { enabled = false },
        panel = { enabled = false },
      }
    end,
  },
}
