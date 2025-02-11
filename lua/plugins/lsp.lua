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
                                ensure_installed = { "pyright" }
                        }

                        -- require("lspconfig").ts_ls.setup {}
                        -- require("lspconfig").kotlin_language_server.setup {}
                        require("lspconfig").pyright.setup {}
                end
        }
}
