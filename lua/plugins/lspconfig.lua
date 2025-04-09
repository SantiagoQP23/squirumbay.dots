return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      angularls = {
        cmd = {
          "ngserver",
          "--stdio",
          "--tsProbeLocations", vim.fn.expand("~/.nvm/versions/node/v23.7.0/lib/node_modules/typescript/lib"), -- update as needed
          "--ngProbeLocations", vim.fn.expand("~/.nvm/versions/node/v23.7.0/lib/node_modules/@angular/language-server"),
          "--angularOnlyUseProjectFiles",
          "--angularCoreVersion", "17" -- or whatever you're using
        },
        filetypes = { "typescript", "html", "typescriptreact" },
        root_dir = require("lspconfig").util.root_pattern("angular.json", "project.json"),
      },
    },
  },
}
