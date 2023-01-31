-- require('rose-pine').setup({
--     disable_background = true
-- })
-- Lua
require('onedark').setup {
	style = 'dark'
}

function ColorMyPencils(color)
	-- color = color or "rose-pine"
	-- vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	require('onedark').load()

end

ColorMyPencils()
