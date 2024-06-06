
return {
 {
 "AstroNvim/astrolsp",
 opts = {
  setup_handlers = {
   volar = function(_, opts)
        require("lspconfig").volar.setup {
          server = opts,
          filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
        }
       end,
       tsserver = function(_, opts)
        require("lspconfig").tsserver.setup {
          cmd = { "typescript-language-server", "--stdio" },
          filetypes = {'typescript', 'javascript', 'vue'}
        }
        end,   },
 }
 },
 {
"williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "tsserver", "lua_ls", "volar", "gopls"}, -- automatically install lsp
    },
 }
}

