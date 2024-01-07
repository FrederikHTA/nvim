local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("config.globals")
require("config.keymaps")
require("config.options")

require("lazy").setup({
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'tpope/vim-repeat',
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  'RRethy/vim-illuminate',

  { import = "plugins" }
}, {})

-- TODO: play with this later
-- require("config.telescope")
require("config.lsp-configuration")
require("config.nvim-cmp")
require("config.yank-highlight")
