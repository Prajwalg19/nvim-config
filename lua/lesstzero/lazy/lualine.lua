return
{
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    -- commit = "640260d7c2d98779cab89b1e7088ab14ea354a02",
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = { { 'filename', path = 1 } }, -- Adds file path to lualine_c
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location', "searchcount" }
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {
                lualine_a = {
                    "buffers"
                },
                lualine_b = {},
                -- lualine_c = {'filename'},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { "tabs" }
            },
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }
            local default_refresh_events = {
                'WinEnter',
                'BufEnter',
                'BufWritePost',
                'SessionLoadPost',
                'FileChangedShellPost',
                'VimResized',
                'Filetype',
                'CursorMoved',
                'CursorMovedI',
                'ModeChanged',
            }
            vim.api.nvim_create_autocmd(default_refresh_events, {
                group = vim.api.nvim_create_augroup('LualineRefreshEvents', { clear = true }),
                callback = function()
                    vim.schedule(function()
                        require('lualine').refresh()
                    end)
                end,
            })
    end

}
