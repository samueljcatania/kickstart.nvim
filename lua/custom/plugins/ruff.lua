return {
  require('lspconfig').ruff.setup {
    on_attach = function(client, bufnr)
      if client.name == 'ruff' then
        -- Defer hover and similar capabilities to Pyright if needed
        client.server_capabilities.hoverProvider = false
      end
    end,
    init_options = {
      settings = {
        logLevel = 'debug',
      },
      configuration = {
        format = {
          ['quote-style'] = 'single',
        },
      },
    },
  },
}
