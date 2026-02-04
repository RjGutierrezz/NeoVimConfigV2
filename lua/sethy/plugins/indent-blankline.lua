return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {
		indent = {
			char = "┆",
		},
    -- added scope to remove the underline from the parents
		scope = {
			enabled = true, -- 👈 THIS is the key
			show_start = false, -- optional (underline start)
			show_end = false, -- optional
			highlight = "IblScope", -- highlight group used
		},
	},
}
