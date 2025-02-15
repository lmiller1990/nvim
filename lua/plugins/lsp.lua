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
                                ensure_installed = { "pyright", "rust-analyzer" }
                        }

                        require("lspconfig").pyright.setup {}
                        require("lspconfig").rust_analyzer.setup {}
                end
        }
}
