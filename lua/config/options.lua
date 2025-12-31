-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"
vim.g.autoformat = false

-- Enable line wrapping (no horizontal overflow)
vim.opt.wrap = true
vim.opt.linebreak = true
-- Enable OSC 52 clipboard for SSH/tmux sessions (Neovim 0.10+)
if vim.env.SSH_TTY or vim.env.TMUX then
  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
      ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
    },
  }
end

