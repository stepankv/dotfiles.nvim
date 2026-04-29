-- https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#textDocument_semanticTokens
local M = {}
local palette = require("island-dark.palette")

---@return table<any,Highliht>
function M.groups()
  return {
    ["@lsp.type.type"] = { fg = palette.syntax.default.struct },
    ["@lsp.type.struct"] = { fg = palette.syntax.default.struct },
    ["@lsp.type.class"] = { fg = palette.syntax.default.struct },
    ["@lsp.type.interface"] = { fg = palette.syntax.default.struct },
    ["@lsp.type.macro"] = { fg = palette.syntax.default.metadata },
    ["@lsp.type.decorator"] = { fg = palette.syntax.default.metadata },
    ["@lsp.type.method"] = { fg = palette.syntax.default.function_call },
    ["@lsp.type.function"] = { fg = palette.syntax.default.function_call },
    ["@lsp.type.number"] = { fg = palette.syntax.default.number },
    ["@lsp.type.namespace"] = { fg = palette.syntax.default.foreground },
    ["@lsp.type.parameter"] = { fg = palette.syntax.default.foreground },
    ["@lsp.type.property"] = { fg = palette.syntax.default.property },
    ["@lsp.type.variable"] = { fg = palette.syntax.default.local_variable },
    ["@lsp.type.keyword"] = { fg = palette.syntax.default.keyword },
    ["@lsp.type.enumMember"] = { fg = palette.syntax.default.constant, italic = true },
    ["@lsp.type.enum"] = { fg = palette.syntax.default.struct },
    ["@lsp.type.typeParameter"] = { fg = palette.syntax.default.generic },
    ["@lsp.type.formatSpecifier"] = { fg = palette.syntax.default.keyword },
    ["@lsp.type.operator"] = { fg = palette.syntax.default.foreground },
    ["@lsp.type.builtinType"] = { fg = palette.syntax.default.keyword },
    ["@lsp.type.label"] = { fg = palette.syntax.default.label },
    -- https://github.com/stsewd/tree-sitter-comment/issues/22#issuecomment-1575804439
    ["@lsp.type.comment"] = {},
    ["@lsp.typemod.method.declaration"] = { fg = palette.syntax.default.function_declaration },
    ["@lsp.typemod.method.definition"] = { fg = palette.syntax.default.function_declaration },
    ["@lsp.typemod.function.declaration"] = { fg = palette.syntax.default.function_declaration },
    ["@lsp.typemod.function.definition"] = { fg = palette.syntax.default.function_declaration },
    ["@lsp.typemod.function.static"] = { fg = palette.syntax.default.function_declaration },
    ["@lsp.mod.static"] = { italic = true },

    -- Rust (rust-analyzer)
    ["@lsp.type.method.rust"] = { fg = palette.syntax.default.function_declaration },
    ["@lsp.type.function.rust"] = { fg = palette.syntax.default.function_declaration },
    ["@lsp.type.lifetime.rust"] = { fg = palette.syntax.rust.lifetime, italic = true },
    ["@lsp.type.selfTypeKeyword.rust"] = { fg = palette.syntax.default.keyword },
    ["@lsp.type.punctuation.rust"] = { fg = palette.syntax.default.foreground },
    ["@lsp.type.unresolvedReference.rust"] = { fg = palette.editor.diagnostic.unresolved },
    -- unsafe
    ["@lsp.typemod.method.unsafe.rust"] = { bg = palette.syntax.rust.unsafe },
    ["@lsp.typemod.function.unsafe.rust"] = { bg = palette.syntax.rust.unsafe },
    ["@lsp.typemod.static.unsafe.rust"] = { bg = palette.syntax.rust.unsafe },
    ["@lsp.typemod.operator.unsafe.rust"] = { bg = palette.syntax.rust.unsafe },
    -- muatable variables
    ["@lsp.typemod.selfKeyword.mutable.rust"] = { underline = true },
    ["@lsp.typemod.parameter.mutable.rust"] = { underline = true },
    ["@lsp.typemod.variable.mutable.rust"] = { underline = true },
    ["@lsp.typemod.static.mutable.rust"] = { underline = true },
    -- documentation and example code comments
    ["@lsp.typemod.comment.injected.rust"] = { fg = palette.syntax.default.comment },
    ["@lsp.type.boolean.rust"] = { fg = palette.syntax.default.keyword },
    ["@lsp.type.arithmetic.rust"] = { fg = palette.syntax.default.foreground },
    ["@lsp.type.negation.rust"] = { fg = palette.syntax.default.foreground },
    ["@lsp.typemod.generic.injected.rust"] = { fg = palette.syntax.default.foreground },
    ["@lsp.mod.intraDocLink.rust"] = { fg = palette.render.md.link },

    ["@lsp.type.selfKeyword.rust"] = { fg = palette.syntax.rust.self },
    ["@lsp.type.struct.rust"] = { fg = palette.syntax.rust.struct },
    ["@lsp.type.enum.rust"] = { fg = palette.syntax.rust.struct, italic = true },
    ["@lsp.type.enumMember.rust"] = { fg = palette.syntax.rust.enum_member, italic = true },
    ["@lsp.type.typeAlias.rust"] = { fg = palette.syntax.rust.struct, italic = true },
    ["@lsp.type.interface.rust"] = { fg = palette.syntax.rust.trait },
    ["@lsp.typemod.method.trait.rust"] = { italic = true },
    ["@lsp.typemod.namespace.crateRoot.rust"] = { fg = palette.syntax.rust.crate_name },
    ["@lsp.typemod.operator.controlFlow.rust"] = { fg = palette.syntax.rust.question },
    ["@lsp.type.macro.rust"] = { fg = palette.syntax.rust.macros_functional },
    ["@lsp.type.procMacro.rust"] = { fg = palette.syntax.rust.macros_functional },
    ["@lsp.type.attributeBracket.rust"] = { fg = palette.syntax.default.metadata }, -- macro brackets

    -- Protobuf (buf)
    ["@lsp.type.type.proto"] = { fg = palette.syntax.default.keyword },
    ["@lsp.type.decorator.proto"] = { fg = palette.syntax.default.struct },
    ["@lsp.type.modifier.proto"] = { fg = palette.syntax.default.keyword },

    -- TypeScript (ts_ls)
    ["@lsp.type.variable.typescript"] = { fg = palette.syntax.ts.local_variable },
    ["@lsp.type.method.typescript"] = { fg = palette.syntax.default.function_declaration },
    ["@lsp.type.function.typescript"] = { fg = palette.syntax.default.function_declaration },
    ["@lsp.type.typeParameter.typescript"] = { fg = palette.syntax.ts.generic },
    ["@lsp.typemod.variable.local.typescript"] = { fg = palette.syntax.ts.local_variable },
    ["@lsp.typemod.variable.defaultLibrary.typescript"] = { fg = palette.syntax.default.property, italic = true },
    ["@lsp.typemod.class.defaultLibrary.typescript"] = { fg = palette.syntax.default.function_declaration },

    -- JavaScript (ts_ls)
    ["@lsp.type.variable.javascript"] = { fg = palette.syntax.ts.local_variable },
    ["@lsp.type.method.javascript"] = { fg = palette.syntax.default.function_declaration },
    ["@lsp.type.function.javascript"] = { fg = palette.syntax.default.function_declaration },
    ["@lsp.type.typeParameter.javascript"] = { fg = palette.syntax.ts.generic },
    ["@lsp.typemod.variable.local.javascript"] = { fg = palette.syntax.ts.local_variable },
    ["@lsp.typemod.variable.defaultLibrary.javascript"] = { fg = palette.syntax.default.function_declaration },
    ["@lsp.typemod.class.defaultLibrary.javascript"] = { fg = palette.syntax.default.function_declaration },

    -- Python (basedpyright)
    ["@lsp.mod.builtin.python"] = { fg = palette.syntax.python.builtin },
    ["@lsp.typemod.variable.readonly.python"] = { fg = palette.syntax.default.constant, italic = true },

    -- Just (just-lsp)
    ["@lsp.type.variable.just"] = { fg = palette.syntax.default.property, italic = true },

    -- Nix (nil_ls)
    ["@lsp.type.function.nix"] = { fg = palette.syntax.default.function_declaration },

    LspInlayHint = { fg = palette.syntax.default.inline_hint_fg, bg = palette.syntax.default.inline_hint_bg },
    LspReferenceText = { bg = palette.editor.scope.same_token },
    LspReferenceRead = { bg = palette.editor.scope.read_variable },
    LspReferenceWrite = { bg = palette.editor.scope.write_variable },
    LspCodeLens = { fg = palette.hint_text },
  }
end

return M
