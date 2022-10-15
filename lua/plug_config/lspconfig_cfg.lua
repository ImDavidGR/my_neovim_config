local status, nvim_lsp = pcall(require, 'lspconfig')
if not status then return end


local on_attach = function(client, bufnr)
   if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_command [[augroup Format]]
      vim.api.nvim_command [[autocmd! * <buffer>]]
      vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
      vim.api.nvim_command [[augroup END]]
   end
end

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.intelephense.setup {
   on_attach = on_attach
}

nvim_lsp.pylsp.setup {
   on_attach = on_attach
}

nvim_lsp.jedi_language_server.setup {
   on_attach = on_attach
}

nvim_lsp.jsonls.setup {
   capabilities = capabilities,
   on_attach = on_attach
}

nvim_lsp.emmet_ls.setup {}

nvim_lsp.tsserver.setup {
   capabilities = capabilities,
   on_attach = on_attach,
   fyletypes = { "typescript", "typescriptreact", "typescript.tsx" },
   cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.angularls.setup {
   on_attach = on_attach
}

nvim_lsp.html.setup {
   capabilities = capabilities,
}

nvim_lsp.cssls.setup {
   capabilities = capabilities,
}

nvim_lsp.sumneko_lua.setup {
   on_attach = on_attach,
   settings = {
      Lua = {
         diagnostics = {
            -- Get the language server to recognize the 'vim' global
            globals = { 'vim' }
         },
         workspaces = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true)
         }
      }
   },
}
