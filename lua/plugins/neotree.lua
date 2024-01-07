-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

local config = function()
  vim.cmd([[hi NeoTreeNormal guibg=NONE ctermbg=NONE]])
  require('neo-tree').setup {
    enable_git_status = true,
  }
end

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = config
}
