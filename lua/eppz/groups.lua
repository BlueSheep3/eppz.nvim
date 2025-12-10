local M = {}

local colors = require("eppz.palette")

M.setup = function()
	return {
		-- ==== Standard ====

		-- general
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg, bg = colors.bgfloat },
		Visual = { bg = colors.visual },
		CursorLine = { bg = colors.bglight },
		CursorLineNr = { fg = colors.cursor_line_nr, bg = colors.bglight },
		LineNr = { fg = colors.line_nr, bg = colors.bglight },
		-- compatibility with 'mcauley-penney/visual-whitespace.nvim'
		VisualNonText = { fg = colors.visual_whitespace, bg = colors.visual },


		-- script
		Comment = { fg = colors.comment },

		Constant = { fg = colors.constant },
		String = { fg = colors.string },
		Character = { fg = colors.char },
		Number = { fg = colors.number },
		Boolean = { fg = colors.constant },
		Float = { fg = colors.number },

		Identifier = { fg = colors.variable },
		Function = { fg = colors.func },

		Statement = { fg = colors.func },
		Conditional = { fg = colors.keyword },
		Repeat = { fg = colors.keyword },
		Label = { fg = colors.keyword },
		Operator = { fg = colors.symbol },
		Keyword = { fg = colors.keyword },
		-- Exception = { fg = colors. },

		PreProc = { fg = colors.meta },
		Include = { fg = colors.meta },
		Define = { fg = colors.meta },
		Macro = { fg = colors.meta },
		PreCondit = { fg = colors.meta },

		Type = { fg = colors.type },
		StorageClass = { fg = colors.modifier },
		Structure = { fg = colors.keyword },
		Typedef = { fg = colors.type },

		Special = { fg = colors.special },
		SpecialChar = { fg = colors.special },
		-- Tag = { fg = colors. },
		-- Delimiter = { fg = colors. },
		-- SpecialComment = { fg = colors. },
		-- Debug = { fg = colors. },



		-- ==== Treesitter ====

		["@variable"] = { fg = colors.variable },
		["@variable.builtin"] = { fg = colors.other },
		["@property"] = { fg = colors.variable },

		["@constant"] = { fg = colors.constant },
		["@constant.builtin"] = { fg = colors.null },
		["@string"] = { fg = colors.string },
		["@string.escape"] = { fg = colors.string_escape },
		["@character"] = { fg = colors.char },
		["@boolean"] = { fg = colors.constant },
		["@number"] = { fg = colors.number },
		["@number.float"] = { fg = colors.number },

		["@type"] = { fg = colors.type },
		["@type.builtin"] = { fg = colors.builtin },

		["@attribute"] = { fg = colors.meta },
		["@attribute.builtin"] = { fg = colors.meta_dark },
		["@module"] = { fg = colors.module },
		["@label"] = { fg = colors.meta },

		["@function"] = { fg = colors.func },
		["@function.builtin"] = { fg = colors.func, bold = true },
		["@function.macro"] = { fg = colors.func, bold = true },
		["@lsp.type.macro"] = { fg = colors.func, bold = true },
		["@constructor"] = { fg = colors.type },

		["@keyword"] = { fg = colors.keyword },
		["@keyword.operator"] = { fg = colors.other },
		["@keyword.modifier"] = { fg = colors.modifier },
		["@keyword.directive"] = { fg = colors.meta },

		["@punctuation"] = { fg = colors.symbol },
		["@punctuation.special"] = { fg = colors.symbol },
		["@operator"] = { fg = colors.symbol },
		["@comment"] = { fg = colors.comment },

		["@markup.heading"] = { fg = colors.module, bold = true },
		["@markup.quote"] = { fg = colors.quote, italic = true },
		["@markup.math"] = { fg = colors.variable },
		["@markup.link"] = { fg = colors.string, underline = true },
		["@markup.link.label"] = { fg = colors.char, italic = true },
		["@markup.link.url"] = { fg = colors.string, underline = true },
		["@markup.raw"] = { fg = colors.constant },
		["@markup.list"] = { fg = colors.variable },
		["@markup.list.unchecked"] = { fg = colors.unchecked },
		["@markup.list.checked"] = { fg = colors.checked },

		["@tag"] = { fg = colors.type },
		["@tag.builtin"] = { fg = colors.builtin },
		["@tag.attribute"] = { fg = colors.variable },
		["@tag.delimiter"] = { fg = colors.symbol },


		-- == Language specific ==


		-- enumMembers in rust behave much closer to types
		-- (other languages will default to @constant)
		["@lsp.type.enumMember.rust"] = { fg = colors.type },

		-- for some reason, the Self type just shows up as a regular type
		["@lsp.type.selfTypeKeyword"] = { fg = colors.builtin },

		["@lsp.mod.consuming"] = { bold = true },
		["@lsp.mod.mutable"] = { italic = true },

		-- for some reason, inside macros this will be the token used for
		-- every keyword, even though the syntactic highlighting already
		-- works perfectly fine outside macros,
		-- so just disable this semantic highlighting token.
		["@lsp.type.keyword.rust"] = {},


		-- events in C# for some reason show up as types,
		-- even though they behave much closer to functions
		["@lsp.type.event.cs"] = { fg = colors.func, italic = true },

		-- i would want to use constant color for constants,
		-- but C# doesnt let me differentiate between constants and statics,
		-- so both of them will get the same color
		["@lsp.typemod.property.static.cs"] = { fg = colors.loc },

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
		["@lsp.typemod.variable.readonly.c"] = { fg = colors.constant },
		["@lsp.typemod.variable.readonly.cpp"] = { fg = colors.constant },
	}
end

return M
