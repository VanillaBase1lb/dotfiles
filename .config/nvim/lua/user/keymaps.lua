-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
keymap("n", "<leader><leader>", ":", opts)

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
-- keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Operations on buffers/windows/frames
keymap("n", "Q", "<cmd>Bdelete!<CR>", opts)
keymap("n", "<leader>bd", ":bd<CR>", opts)
keymap("n", "<leader>bD", ":bd!<CR>", opts)
keymap("n", "<leader>bw", ":w<CR>", opts)
keymap("n", "<leader>wd", ":q<CR>", opts)
keymap("n", "<leader>wD", ":q!<CR>", opts)
keymap("n", "<leader>wv", ":vsplit<CR>", opts)
keymap("n", "<leader>ws", ":split<CR>", opts)
keymap("n", "<leader>wx", "<C-w>x", opts)
keymap("n", "<leader>w=", "<C-w>=", opts)
keymap("n", "<leader>bt", ":vnew<CR>", opts) -- create new temporary buffer in vsplit

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Better text navigation
keymap("n", "s", "<cmd>lua require'hop'.hint_char1()<CR>", opts)
keymap("v", "s", "<cmd>lua require'hop'.hint_char1()<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Plugins --

-- Toggle
keymap("n", "<leader>tq", ":BqfToggle<CR>", opts)
keymap("n", "<leader>tu", ":UndotreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope grep_string<CR>", opts)
keymap("n", "<leader>fs", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>fr", ":Telescope resume<CR>", opts)

-- Git
keymap("n", "<leader>gg", ":Git<CR>", opts)

-- Comment
-- deprecated
-- keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
-- keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- Alpha (landing page)
keymap("n", "<leader>gh", ":Alpha<CR>", opts)

-- Others/General
keymap("n", "<S-Esc>", ":noh", opts)

