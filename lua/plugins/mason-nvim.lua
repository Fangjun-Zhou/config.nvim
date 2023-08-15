return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "clangd",
      "clang-format",
      "debugpy",
      "neocmakelsp",
      "cmakelang",
      "cpptools",
      "marksman",
      "python-lsp-server",
      "rust-analyzer",
      "texlab",
      "typescript-language-server",
    },
  },
  init = function()
    require("lspconfig").pylsp.setup({
      filetypes = {
        "python",
        "ipynb",
      },
    })
  end,
}
