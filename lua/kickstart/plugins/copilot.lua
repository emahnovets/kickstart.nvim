-- ~/.config/nvim/lua/plugins/copilot.lua
return {
  'github/copilot.vim',
  event = 'InsertEnter',
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true

    vim.keymap.set('i', '<C-y>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
      desc = 'Copilot: Accept suggestion',
    })

    vim.keymap.set('i', '<C-n>', '<Plug>(copilot-next)', { desc = 'Copilot: Next suggestion' })
    vim.keymap.set('i', '<C-p>', '<Plug>(copilot-previous)', { desc = 'Copilot: Previous suggestion' })
    vim.keymap.set('i', '<C-c>', '<Plug>(copilot-dismiss)', { desc = 'Copilot: Dismiss' })
  end,
}
