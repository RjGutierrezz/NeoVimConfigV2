return {
	"nvim-lua/plenary.nvim", --lua functions that many plugins use
	"christoomey/vim-tmux-navigator", -- tmux & split window nav
    -- fixes the well know nvim bug
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                {
                    path = "${3rd}/plenary.nvim/lua",
                    words = { "plenary" }
                },
            },
        },
    },

    -- init.lua:
    {
        "gh-liu/fold_line.nvim",
        event = "VeryLazy",
        init = function()
            -- change the char of the line, see the `Appearance` section
            vim.g.fold_line_char_open_start = "╭"
            vim.g.fold_line_char_open_end = "╰"
        end,
    }

}
