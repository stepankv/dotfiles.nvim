-- :h key-notation
local map = vim.keymap.set
local unmap = vim.keymap.del

-- :verbose map - see all mappings
-- Remove default keybindings that cause `gr` delay
unmap("n", "gri")
unmap("n", "grr")
unmap("n", "gra")
unmap("n", "grn")
unmap("n", "grt")
unmap("n", "grx")

local function opts(arg)
  return {
    desc = arg.desc,
    noremap = arg.noremap or true,
    silent = arg.silent or true,
    nowait = arg.nowait or false,
  }
end

local function describe_diagnostic()
  vim.diagnostic.open_float({
    focusable = false,
    close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
    scope = "cursor",
  })
end

map({ "n", "x" }, "gh", "_", opts({ desc = "Go to the first non-blank character" }))
map({ "n", "x" }, "gl", "g_", opts({ desc = "Go to the last non-blank character" }))
map("n", "tt", describe_diagnostic, opts({ desc = "Show diagnostic popup" }))
map("n", "<leader>w", "<cmd>w<CR>", opts({ desc = "Write the buffer to the current file" }))
map("n", "<leader>W", "<cmd>wa<CR>", opts({ desc = "Write all changed buffers" }))
map("n", "<leader>qa", "<cmd>qa<CR>", opts({ desc = "Exit nvim" }))
map("n", "<leader>xa", "<cmd>xa<CR>", opts({ desc = "Write all changed buffers and exit nvim" }))
map("n", "<leader>r", vim.lsp.buf.rename, { desc = "LSP rename" })

-- Resize window using
map("n", "<M-Up>", "<cmd>resize +2<cr>", opts({ desc = "Increase window height" }))
map("n", "<M-Down>", "<cmd>resize -2<cr>", opts({ desc = "Decrease window height" }))
map("n", "<M-Left>", "<cmd>vertical resize -2<cr>", opts({ desc = "Decrease window width" }))
map("n", "<M-Right>", "<cmd>vertical resize +2<cr>", opts({ desc = "Increase window width" }))

-- Move cursor between windows
map("n", "<M-k>", "<cmd>wincmd k<cr>", opts({ desc = "Move cursor to window above current" }))
map("n", "<M-j>", "<cmd>wincmd j<cr>", opts({ desc = "Move cursor to window below current" }))
map("n", "<M-h>", "<cmd>wincmd h<cr>", opts({ desc = "Move cursor to window left of current" }))
map("n", "<M-l>", "<cmd>wincmd l<cr>", opts({ desc = "Move cursor to window right of current" }))

-- Same physical keys on the Russian keyboard layout
map("n", "<M-л>", "<cmd>wincmd k<cr>", opts({ desc = "Move cursor to window above current" }))
map("n", "<M-о>", "<cmd>wincmd j<cr>", opts({ desc = "Move cursor to window below current" }))
map("n", "<M-р>", "<cmd>wincmd h<cr>", opts({ desc = "Move cursor to window left of current" }))
map("n", "<M-д>", "<cmd>wincmd l<cr>", opts({ desc = "Move cursor to window right of current" }))

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", opts({ desc = "Escape and clear hlsearch" }))
