local nnoremap = require("aamira.keyinit").nnoremap

nnoremap("<leader>tr", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>Tr", "<cmd>NvimTreeToggle /home/aamir/.config/nvim<CR>")
nnoremap("<leader>cw", ":%s//g<Left><Left>")
nnoremap("<leader>jp", "<cmd>w<CR><cmd>!node %<CR>")
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fi", "<cmd>Telescope live_grep<CR>")  
nnoremap("<leader>mf", '<cmd>lua require("harpoon.mark").add_file()<CR>')
nnoremap("<leader>hp", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>')
nnoremap("<leader>1", '<cmd>lua require("harpoon.ui").nav_file(1)<CR>')
nnoremap("<leader>2", '<cmd>lua require("harpoon.ui").nav_file(2)<CR>')
nnoremap("<leader>3", '<cmd>lua require("harpoon.ui").nav_file(3)<CR>')
nnoremap("<leader>4", '<cmd>lua require("harpoon.ui").nav_file(4)<CR>')
