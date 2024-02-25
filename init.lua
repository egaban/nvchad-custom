local nvim_config_path = vim.fn.stdpath('config')

vim.g.vscode_snippets_path = nvim_config_path .. "/lua/custom/snippets"

vim.o.hlsearch = false
vim.o.clipboard = 'unnamedplus'
