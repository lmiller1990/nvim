return {
        {
                "neovim/nvim-lspconfig",
                dependencies = {
                        "williamboman/mason.nvim",
                        "williamboman/mason-lspconfig.nvim",
                },
                config = function()
                        -- this one first
                        require("mason").setup({})


                        -- then this one
                        require("mason-lspconfig").setup {
                                ensure_installed = { "pyright", "rust_analyzer" }
                        }

                        require("lspconfig").pyright.setup {}
                        require("lspconfig").rust_analyzer.setup {}

                        -- https://www.reddit.com/r/neovim/comments/1g4e3sa/finally_neovim_native_vue_lsp_perfection_2024/

                        local lspconfig = require "lspconfig"

                        lspconfig.ts_ls.setup {
                                -- on_attach = on_attach,
                                -- capabilities = capabilities,
                                init_options = {
                                        plugins = { -- I think this was my breakthrough that made it work
                                                {
                                                        name = "@vue/typescript-plugin",
                                                        location = "/usr/local/lib/node_modules/@vue/language-server",
                                                        languages = { "vue" },
                                                },
                                        },
                                },
                                filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
                        }

                        lspconfig.volar.setup {}
                end
        }
}
