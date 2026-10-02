local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
end

return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("kanagawa-dragon")
            enable_transparency()
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        opts = {
            options = {
                theme = "codedark",
                component_separators = { left = '', right = '|' },
                section_separators = { left = '', right = '' },
            }
        }
    }
}
