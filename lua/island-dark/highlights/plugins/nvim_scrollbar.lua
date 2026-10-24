local M = {}
local palette = require("island-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    ScrollbarThumb = { bg = palette.scroll_bar.background },
    ScrollbarError = { fg = palette.scroll_bar.diagnostic.error },
    ScrollbarErrorThumb = { bg = palette.scroll_bar.background, fg = palette.scroll_bar.diagnostic.error },
    ScrollbarWarn = { fg = palette.scroll_bar.diagnostic.warn },
    ScrollbarWarnThumb = { bg = palette.scroll_bar.background, fg = palette.scroll_bar.diagnostic.warn },
    ScrollbarInfo = { fg = palette.editor.diagnostic.info },
    ScrollbarInfoThumb = { bg = palette.scroll_bar.background, fg = palette.editor.diagnostic.info },
    ScrollbarHint = { fg = palette.editor.diagnostic.weak_warn },
    ScrollbarHintThumb = { bg = palette.scroll_bar.background, fg = palette.editor.diagnostic.weak_warn },
    ScrollbarGitAdd = { fg = palette.scroll_bar.vcs.added_line },
    ScrollbarGitAddThumb = { bg = palette.scroll_bar.background, fg = palette.scroll_bar.vcs.added_line },
    ScrollbarGitChange = { fg = palette.scroll_bar.vcs.changed_line },
    ScrollbarGitChangeThumb = { bg = palette.scroll_bar.background, fg = palette.scroll_bar.vcs.changed_line },
    ScrollbarGitDelete = { fg = palette.scroll_bar.vcs.deleted_line },
    ScrollbarGitDeleteThumb = { bg = palette.scroll_bar.background, fg = palette.scroll_bar.vcs.deleted_line },
  }
end

return M
