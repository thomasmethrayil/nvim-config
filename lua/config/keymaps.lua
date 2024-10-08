local mapkey = require("util.keymapper").mapvimkey

-- Buffer Navigation
mapkey("<leader>bn", "bnext", "n") -- Next buffer
mapkey("<leader>bp", "bprevious", "n") -- Prev buffer
mapkey("<leader>bb", "e #", "n") -- Switch to Other Buffer
mapkey("<leader>`", "e #", "n") -- Switch to Other Buffer

-- Directory Navigatio}n
mapkey("<leader>m", "NvimTreeFocus", "n")
mapkey("<leader>e", "NvimTreeToggle", "n")

-- pane and window navigation
mapkey("<c-h>", "<c-w>h", "n") -- navigate left
mapkey("<c-j>", "<c-w>j", "n") -- navigate down
mapkey("<c-k>", "<c-w>k", "n") -- navigate up
mapkey("<c-l>", "<c-w>l", "n") -- navigate right
mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right
mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
mapkey("<C-l>", "wincmd l", "t") -- Navigate Right

-- Window Management
mapkey("<leader>sv", "vsplit", "n") -- Split Vertically
mapkey("<leader>sh", "split", "n") -- Split Horizontally
mapkey("<C-Up>", "resize +2", "n")
mapkey("<C-Down>", "resize -2", "n")
mapkey("<C-Left>", "vertical resize +2", "n")
mapkey("<C-Right>", "vertical resize -2", "n")

-- Show Full File-Path
mapkey("<leader>pa", "echo expand('%:p')", "n") -- Show Full File Path

-- Indenting
vim.keymap.set("v", "<", "<gv", { silent = true, noremap = true })
vim.keymap.set("v", ">", ">gv", { silent = true, noremap = true })

local api = vim.api

-- Comments
if vim.env.TMUX ~= nil then
  api.nvim_set_keymap("n", "<C-_>", "gtc", { noremap = false })
  api.nvim_set_keymap("v", "<C-_>", "goc", { noremap = false })
else
  api.nvim_set_keymap("n", "<C-/>", "gtc", { noremap = false })
  api.nvim_set_keymap("v", "<C-/>", "goc", { noremap = false })
end

--Remap esc key
vim.keymap.set("i", "jk", "<ESC>", { silent = true })
vim.keymap.set("i", "kj", "<ESC>", { silent = true })
