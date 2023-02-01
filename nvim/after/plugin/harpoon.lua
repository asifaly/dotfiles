local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local map = vim.keymap.set

map("n", "<leader>a", mark.add_file)
map("n", "<C-e>", ui.toggle_quick_menu)

map("n", "<leader>1", function() ui.nav_file(1) end)
map("n", "<leader>2", function() ui.nav_file(2) end)
map("n", "<leader>3", function() ui.nav_file(3) end)
map("n", "<leader>4", function() ui.nav_file(4) end)
map("n", "<leader><left>", function() ui.nav_next() end)
map("n", "<leader><right>", function() ui.nav_next() end)
