local M = {}

local colors = require("eppz.palette")

M.setup = function()
	return {
		-- ==== Standard ====

		-- general
		Normal = { fg = colors.fg, bg = colors.bg },
		CursorLine = { bg = colors.bglight },
		CursorLineNr = { fg = colors.cursor_line_nr, bg = colors.bglight },
		LineNr = { fg = colors.line_nr, bg = colors.bglight },

		-- text
		Comment = { fg = colors.comment, italic = true },
		Special = { fg = colors.symbol },
		Identifier = { fg = colors.variable },

		-- literals
		Constant = { fg = colors.constant },
		String = { fg = colors.string },


		-- ==== Treesitter ====

		["@variable"] = { fg = colors.variable },
		["@variable.builtin"] = { fg = colors.loc },
		["@property"] = { fg = colors.variable },
		["@constant"] = { fg = colors.constant },
		["@constant.builtin"] = { fg = colors.null },
		["@module"] = { fg = colors.module },
		["@string"] = { fg = colors.string },
		["@character"] = { fg = colors.char },
		["@boolean"] = { fg = colors.constant },
		["@number"] = { fg = colors.number },
		["@number.float"] = { fg = colors.number },
		["@type"] = { fg = colors.type },
		["@type.builtin"] = { fg = colors.builtin },
		["@lsp.type.enumMember"] = { fg = colors.type },
		["@attribute"] = { fg = colors.meta },
		["@attribute.buitlin"] = { fg = colors.meta_dark },
		["@function"] = { fg = colors.func },
		["@function.builtin"] = { fg = colors.func, bold = true },
		["@function.macro"] = { fg = colors.func, bold = true },
		["@lsp.type.macro"] = { fg = colors.func, bold = true },
		["@constructor"] = { fg = colors.func_other },
		["@operator"] = { fg = colors.symbol },
		["@keyword"] = { fg = colors.keyword },
		["@keyword.modifier"] = { fg = colors.modifier },
		["@punctuation"] = { fg = colors.symbol },
		["@comment"] = { fg = colors.comment },
	}
end

return M
