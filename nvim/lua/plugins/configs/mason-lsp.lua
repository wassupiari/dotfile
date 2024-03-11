return {
  'williamboman/mason-lspconfig.nvim',
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    local m = require("mason-lspconfig")

    m.setup({
      ensure_installed = {
        "lua_ls",
        "pyright",
        "cssls",
        "tailwindcss",
        "eslint",
        "emmet_ls",
        "clangd",
      }
    })

    m.setup_handlers {
      function(server)
        require('lspconfig')[server].setup({
          on_attach = function(client)
            require("lsp-format").on_attach(client)
          end
        })
      end
    }
  end,
}
