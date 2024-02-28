local on_attach = require("util.lsp").on_attach
return {
  'mrcjkb/rustaceanvim',
  version = '^4', -- Recommended
  ft = { 'rust' },
  opts = {
    server = {
      on_attach = on_attach,
      default_settings = {
        -- rust-analyzer language server configuration
        ["rust-analyzer"] = {
         cargo = {
           allFeatures = true,
           loadOutDirsFromCheck = true,
           runBuildScripts = true,
         },
         -- Add clippy lints for Rust.
         checkOnSave = {
           allFeatures = true,
           command = "clippy",
           extraArgs = { "--no-deps" },
         },
         procMacro = {
           enable = true,
           ignored = {
             ["async-trait"] = { "async_trait" },
             ["napi-derive"] = { "napi" },
             ["async-recursion"] = { "async_recursion" },
           },
         },
        },
      },
    },
  },
  config = function(_, opts)
    vim.g.rustaceanvim = vim.tbl_deep_extend("force", {}, opts or {})
    end
}
