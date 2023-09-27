local lspconfig_is_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_is_ok then
  return
end

local diagnostic_config = require("plugins.lsp.diagnostic.diagnostic")

require("plugins.lsp.mason")
require("plugins.lsp.lsp-handlers").setup(diagnostic_config)

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
