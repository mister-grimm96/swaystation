vim.g.mapleader = " "
local map = vim.keymap.set

-- custom functions
vim.keymap.set("n", "gf", function()
	require("grimmvim.config.custom_functions").OpenFile()
end, { desc = "Open or create file under cursor", noremap = true, silent = true })

-- disable double click mouse
vim.api.nvim_set_keymap("n", "<2-LeftMouse>", "", { noremap = true, silent = true })

-- source buffer
map("n", "<leader><leader>S", ":source %<cr>", { desc = "Source Buffer", noremap = true, silent = true })

-- Remapping gj gk for wrapped line
map("n", "j", "gj", { desc = "Down In Wrap", noremap = true, silent = true })
map("n", "k", "gk", { desc = "Up In Wrap", noremap = true, silent = true })

-- Scrolling with HJKL
map({ "n", "v" }, "H", "5h", { desc = "Visual Scroll Left", noremap = true, silent = false })
map({ "n", "v" }, "J", "5j", { desc = "Visual Scroll Down", noremap = true, silent = false })
map({ "n", "v" }, "K", "5k", { desc = "Visual Scroll Up", noremap = true, silent = false })
map({ "n", "v" }, "L", "5l", { desc = "Visual Scroll Right", noremap = true, silent = false })

-- remapping escape key
map({ "i", "v" }, "kj", "<Esc>", { desc = "Escape", noremap = true, silent = true })
map("t", "<Esc><Esc>", "<C-\\><C-N>", { desc = "Escape Term Mode", noremap = true, silent = true })

-- Indenting
map("v", "<", "<gv", { desc = "Indent >", noremap = true, silent = false })
map("v", ">", ">gv", { desc = "Indent <", noremap = true, silent = false })

-- Copy-Pasting
map("v", "<C-c>", '"+y', { desc = "Copy To ClipB", noremap = true, silent = false })
map("n", "<C-s>", '"+P', { desc = "Paste From ClipB", noremap = true, silent = false })

-- Focus between windows
map("n", "<C-h>", "<C-w>h", { desc = "Focus Left", noremap = true, silent = false })
map("n", "<C-j>", "<C-w>j", { desc = "Focus Right", noremap = true, silent = false })
map("n", "<C-k>", "<C-w>k", { desc = "Focus Up", noremap = true, silent = false })
map("n", "<C-l>", "<C-w>l", { desc = "Focus Down", noremap = true, silent = false })

-- Resize windows or panes
map("n", "<C-S-H>", "3<C-w>>", { desc = "Resize Left", noremap = true, silent = false })
map("n", "<C-S-J>", "3<C-w>-", { desc = "Resize Right", noremap = true, silent = false })
map("n", "<C-S-K>", "3<C-w>+", { desc = "Resize Up", noremap = true, silent = false })
map("n", "<C-S-L>", "3<C-w><", { desc = "Resize Down", noremap = true, silent = false })

-- Nvim Options and Commands
map("n", "<leader>ow", ":set wrap!<cr>", { desc = "Toggle Wrap Lines", noremap = true, silent = true })
map("n", "<leader>ol", ":set linebreak!<cr>", { desc = "Toggle Break Lines", noremap = true, silent = true })
map("n", "<leader>os", ":set spell!<cr>", { desc = "Toggle Spell Check On", noremap = true, silent = true })
map("n", "<leader>oh", ":set hlsearch!<cr>", { desc = "Toggle Search Highlight", noremap = true, silent = false })
map("n", "<leader>od", ":pwd<cr>", { desc = "Current Working Directory", noremap = true, silent = false })
map("n", "<leader>oc", function()
	require("grimmvim.config.custom_functions").ToggleConcealLevel()
end, { desc = "Toggle Conceallevel", noremap = true, silent = false })

-- Buffers
map("n", "<Tab>", ":bnext<cr>", { desc = "Next Buffer", noremap = true, silent = true })
map("n", "<S-Tab>", ":bprevious<cr>", { desc = "Previous Buffer", noremap = true, silent = true })
map("n", "<leader>bn", ":enew<cr>", { desc = "New Empty Buffer", noremap = true, silent = true })
map("n", "<leader>bl", ":blast<cr>", { desc = "Last Buffer", noremap = true, silent = true })
map("n", "<leader>ba", ":%bdelete!<cr>", { desc = "Delete All Buffers", noremap = true, silent = true })
-- map("n", "<leader>bx", ":bp<bar>sp<bar>bn<bar>bd<cr>", { desc = "Delete Buffer", noremap = true, silent = true })
map("n", "<leader>bs", ":source %<cr>", { desc = "Source Buffer", noremap = true, silent = true })

-- QuickFIx
map("n", "<C-n>", ":cnext<cr>", { desc = "QuickFIx Next", noremap = true, silent = true })
map("n", "<C-p>", ":cprev<cr>", { desc = "QuickFIx Prev", noremap = true, silent = true })
map("n", "<C-q>", ":cclose<cr>", { desc = "QuickFIx Close", noremap = true, silent = false })

-- Splits and Panes
map("n", "<leader>pv", "<C-w>v", { desc = "Split Vertically", noremap = true, silent = false })
map("n", "<leader>ph", "<C-w>s", { desc = "Split Horizontally", noremap = true, silent = false })
map("n", "<leader>pe", "<C-w>=", { desc = "Equal Split", noremap = true, silent = false })
map("n", "<leader>px", ":close<CR>", { desc = "Close split", noremap = true, silent = false })
map("n", "<leader>po", ":only<CR>", { desc = "Single Pane", noremap = true, silent = false })

-- Toggle Term
map("n", "<leader>t", ":sp<bar>term<cr>:resize 10<cr>", { desc = "Split Terminal", noremap = true, silent = true })

-- add ; at the end of the line
map("i", "<C-;>", "<esc>A;<esc>i", { desc = "semicolon at the end", noremap = true, silent = true })

-- lsp keymaps
map("n", "<leader>lk", function()
	vim.lsp.buf.hover()
end, { desc = "LSP Hover", noremap = true, silent = true })

map("n", "<leader>ld", function()
	vim.lsp.buf.definition()
end, { desc = "LSP Definition", noremap = true, silent = true })

map("n", "<leader>lt", function()
	vim.lsp.buf.type_definition()
end, { desc = "Type Definition", noremap = true, silent = true })

map("n", "<leader>ln", function()
	vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Next diagnostic" })

map("n", "<leader>lN", function()
	vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Previous diagnostic" })

map("n", "<leader>lr", function()
	vim.lsp.buf.references()
end, { desc = "LSP References", noremap = true, silent = true })

map("n", "<leader>lR", function()
	vim.lsp.buf.rename()
end, { desc = "LSP Rename", noremap = true, silent = true })

-- undo tree
vim.cmd("packadd nvim.undotree")
vim.keymap.set("n", "<leader>uu", require("undotree").open)
