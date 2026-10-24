-- https://github.com/petertriho/nvim-scrollbar/issues/121
-- revert to main and remove next line after 2026-11-16
vim.g.scrollbar_v2_notice = false

-- Setup <leader> key. Setup must be done before Lazy loading.
vim.keymap.set("", "<Space>", "<Nop>") -- diable default <Space> behavior:
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.commands")

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
vim.lsp.enable({
  "lua_ls",
  "bashls",
  "buf_ls",
  "yamlls",
  "jsonls",
  "just",
  "ts_ls",
  "basedpyright",
  "ruff",
  "nil_ls",
})
