require'nvim-treesitter'.setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}
local language = { 'rust', 'python', 'lua', 'c', 'cpp', 'scala', 'java', 'html', 'css', 'javascript', 'typescript', "markdown"}
require'nvim-treesitter'.install(language) 
vim.api.nvim_create_autocmd('FileType', {
	pattern = language,
	callback = function()
		-- syntax highlighting, provided by Neovim
		vim.treesitter.start()
		-- folds, provided by Neovim
	--	vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
	--	vim.wo.foldmethod = 'expr'
		-- indentation, provided by nvim-treesitter
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
