-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

vim.opt.showcmd = true
vim.wo.rnu = true
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.list = true
vim.opt.listchars = {
  tab = "│·",
  extends = "⟩",
  precedes = "⟨",
  trail = "·",
}
vim.opt.wrap = false -- display lines as one long line
vim.opt.scrolloff = 999
vim.opt.virtualedit = "all"
-- vim.opt.shortmess:append("c")
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.iskeyword:append("-")
-- vim.opt.guicursor = "n:blinkon1"


vim.keymap.set({ "n", "v", "x" }, "L", "<C-d>")
vim.keymap.set({ "n", "v", "x" }, "H", "<C-u>")
vim.keymap.set({ "n", "v", "x" }, "<C-h>", ":bprev<CR>")
vim.keymap.set({ "n", "v", "x" }, "<C-l>", ":bnext<CR>")
vim.keymap.set({ "n", "v", "x" }, "gp", '"0p')
vim.keymap.set({ "n", "v", "x" }, "gP", '"0P')
vim.keymap.set({ "i", "c" }, "kj", "<ESC>")
vim.keymap.set({ "t" }, "kj", "<C-\\><C-n>")
-- Press <C-BS> ctrl-backspace and <A-BS> alt-backspace to delete previous word similar to <C-w>
vim.keymap.set({ "i", "c" }, "<C-h>", "<C-w>")
vim.keymap.set({ "i", "c" }, "<A-BS>", "<C-w>")
