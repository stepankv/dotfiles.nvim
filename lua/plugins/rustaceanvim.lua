return {
  "mrcjkb/rustaceanvim",
  version = "^6",
  lazy = false,
  config = function()
    vim.g.rustaceanvim = {
      server = {
        -- use the rustup-managed rust-analyzer instead of the standalone binary,
        -- so that the project's toolchain (stable/nightly) and its sysroot resolve correctly
        cmd = { "rustup", "run", "stable", "rust-analyzer" },
        default_settings = {
          ["rust-analyzer"] = {
            check = {
              command = "check",
            },
            files = {
              exclude = { "target", ".git", ".idea" },
            },
            inlayHints = {
              closingBraceHints = { enable = false },
              parameterHints = { enable = false },
            },
            completion = {
              autoimport = { enable = true },
              fullFunctionSignatures = { enable = true },
              callable = { snippets = "add_parentheses" },
              limit = 100,
            },
            lens = { enable = false },
          },
        },
      },
    }
  end,
}
