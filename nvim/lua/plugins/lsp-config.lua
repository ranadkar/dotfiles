return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "tinymist", }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- local lspconfig = require("lspconfig")
            -- lspconfig.lua_ls.setup({})
            -- lspconfig.ts_ls.setup({})
            -- vim.lsp.enable('lua_ls')
            -- vim.lsp.enable('ts_ls')
            -- lspconfig.tinymist.setup({
            --     settings = {
            --         formatterMode = "typstyle",
            --         exportPdf = "onType",
            --         semanticTokens = "disable"
            --     }
            -- })

            vim.lsp.config("tinymist", {
                settings = {
                    formatterMode = "typstyle",
                    exportPdf = "never", --"onType",
                    semanticTokens = "disable"
                }
            })
            vim.lsp.enable('tinymist')

            vim.lsp.config("basedpyright", {
                settings = {
                    basedpyright = {
                        analysis = {
                            typeCheckingMode = "basic",
                        },
                    },
                }
            })

            vim.diagnostic.config({
                virtual_text = true,
                signs = true,
                update_in_insert = false,
                underline = true,
                severity_sort = false,
                float = true,
            })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
