return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'hyper',
        config = {
          week_header = {
            enable = true,
          },
          shortcut = {
            { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
            {
              icon = ' ',
              icon_hl = '@variable',
              desc = 'Files',
              group = 'Label',
              action = 'Telescope find_files',
              key = 'f',
            },
            {
              icon = ' ',
              icon_hl = '@variable',
              desc = 'Last Session',
              group = 'Diagnostic',
              action = "lua require('persistence').load({ last = true })",
              key = 's',
            },
            {
              icon = ' ',
              icon_hl = '@variable',
              desc = 'NVim Config',
              group = 'Custom',
              action = "lua require('telescope.builtin').find_files({ cwd = vim.fn.stdpath('config'), prompt_title = 'Neovim Config' })",
              key = 'c',
            },
          },
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
}
