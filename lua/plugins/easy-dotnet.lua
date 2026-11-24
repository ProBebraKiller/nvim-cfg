return {
  "GustavEikaas/easy-dotnet.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "folke/snacks.nvim" },
  config = function()
    require("easy-dotnet").setup({
      {
        lsp = {
          enabled = true,
          config = {
            settings = {
              ["csharp|background_analysis"] = {
                dotnet_analyzer_diagnostics_scope = "fullSolution",
                dotnet_compiler_diagnostics_scope = "fullSolution",
              },
            },
          },
        },
      },
    })
  end,
}
