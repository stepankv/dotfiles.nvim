-- Scrollbar
return {
  "petertriho/nvim-scrollbar",
  branch = "refactor/v2",
  dependencies = { "lewis6991/gitsigns.nvim" },
  opts = {
    scrollbar = {
      hide_if_all_visible = false,
      layout = {
        columns = { { "thumb", "marks" } },
      },
      thumb = {
        blend = 0,
        highlight = "ScrollbarThumb",
      },
    },
    providers = {
      cursor = false,
      gitsigns = true,
      search = false,
      marks = false,
    },
    exclude = {
      filetypes = {
        "dropbar_menu",
        "dropbar_menu_fzf",
        "DressingInput",
        "prompt",
        "NvimTree",
        "lazy",
      },
    },
    marks = {
      Error = {
        text = { "󰍴", "󰇼" },
      },
      Warn = {
        text = { "󰍴", "󰇼" },
      },
      Info = {
        text = { "󰍴", "󰇼" },
      },
      Hint = {
        text = { "󰍴", "󰇼" },
      },
      GitAdd = {
        text = "┃",
      },
      GitChange = {
        text = "┃",
      },
      GitDelete = {
        text = "▁",
      },
    },
  },
}
