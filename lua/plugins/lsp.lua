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
                                ensure_installed = { "kotlin_language_server" }
                        }
                end
        }
}
