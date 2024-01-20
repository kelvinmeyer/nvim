local builtin = require('telescope.builtin')

-- search files
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- search in all files
vim.keymap.set('n', '<leader>fs', function ()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.treesitter.language.register('scheme', { 'csm' })
