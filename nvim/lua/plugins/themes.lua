return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        -- opts = {},
        -- config = function()
        --     vim.cmd.colorscheme "tokyonight-night"
        -- end
    },
    {
        "bluz71/vim-moonfly-colors",
        name = "moonfly",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd.colorscheme "moonfly"
        end
    },
}
