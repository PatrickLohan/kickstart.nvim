-- Set local options
vim.opt_local.foldmethod = 'expr'
vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4

-- Set key mappings
vim.api.nvim_buf_set_keymap(0, 'n', '<F4>', ':GodotRunLast<CR>', { noremap = true, silent = true })
vim.api.nvim_buf_set_keymap(0, 'n', '<F5>', ':GodotRun<CR>', { noremap = true, silent = true })
vim.api.nvim_buf_set_keymap(0, 'n', '<F6>', ':GodotRunCurrent<CR>', { noremap = true, silent = true })
vim.api.nvim_buf_set_keymap(0, 'n', '<F7>', ':GodotRunFZF<CR>', { noremap = true, silent = true })
