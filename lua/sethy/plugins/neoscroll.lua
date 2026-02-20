return {
	"karb94/neoscroll.nvim",
	config = function()
		local neoscroll = require("neoscroll")

		-- Base setup (default behavior)
		neoscroll.setup({
			hide_cursor = true,
			stop_eof = true, -- Stop at <EOF> when scrolling downwards
			respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
			cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
			duration_multiplier = 1.0, -- Global duration multiplier
			easing = "quadratic", -- Default easing function
			pre_hook = nil, -- Function to run before the scrolling animation starts
			post_hook = nil, -- Function to run after the scrolling animation ends
        ignored_events = {           -- Events ignored while scrolling
      'WinScrolled', 'CursorMoved'
  },
      mappings = {
        "<C-u>",
        "<C-d>",
        "<C-b>",
        "<C-f>",
        "zt",
        "zz",
        "zb",
        "G",
        "gg",
      },
		})

		-- Custom scroll mappings (tweak durations freely)
		local keymap = {
			-- Smooth half-page scroll
			["<C-u>"] = function()
				neoscroll.ctrl_u({ duration = 250, easing = "sine" })
			end,
			["<C-d>"] = function()
				neoscroll.ctrl_d({ duration = 250, easing = "sine" })
			end,

			-- Full page scroll (slower + heavier feel)
			["<C-b>"] = function()
				neoscroll.ctrl_b({ duration = 350, easing = "circular" })
			end,
			["<C-f>"] = function()
				neoscroll.ctrl_f({ duration = 350, easing = "circular" })
			end,

			-- Fine-grained scroll (no cursor movement)
			["<C-m>"] = function()
				neoscroll.scroll(-0.1, { move_cursor = false, duration = 100 })
			end,
			["<C-n>"] = function()
				neoscroll.scroll(0.1, { move_cursor = false, duration = 100 })
			end,
		}

		local modes = { "n", "v", "x" }
		for key, func in pairs(keymap) do
			vim.keymap.set(modes, key, func, { silent = true })
		end
	end,
}
