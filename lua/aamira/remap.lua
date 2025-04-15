vim.keymap.set("n", "<leader>cw", ":%s//g<Left><Left>")
vim.keymap.set("n", "<leader>js", "<cmd>w<CR><cmd>!node %<CR>")
-- vim.keymap.set("n", "<leader>mf", '<cmd>lua require("harpoon.mark").add_file()<CR>')
-- vim.keymap.set("n", "<leader>hp", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>')
-- vim.keymap.set("n", "<leader>1", '<cmd>lua require("harpoon.ui").nav_file(1)<CR>')
-- vim.keymap.set("n", "<leader>2", '<cmd>lua require("harpoon.ui").nav_file(2)<CR>')
-- vim.keymap.set("n", "<leader>3", '<cmd>lua require("harpoon.ui").nav_file(3)<CR>')
-- vim.keymap.set("n", "<leader>4", '<cmd>lua require("harpoon.ui").nav_file(4)<CR>')
vim.keymap.set("n", "<leader>ut", "<cmd>:UndotreeToggle<CR>")
vim.keymap.set("n", "<leader>tm", "<cmd>terminal<CR>")
-- Half page move, center cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>sp", "<cmd>setlocal spell spelllang=en_us<CR>")
-- yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>tt", "<cmd>TroubleToggle<CR>")
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- Back and forth buffer
vim.keymap.set("n", "[b", "<cmd>bprevious<CR>")
vim.keymap.set("n", "]b", "<cmd>bnext<CR>")
-- Close buffer
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>")
-- Escape out of terminal
-- <C-\><C-n>
-- Paste preserving clipboard
vim.keymap.set("x", "<leader>p", '"_dP')
-- remove Q
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
