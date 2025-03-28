return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim',
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    local neogit = require 'neogit'

    -- Key mappings
    vim.keymap.set('n', '<leader>gs', neogit.open, { silent = true, noremap = true, desc = 'Open Neogit' })
    vim.keymap.set('n', '<leader>gc', ':Neogit commit<CR>', { silent = true, noremap = true })
    vim.keymap.set('n', '<leader>gp', ':Neogit pull<CR>', { silent = true, noremap = true })
    vim.keymap.set('n', '<leader>gP', ':Neogit push<CR>', { silent = true, noremap = true })
    vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>', { silent = true, noremap = true })
    vim.keymap.set('n', '<leader>gB', ':G blame<CR>', { silent = true, noremap = true })
  end,
}
