return {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for UI improvements
    },
    config = function()
        require("flutter-tools").setup({
            -- You can add configuration options here
            -- For example:
            -- lsp = {
            --     color = {
            --         enabled = true,
            --         background = true,
            --     },
            -- },
            dev_log = {
                enabled = false,
            },
            decorations = {
                statusline = {
                    app_version = true,
                    device = true,
                }
            },
            -- Ensure flutter commands are registered
            widget_guides = {
                enabled = true,
            },
        })

        -- Optional: Add keymappings
        -- vim.keymap.set('n', '<leader>fr', ':FlutterRun<CR>', { noremap = true, silent = true })
        -- vim.keymap.set('n', '<leader>fq', ':FlutterQuit<CR>', { noremap = true, silent = true })
        -- vim.keymap.set('n', '<leader>fr', ':FlutterRestart<CR>', { noremap = true, silent = true })
        -- vim.keymap.set('n', '<leader>fd', ':FlutterDevices<CR>', { noremap = true, silent = true })
    end,
}
