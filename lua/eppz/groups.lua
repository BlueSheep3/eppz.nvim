local M = {}

local colors = require("eppz.palette")

M.setup = function()
	local G = {
		-- ==== Standard ====

		-- general
		Normal = { fg = colors.fg, bg = colors.bg },
		Visual = { bg = colors.visual },
		CursorLine = { bg = colors.bglight },
		CursorLineNr = { fg = colors.cursor_line_nr, bg = colors.bglight },
		LineNr = { fg = colors.line_nr, bg = colors.bglight },

		-- text
		Comment = { fg = colors.comment, italic = true },
		Special = { fg = colors.special },
		Identifier = { fg = colors.variable },

		-- literals
		Constant = { fg = colors.constant },
		String = { fg = colors.string },


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
		["@constructor"] = { fg = colors.func_other },

		["@keyword"] = { fg = colors.keyword },
		["@keyword.operator"] = { fg = colors.other },
		["@keyword.modifier"] = { fg = colors.modifier },
		["@keyword.directive"] = { fg = colors.meta },

		["@punctuation"] = { fg = colors.symbol },
		["@punctuation.special"] = { fg = colors.symbol },
		["@operator"] = { fg = colors.symbol },
		["@comment"] = { fg = colors.comment },

		-- == Language specific ==

		-- enumMembers in rust behave much closer to types
		-- (other languages will default to @constant)
		["@lsp.type.enumMember.rust"] = { fg = colors.type },

		-- for some reason, the Self type just shows up as a regular type
		["@lsp.type.selfTypeKeyword"] = { fg = colors.builtin },

		-- events in C# for some reason show up as types,
		-- even though they behave much closer to functions
		["@lsp.type.event.cs"] = { fg = colors.func, italic = true },

		-- i would want to use constant color for constants,
		-- but C# doesnt let me differentiate between constans and statics,
		-- so both of them will get the same color
		["@lsp.typemod.property.static.cs"] = { fg = colors.loc },
	}

	-- the newer C# LSPs use the token @lsp.type.keyword.cs for all keywords,
	-- but i want to be able to differentiate all of the keywords,
	-- so this will just disable @lsp.type.keyword.cs completely,
	-- which means the syntactical highlighting will be used instead.
	vim.api.nvim_set_hl(0, "@lsp.type.keyword.cs", {})

	-- this token overrides both the escape character highlighting
	-- and the character highlighting that the syntax can already 
	-- parse perfectly fine on its own.
	vim.api.nvim_set_hl(0, "@lsp.type.string.cs", {})

	return G
end


return M
