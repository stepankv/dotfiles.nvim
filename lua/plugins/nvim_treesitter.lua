local langs = {
  "c",
  "cpp",
  "lua",
  "vim",
  "vimdoc",
  "query",
  "markdown",
  "markdown_inline",
  "rust",
  "kotlin",
  "java",
  "scala",
  "json",
  "toml",
  "yaml",
  "xml",
  "bash",
  "go",
  "proto",
  "dockerfile",
  "editorconfig",
  "sql",
  "just",
  "javascript",
  "typescript",
  "html",
  "comment",
  "regex",
  "python",
  "gitcommit",
  "wit",
  "nix",
  "make",
}

vim.api.nvim_create_user_command("TSInstallList", function()
  require("nvim-treesitter").install(langs):wait(1000 * 30) -- 30 seconds. For autoinstall via script.
end, {})

vim.api.nvim_create_autocmd("FileType", {
  pattern = langs,
  callback = function(_args)
    vim.treesitter.start()
  end,
})

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
}
