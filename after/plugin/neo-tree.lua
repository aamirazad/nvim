-- disable netrw at the very start of your init.lua (strongly advised)
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
require("neo-tree").setup({
	filesystem = {
		hijack_netrw_behavior = "open_current",
	},
})
vim.opt.termguicolors = true
