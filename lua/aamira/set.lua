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

-- Workaround to reinvent MysticalDevil/inlay-hints.nvim for lua_ls.
-- If you want to use MysticalDevil/inlay-hints.nvim, then remove this section.
-- Without this section, if inlay hints don't appear at first, just randomly edit the file e.g. press <o> <ESC> <u>.
-- With or without this section, for Lua, there's a bug where the signcolumn only appears after editing.
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if not client then
			return -- https://vi.stackexchange.com/a/46784/51656
		end
		function enable_inlay_hints()
			if vim.lsp.inlay_hint then
				vim.lsp.inlay_hint.enable(true, { 0 }) -- https://stackoverflow.com/a/77678959/10477326
			end
		end

		if client.name == "lua_ls" then
			-- Workaround: Delay to ensure inlay hints work at the start of opened Lua files
			vim.defer_fn(enable_inlay_hints, 500)
		else
			enable_inlay_hints()
		end
	end,
})

-- require("lspconfig") is now vim.lsp.config
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			completion = {
				callSnippet = "Replace",
			},
		},
	},
})

-- Below is adapted from MysticalDevil/inlay-hints.nvim's README
-- I removed some default/outdated parameters
vim.lsp.config("gopls", {
	settings = {
		gopls = {
			usePlaceholders = true,
			hints = {
				rangeVariableTypes = true,
				parameterNames = false,
				constantValues = true,
				assignVariableTypes = true,
				compositeLiteralFields = true,
				compositeLiteralTypes = true,
				functionTypeParameters = true,
			},
		},
	},
})

vim.lsp.config("ts_ls", {
	settings = {
		typescript = {
			inlayHints = {
				includeInlayParameterNameHints = "all",
				includeInlayFunctionParameterTypeHints = true,
				includeInlayVariableTypeHints = true,
				includeInlayPropertyDeclarationTypeHints = true,
				includeInlayFunctionLikeReturnTypeHints = true,
				includeInlayEnumMemberValueHints = true,
			},
		},
		javascript = {
			inlayHints = {
				includeInlayParameterNameHints = "all",
				includeInlayFunctionParameterTypeHints = true,
				includeInlayVariableTypeHints = true,
				includeInlayPropertyDeclarationTypeHints = true,
				includeInlayFunctionLikeReturnTypeHints = true,
				includeInlayEnumMemberValueHints = true,
			},
		},
	},
})
