vim.opt.termguicolors = true

function SetColor(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "ColorColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
	vim.api.nvim_set_hl(0, "@tag.attribute", { link = "none" })
end
require("catppuccin").setup({
	color_overrides = {
		all = {
			text = "#ffffff",
		},
		latte = {
			base = "#ff0000",
			mantle = "#242424",
			crust = "#474747",
		},
		frappe = {},
		macchiato = {},
		mocha = {},
	},
	highlight_overrides = {
		all = function(colors)
			return {
				NvimTreeNormal = { fg = colors.none },
				CmpBorder = { fg = "#3e4145" },
			}
		end,
		latte = function(latte)
			return {
				Normal = { fg = latte.base },
			}
		end,
		frappe = function(frappe)
			return {
				["@comment"] = { fg = frappe.surface2, style = { "italic" } },
			}
		end,
		macchiato = function(macchiato)
			return {
				LineNr = { fg = macchiato.overlay1 },
			}
		end,
		mocha = function(mocha)
			return {
				Comment = { fg = mocha.flamingo },
			}
		end,
	},
})

local latte = require("catppuccin.palettes").get_palette("latte")
local frappe = require("catppuccin.palettes").get_palette("frappe")
local macchiato = require("catppuccin.palettes").get_palette("macchiato")
local mocha = require("catppuccin.palettes").get_palette("mocha")

SetColor("catppuccin")
