return {
    'chomosuke/typst-preview.nvim',
    lazy = false, -- or ft = 'typst'
    version = '1.*',
    opts = {},    -- lazy.nvim will implicitly calls `setup {}`
    config = function()
        require("typst-preview").setup({
            open_cmd = nil,
            port = 55555,
            invert_colors = 'auto',
            dependencies_bin = {
                ['tinymist'] = 'tinymist',
                ['websocat'] = nil
            },
            -- extra_args = {"--no-open"},
        })
    end
}
