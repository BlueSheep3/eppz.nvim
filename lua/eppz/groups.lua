local M = {}

local colors = require("eppz.palette")

M.setup = function()
	return {
		-- ==== Standard ====

		-- general
		Normal = { fg = colors.fg, bg = colors.bg, ctermfg = 7, ctermbg = 0 },
		NormalFloat = { fg = colors.fg, bg = colors.bgfloat, ctermfg = 15, ctermbg = 8 },
		Visual = { bg = colors.visual, ctermbg = 14 },
		CursorLine = { bg = colors.bglight },
		CursorLineNr = { fg = colors.cursor_line_nr, bg = colors.bglight },
		LineNr = { fg = colors.line_nr, bg = colors.bglight },
		-- compatibility with 'mcauley-penney/visual-whitespace.nvim'
		VisualNonText = { fg = colors.visual_whitespace, bg = colors.visual, ctermfg = 0, ctermbg = 14 },

		StatusLine = { bg = colors.statusline, ctermbg = 4 },
		StatusLineNC = { bg = colors.unimportant, ctermbg = 6 },
		TabLine = { bg = colors.unimportant, ctermbg = 6 },
		TabLineFill = { bg = colors.unimportant, ctermbg = 6 },
		TabLineSel = { bg = colors.current_tab, ctermbg = 12 },


		-- script
		Comment = { fg = colors.comment, ctermfg = 8 },

		Constant = { fg = colors.constant, ctermfg = 12 },
		String = { fg = colors.string, ctermfg = 6 },
		Character = { fg = colors.char, ctermfg = 6 },
		Number = { fg = colors.number, ctermfg = 12 },
		Boolean = { fg = colors.constant, ctermfg = 12 },
		Float = { fg = colors.number, ctermfg = 12 },

		Identifier = { fg = colors.variable, ctermfg = 11 },
		Function = { fg = colors.func, ctermfg = 2 },

		Statement = { fg = colors.func, ctermfg = 2 },
		Conditional = { fg = colors.keyword, ctermfg = 3 },
		Repeat = { fg = colors.keyword, ctermfg = 3 },
		Label = { fg = colors.keyword, ctermfg = 3 },
		Operator = { fg = colors.symbol, ctermfg = 7 },
		Keyword = { fg = colors.keyword, ctermfg = 3 },
		-- Exception = { fg = colors. },

		PreProc = { fg = colors.meta, ctermfg = 4 },
		Include = { fg = colors.meta, ctermfg = 4 },
		Define = { fg = colors.meta, ctermfg = 4 },
		Macro = { fg = colors.meta, ctermfg = 4 },
		PreCondit = { fg = colors.meta, ctermfg = 4 },

		Type = { fg = colors.type, ctermfg = 9 },
		StorageClass = { fg = colors.modifier, ctermfg = 3 },
		Structure = { fg = colors.keyword, ctermfg = 3 },
		Typedef = { fg = colors.type, ctermfg = 9 },

		Special = { fg = colors.special, ctermfg = 5 },
		SpecialChar = { fg = colors.special, ctermfg = 5 },
		-- Tag = { fg = colors. },
		-- Delimiter = { fg = colors. },
		-- SpecialComment = { fg = colors. },
		-- Debug = { fg = colors. },



		-- ==== Treesitter ====

		["@variable"] = { fg = colors.variable, ctermfg = 11 },
		["@variable.builtin"] = { fg = colors.other, ctermfg = 11 },
		["@property"] = { fg = colors.variable, ctermfg = 11 },

		["@constant"] = { fg = colors.constant, ctermfg = 12 },
		["@constant.builtin"] = { fg = colors.null, ctermfg = 12 },
		["@string"] = { fg = colors.string, ctermfg = 6 },
		["@string.escape"] = { fg = colors.string_escape, ctermfg = 14 },
		["@character"] = { fg = colors.char, ctermfg = 6 },
		["@boolean"] = { fg = colors.constant, ctermfg = 12 },
		["@number"] = { fg = colors.number, ctermfg = 12 },
		["@number.float"] = { fg = colors.number, ctermfg = 12 },

		["@type"] = { fg = colors.type, ctermfg = 9 },
		["@type.builtin"] = { fg = colors.builtin, ctermfg = 1 },

		["@attribute"] = { fg = colors.meta, ctermfg = 4 },
		["@attribute.builtin"] = { fg = colors.meta_dark, ctermfg = 4 },
		["@module"] = { fg = colors.module, ctermfg = 7 },
		["@label"] = { fg = colors.meta, ctermfg = 4 },

		["@function"] = { fg = colors.func, ctermfg = 2 },
		["@function.builtin"] = { fg = colors.func, bold = true, ctermfg = 2 },
		["@function.macro"] = { fg = colors.func, bold = true, ctermfg = 2 },
		["@lsp.type.macro"] = { fg = colors.func, bold = true, ctermfg = 2 },
		["@constructor"] = { fg = colors.type, ctermfg = 9 },

		["@keyword"] = { fg = colors.keyword, ctermfg = 3 },
		["@keyword.operator"] = { fg = colors.other, ctermfg = 3 },
		["@keyword.modifier"] = { fg = colors.modifier, ctermfg = 3 },
		["@keyword.directive"] = { fg = colors.meta, ctermfg = 4 },

		["@punctuation"] = { fg = colors.symbol, ctermfg = 7 },
		["@punctuation.special"] = { fg = colors.symbol, ctermfg = 7 },
		["@operator"] = { fg = colors.symbol, ctermfg = 7 },
		["@comment"] = { fg = colors.comment, ctermfg = 8 },

		["@markup.heading"] = { fg = colors.module, bold = true, ctermfg = 15 },
		["@markup.quote"] = { fg = colors.quote, italic = true, ctermfg = 14 },
		["@markup.math"] = { fg = colors.variable, ctermfg = 11 },
		["@markup.link"] = { fg = colors.string, underline = true, ctermfg = 6 },
		["@markup.link.label"] = { fg = colors.char, italic = true, ctermfg = 6 },
		["@markup.link.url"] = { fg = colors.string, underline = true, ctermfg = 6 },
		["@markup.raw"] = { fg = colors.constant, ctermfg = 12 },
		["@markup.list"] = { fg = colors.variable, ctermfg = 11 },
		["@markup.list.unchecked"] = { fg = colors.unchecked, ctermfg = 1 },
		["@markup.list.checked"] = { fg = colors.checked, ctermfg = 2 },

		["@tag"] = { fg = colors.type, ctermfg = 9 },
		["@tag.builtin"] = { fg = colors.builtin, ctermfg = 1 },
		["@tag.attribute"] = { fg = colors.variable, ctermfg = 11 },
		["@tag.delimiter"] = { fg = colors.symbol, ctermfg = 7 },


		-- == Language specific ==


		["@lsp.mod.consuming"] = { bold = true },
		["@lsp.mod.mutable"] = { italic = true },


		-- enumMembers in rust behave much closer to types
		-- (other languages will default to @constant)
		["@lsp.type.enumMember.rust"] = { fg = colors.type, ctermfg = 9 },

		-- for some reason, the Self type just shows up as a regular type
		["@lsp.type.selfTypeKeyword"] = { fg = colors.builtin, ctermfg = 1 },

		["@lsp.type.lifetime.rust"] = { fg = colors.lifetime, ctermfg = 5 },

		-- for some reason, inside macros this will be the token used for
		-- every keyword, even though the syntactic highlighting already
		-- works perfectly fine outside macros,
		-- so just disable this semantic highlighting token.
		["@lsp.type.keyword.rust"] = {},

		-- associated type aliases get highlighted as being constants???
		["@lsp.type.typeAlias.rust"] = { fg = colors.type, ctermfg = 9 },


		-- events in C# for some reason show up as types,
		-- even though they behave much closer to functions
		["@lsp.type.event.cs"] = { fg = colors.func, italic = true, ctermfg = 2 },

		-- i would want to use constant color for constants,
		-- but C# doesnt let me differentiate between constants and statics,
		-- so both of them will get the same color
		["@lsp.typemod.property.static.cs"] = { fg = colors.loc, ctermfg = 11 },

		-- the newer C# LSPs use the token @lsp.type.keyword.cs for all keywords,
		-- but i want to be able to differentiate all of the keywords,
		-- so this will just disable @lsp.type.keyword.cs completely,
		-- which means the syntactical highlighting will be used instead.
		["@lsp.type.keyword.cs"] = {},

		-- this token overrides both the escape character highlighting
		-- and the character highlighting that the syntax can already 
		-- parse perfectly fine on its own.
		["@lsp.type.string.cs"] = {},


		-- a lot of keywords in Java get incorrectly classified as modifiers,
		-- and this token actually links to @type instead of @keyword.modifier.
		["@lsp.type.modifier.java"] = {},


		-- @lsp.type.variable.c has a higher priority than @constant.c,
		-- so this uses a token with even higher priority to use the constant color.
		["@lsp.typemod.variable.readonly.c"] = { fg = colors.constant, ctermfg = 12 },
		["@lsp.typemod.variable.readonly.cpp"] = { fg = colors.constant, ctermfg = 12 },


		-- in a definition of an error type in zig, the error tags
		-- just show up as "variable.zig", despite behaving more like enum members
		["@lsp.type.errorTag.zig"] = { fg = colors.constant, ctermfg = 12 },

		-- @lsp.type.string.zig overrides the treesitter token for escape sequences.
		["@lsp.type.escapeSequence.zig"] = { fg = colors.string_escape, ctermfg = 14 },

		-- disables semantic highlighting of comments in zig, because comments really
		-- don't have anything that treesitter can't parse, and the semantic highlighting
		-- can override highlighting from other things such as diagnostic comments.
		["@lsp.type.comment.zig"] = {},

		-- syntax highlighting is good enough to be able to detect keywords,
		-- and zig's lsp describes most keywords as just "@lsp.type.keyword.zig",
		-- instead of a more specific description, like "keyword.modifier.zig".
		["@lsp.type.keyword.zig"] = {},

		-- builtin types types don't have the darker color in zig, and in some cases
		-- variable declerations of types may incorrectly be classified as variables,
		-- instead of types. both of these could potentially be fixed by disabling
		-- semantic highlighting of variables and types. however, disabling those
		-- makes you lose helpfull semantic highlighting in a lot of situations.
	}
end

return M
