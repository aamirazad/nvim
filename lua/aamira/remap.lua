local nnoremap = require("aamira.keymap").nnoremap

nnoremap("<leader>tr", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>Tr", "<cmd>NvimTreeToggle /home/aamir/.config/nvim<CR>")
nnoremap("<leader>fr", ":%s//g<Left><Left>")
nnoremap("<leader>js", "<cmd>w<CR><cmd>!clear<CR>:! node %<CR>")
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fi", "<cmd>Telescope live_grep<CR>")  
