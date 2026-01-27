return {
  "subev/sibling-jump.nvim",
  config = function()
    require("sibling_jump").setup({
      next_key = "<C-J>",        -- Jump to next sibling (default)
      prev_key = "<C-K>",        -- Jump to previous sibling (default)
      block_loop_key = "<C-L>",  -- Cycle through block boundaries (optional)
      center_on_jump = false,    -- Center screen after jump (default: false)
    })
  end,
}
