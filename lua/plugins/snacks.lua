return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      win = {
        input = {
          keys = {
            -- Scroll preview in insert mode
            ["<c-d>"] = { "preview_scroll_down", mode = { "i", "n" } },
            ["<c-u>"] = { "preview_scroll_up", mode = { "i", "n" } },
          },
        },
        preview = {
          wo = {
            wrap = true,
            linebreak = true,
          },
        },
      },
    },
  },
}
