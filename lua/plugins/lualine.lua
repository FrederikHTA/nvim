local config = function()
    -- local theme = require("lualine.themes.nightfox")
    -- local theme = require("lualine.themes.habamax")
    -- theme.normal.bg = nil

    require('lualine').setup {
        options = {
            component_separators = '|',
            global_status = true
        }
    }
end

return {
    -- See `:help lualine.txt`
    'nvim-lualine/lualine.nvim',
    lazy = false,
    opts = {},
    config = config
}
