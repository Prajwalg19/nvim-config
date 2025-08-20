return {
    "https://github.com/tpope/vim-commentary",
    dependencies = {
        "https://github.com/nvim-treesitter/nvim-treesitter",
        "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
    },
    config = function()
        require('ts_context_commentstring').setup {
            config = {
                context_commentstring = {
                    enable = true,
                    enable_autocmd = false,
                },
                svelte = {
                    __default = "<!-- %s -->",
                    script = "// %s",
                    style = "/* %s */"
                }
            }
        }
    end
}

