return {
  require('lspconfig').pyright.setup {
    settings = {
      pyright = {
        -- Using Ruff's import organizer
        reportUnusedImport = false,
        reportImportsNotUsedAsCode = false,
        disableOrganizeImports = true,
      },
      python = {
        analysis = {
          -- Ignore all files for analysis to exclusively use Ruff for linting
          ignore = { '*' },
          reportUnusedImport = false,
          reportImportsNotUsedAsCode = false,
        },
      },
    },
  },
}
