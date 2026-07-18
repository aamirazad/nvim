vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.nu = true
vim.opt.relativenumber = true
vim.g.mapleader = " "
vim.opt.guicursor = ""
vim.opt.undofile = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- Don't use spaces
-- vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.signcolumn = "yes"
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.scrolloff = 8
vim.g.have_nerd_font = true
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false
-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.opt.confirm = true

vim.filetype.add({
	extension = {
		gotmpl = "gotmpl",
	},
})
