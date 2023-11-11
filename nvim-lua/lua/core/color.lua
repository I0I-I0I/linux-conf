vim.opt.termguicolors = true

-- retrobox
-- habamax
-- onedark
-- kanagawa
-- OceanicNext

function SetColor(color)
	color = color or "habamax"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "#080808"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "#080808"})
	vim.api.nvim_set_hl(0, "ColorColumn", {bg = "none"})
	vim.api.nvim_set_hl(0, "LineNr", {bg = "none"})
end

SetColor("retrobox")

