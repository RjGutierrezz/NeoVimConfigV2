return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    -- override the colors
    vim.api.nvim_set_hl(0, "IblIndent", { fg = "#494d64" })
    vim.api.nvim_set_hl(0, "IblWhitespace", { fg = "#494d64" })

    require("ibl").setup({
      -- indent = { char = "┆" },
      indent = { char = "│" },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
      },
    })
  end,
}
