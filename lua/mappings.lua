local map = vim.keymap.set
map("n", "<F2>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
map("n", "<F3>", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<F4>", "<cmd>Telescope live_grep<CR>", { desc = "Search text" })
map("n", "a", "<cmd>enew<CR>", { desc = "New file" })
map("n", "d", "<cmd>!rm %<CR>", { desc = "Delete file" })
map("n", "q", "<cmd>q<CR>", { desc = "Quit" })
map("n", "<C-a>", "ggVG")
map("v", "<C-c>", "y")
map("n", "<C-v>", "p")
map("n", "<leader>t", "<cmd>Telescope themes<CR>", { desc = "Themes" })

