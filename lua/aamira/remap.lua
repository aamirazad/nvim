local nnoremap = require("aamira.keyinit").nnoremap

vim.keymap.set("n", "<leader>tr", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>Tr", "<cmd>NvimTreeToggle /home/aamir/.config/nvim<CR>")
vim.keymap.set("n", "<leader>cw", ":%s//g<Left><Left>")
vim.keymap.set("n", "<leader>js", "<cmd>w<CR><cmd>!node %<CR>")
vim.keymap.set("n", "<leader>mf", '<cmd>lua require("harpoon.mark").add_file()<CR>')
vim.keymap.set("n", "<leader>hp", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>')
vim.keymap.set("n", "<leader>1", '<cmd>lua require("harpoon.ui").nav_file(1)<CR>')
vim.keymap.set("n", "<leader>2", '<cmd>lua require("harpoon.ui").nav_file(2)<CR>')
vim.keymap.set("n", "<leader>3", '<cmd>lua require("harpoon.ui").nav_file(3)<CR>')
vim.keymap.set("n", "<leader>4", '<cmd>lua require("harpoon.ui").nav_file(4)<CR>')
vim.keymap.set("n", "<leader>ut", "<cmd>:UndotreeToggle<CR>")
vim.keymap.set("n", "<leader>cc", "<cmd>w<CR><cmd>vsplit term://gcc %<CR><cmd>edit term://./a.out<CR>")
vim.keymap.set('i', '<c-f>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<c-d>', '<Plug>(copilot-previous)')
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>sp", "<cmd>setlocal spell spelllang=en_us<CR>")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
