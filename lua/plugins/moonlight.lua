return {
	"shaunsingh/moonlight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		-- enable true colors
		vim.opt.termguicolors = true

		-- optional: make background transparent
		-- vim.g.moonlight_transparent = true

		-- optional: italics
		vim.g.moonlight_italic_comments = true
		vim.g.moonlight_italic_keywords = false
		vim.g.moonlight_italic_functions = false
		vim.g.moonlight_italic_variables = false
		vim.g.moonlight_contrast = true
		vim.g.moonlight_borders = true 
		vim.g.moonlight_disable_background = false
		
		-- load theme
		vim.cmd("colorscheme moonlight")

		-- change background
		-- vim.api.nvim_set_hl(0, "Normal", {bg = "#151525"})
		-- vim.api.nvim_set_hl(0, "NormalFloat", {bg = "#151525"})

	end
}
