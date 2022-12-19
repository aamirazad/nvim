local nnoremap = require("aamira.keyinit").nnoremap

nnoremap("<leader>tr", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>Tr", "<cmd>NvimTreeToggle /home/aamir/.config/nvim<CR>")
nnoremap("<leader>cw", ":%s//g<Left><Left>")
nnoremap("<leader>js", "<cmd>w<CR><cmd>!node %<CR>")
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fi", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>mf", '<cmd>lua require("harpoon.mark").add_file()<CR>')
nnoremap("<leader>hp", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>')
nnoremap("<leader>1", '<cmd>lua require("harpoon.ui").nav_file(1)<CR>')
nnoremap("<leader>2", '<cmd>lua require("harpoon.ui").nav_file(2)<CR>')
nnoremap("<leader>3", '<cmd>lua require("harpoon.ui").nav_file(3)<CR>')
nnoremap("<leader>4", '<cmd>lua require("harpoon.ui").nav_file(4)<CR>')
nnoremap("<leader>ut", "<cmd>:UndotreeToggle<CR>")
nnoremap("<leader>cc", "<cmd>w<CR><cmd>term clang %<CR> <cmd>term ./a.out<CR>")
vim.keymap.set('i', '<c-f>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<c-d>', '<Plug>(copilot-previous)')
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("<leader>sp", "<cmd>setlocal spell spelllang=en_us<CR>")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
