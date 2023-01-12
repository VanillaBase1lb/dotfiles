-- vim.opt.backup = false -- creates a backup file
-- vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.mousescroll = "ver:2"
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.showmode = true -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
-- vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion (4000ms default)
vim.opt.list = true
vim.opt.listchars = {
	tab = "│·",
	extends = "⟩",
	precedes = "⟨",
	trail = "·",
}
-- vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
-- vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 0 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4 -- no. of spaces inserted for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set numbered lines
vim.opt.rnu = true
-- vim.opt.laststatus = 3
vim.opt.showcmd = true
vim.opt.ruler = false
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false -- display lines as one long line
vim.opt.scrolloff = 999
-- vim.opt.sidescrolloff = 999
vim.opt.virtualedit = "all"
-- vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
vim.opt.fillchars.eob = " "
vim.opt.shortmess:append("c")
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.iskeyword:append("-")
vim.opt.guicursor = "n:blinkon1"

-- Shorten function name
-- local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = false }
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
--Remap space as leader key
vim.keymap.set({ "n", "v", "x" }, " ", "<NOP>", opts)
vim.g.mapleader = " "
vim.keymap.set({ "n", "v", "x" }, ";", ":", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader><leader>", ":nohlsearch<CR>", opts)
-- Normal --
-- Better buffer navigation
vim.keymap.set({ "n", "v", "x" }, "L", "<C-d>", opts)
vim.keymap.set({ "n", "v", "x" }, "H", "<C-u>", opts)
-- Resize with arrows
vim.keymap.set({ "n", "v", "x" }, "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<C-Right>", ":vertical resize +2<CR>", opts)
-- Navigate buffers
vim.keymap.set({ "n", "v", "x" }, "<C-l>", ":bnext<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<C-h>", ":bprevious<CR>", opts)
-- Operations on buffers/windows/frames
vim.keymap.set({ "n", "v", "x" }, "Q", ":bp|bd #<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>bd", ":bd!<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>bD", ":bp|bd! #<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>w", ":w<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>q", ":q<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>bt", ":vnew<CR>", opts) -- create new temporary buffer in vsplit
vim.keymap.set({ "n", "v", "x" }, "<leader>bs", ":BufferLinePick<CR>", opts) -- create new temporary buffer in vsplit
vim.keymap.set({ "n", "v", "x" }, "<leader>bf", ":buffers!<CR>:buffer<Space>", opts)
-- Better paste
vim.keymap.set({ "v", "x" }, "p", '"_dP', opts)
vim.keymap.set({ "v", "x" }, "K", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set({ "v", "x" }, "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set({ "n", "v", "x" }, "gp", '"0p', opts)
vim.keymap.set({ "n", "v", "x" }, "gP", '"0P', opts)
-- Better text navigation
vim.keymap.set({ "n", "v", "x" }, "s", require("hop").hint_char1, opts)
vim.keymap.set({ "n", "v", "x" }, "]]", "]m", opts)
vim.keymap.set({ "n", "v", "x" }, "[[", "[m", opts)
-- Insert --
-- Press jk fast to enter
vim.keymap.set({ "i", "c" }, "kj", "<ESC>", opts)
vim.keymap.set({ "t" }, "kj", "<C-\\><C-n>", opts)
-- Press <C-BS> ctrl-backspace to delete previous word similar to <C-w>
vim.keymap.set({ "i", "c" }, "<C-h>", "<C-w>", opts)
-- Visual --
-- Nvim-tree
vim.keymap.set({ "n", "v", "x" }, "<leader>e", ":NvimTreeToggle<CR>", opts)
-- Plugins --
-- Toggle
vim.keymap.set({ "n", "v", "x" }, "<leader>tq", ":BqfToggle<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>tu", ":UndotreeToggle<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>td", require("dapui").toggle, opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>tc", function()
	local qf_exists = false
	for _, win in pairs(vim.fn.getwininfo()) do
		if win["quickfix"] == 1 then
			qf_exists = true
		end
	end
	if qf_exists == true then
		vim.cmd("cclose")
		return
	end
	if not vim.tbl_isempty(vim.fn.getqflist()) then
		vim.cmd("copen")
	end
end, opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>tl", function()
	local lwin_exists = false
	for _, win in pairs(vim.fn.getwininfo()) do
		if win["loclist"] == 1 then
			lwin_exists = true
		end
	end
	if lwin_exists == true then
		vim.cmd("lclose")
		return
	end
	vim.cmd("lopen")
end, opts)
-- Telescope
vim.keymap.set({ "n", "v", "x" }, "<leader>ff", ":Telescope find_files<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>fg", ":Telescope grep_string<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>fs", ":Telescope live_grep<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>fp", ":Telescope projects<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>fb", ":Telescope buffers<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>fh", ":Telescope help_tags<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>fr", ":Telescope resume<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>ft", ":Telescope treesitter<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>fm", ":Telescope marks<CR>", opts)
-- Go to init.lua
vim.keymap.set({ "n", "v", "x" }, "<leader>gh", ":e " .. vim.fn.stdpath("config") .. "/init.lua<CR>", opts)
-- LSP/autocomplete keybindings
vim.keymap.set("n", "gh", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "<leader>ls", vim.lsp.buf.signature_help, opts)
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, opts)
vim.keymap.set("x", "<leader>la", vim.lsp.buf.range_code_action, opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>lf", function()
	vim.lsp.buf.format({
		filter = function(client)
			-- ignore these formatters
			local ignore_formatters = { "tsserver", "sqls", "html", "sumneko_lua", "eslint_d", "eslint" }
			for _, ignore_formatter in pairs(ignore_formatters) do
				if client.name == ignore_formatter then
					return false
				end
			end
			return true
		end,
		async = true,
	})
end, opts)
vim.keymap.set("n", "<leader>lq", vim.diagnostic.setloclist, opts)
vim.keymap.set("n", "gl", vim.diagnostic.open_float, opts)
vim.keymap.set({ "n", "v", "x" }, "[e", vim.diagnostic.goto_prev, opts)
vim.keymap.set({ "n", "v", "x" }, "]e", vim.diagnostic.goto_next, opts)
-- DAP
vim.keymap.set({ "n", "v", "x" }, "<leader>db", ":DapToggleBreakpoint<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>dc", ":DapContinue<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<F5>", ":DapContinue<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>do", ":DapStepOver<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<F10>", ":DapStepOver<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>di", ":DapStepInto<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<F11>", ":DapStepInto<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>dO", ":DapStepOut<CR>", opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>dp", require("dap").pause, opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>dl", require("dap").list_breakpoints, opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>dx", require("dap").clear_breakpoints, opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>dK", require("dapui").float_element, opts)
vim.keymap.set({ "n", "v", "x" }, "<leader>dq", ":DapTerminate", opts)
vim.keymap.set({ "n", "v" }, "<leader>d=", require("dapui").eval, opts)
vim.keymap.set({ "n" }, "<leader>dB", function()
	require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, opts)
-- function _G.set_terminal_keymaps()
-- 	local terminal_opts = { noremap = true }
-- 	-- vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
-- 	vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], terminal_opts)
-- 	vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], terminal_opts)
-- 	vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], terminal_opts)
-- 	vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], terminal_opts)
-- end

-- vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
-- vim.cmd("autocmd! TermOpen * :setlocal nobuflisted")
-- Others/General

-- Automatically install packer
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = vim.fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd("packadd packer.nvim")
end
-- -- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd [[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]]
local packer = require("packer")
-- -- Have packer use a popup window
-- packer.init {
--   display = {
--     open_fn = function()
--       return require("packer.util").float { border = "rounded" }
--     end,
--   },
-- }

-- Install your plugins here
packer.startup(function(use)
	use({ "wbthomason/packer.nvim" }) -- Have packer manage itself
	use({ "nvim-lua/plenary.nvim" }) -- Useful lua functions used by lots of plugins
	use({ "windwp/nvim-autopairs" }) -- Autopairs, integrates with both cmp and treesitter
	use({ "numToStr/Comment.nvim" })
	use({ "kyazdani42/nvim-web-devicons" })
	use({ "kyazdani42/nvim-tree.lua" })
	use({ "akinsho/bufferline.nvim" })
	use({ "nvim-lualine/lualine.nvim" })
	-- use({ "akinsho/toggleterm.nvim" })
	use({ "ahmedkhalf/project.nvim" })
	-- use({ "lewis6991/impatient.nvim" })
	use({ "lukas-reineke/indent-blankline.nvim" })
	-- Custom pugins
	use({ "NMAC427/guess-indent.nvim" })
	use({ "phaazon/hop.nvim" })
	use({ "folke/which-key.nvim" })
	use({ "tpope/vim-surround" })
	use({ "mbbill/undotree" })
	use({ "kevinhwang91/nvim-bqf" })
	use({ "stefandtw/quickfix-reflector.vim" })
	use({ "Shatur/neovim-session-manager" })
	use({ "github/copilot.vim" })
	use({ "lewis6991/gitsigns.nvim" })
	-- Colorschemes
	use({ "Mofiqul/vscode.nvim" })
	use({ "ellisonleao/gruvbox.nvim" })
	use({ "folke/tokyonight.nvim" })
	-- cmp plugins
	use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
	use({ "hrsh7th/cmp-buffer" }) -- buffer completions
	use({ "hrsh7th/cmp-path" }) -- path completions
	use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })
	use({ "rcarriga/cmp-dap" })
	use({ "ray-x/lsp_signature.nvim" })
	-- snippets
	use({ "L3MON4D3/LuaSnip" }) --snippet engine
	use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use
	-- LSP
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "neovim/nvim-lspconfig" }) -- enable LSP
	-- use({ "RRethy/vim-illuminate" })
	use({ "jose-elias-alvarez/null-ls.nvim" })
	use({ "hrsh7th/cmp-nvim-lsp-signature-help" })
	-- Telescope
	use({ "nvim-telescope/telescope.nvim" })
	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter" })
	use({ "nvim-treesitter/nvim-treesitter-context" })
	-- DAP
	use({ "mfussenegger/nvim-dap" })
	use({ "rcarriga/nvim-dap-ui" })
	-- use({ "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } })
	-- use({ "microsoft/vscode-js-debug", opt = true, run = "npm install --legacy-peer-deps && npm run compile" })
	-- -- Automatically set up your configuration after cloning packer.nvim
	-- -- Put this at the end after all plugins
	-- if PACKER_BOOTSTRAP then
	--   require("packer").sync()
	-- end
end)

-- session manager
local Path = require("plenary.path")
require("session_manager").setup({
	sessions_dir = Path:new(vim.fn.stdpath("data"), "sessions"), -- The directory where the session files will be saved.
	path_replacer = "__", -- The character to which the path separator will be replaced for session files.
	colon_replacer = "++", -- The character to which the colon symbol will be replaced for session files.
	autoload_mode = require("session_manager.config").AutoloadMode.LastSession, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
	autosave_last_session = true, -- Automatically save last session on exit and on session switch.
	autosave_ignore_not_normal = true, -- Plugin will not save a session when no buffers are opened, or all of them aren't writable or listed.
	autosave_ignore_filetypes = { -- All buffers of these file types will be closed before the session is saved.
		"gitcommit",
	},
	autosave_only_in_session = false, -- Always autosaves session. If true, only autosaves after a session is active.
	max_path_length = 80, -- Shorten the display path if length exceeds this threshold. Use 0 if don't want to shorten the path at all.
})

-- General tweaks --
-- Set wrap and spell in markdown and gitcommit
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "gitcommit", "markdown", "text" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})
vim.cmd("autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif")
-- Fixes Autocomment
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	callback = function()
		vim.cmd("set formatoptions-=cro")
		-- vim.cmd("GuessIndent")
	end,
})
-- Highlight Yanked Text
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
	end,
})
vim.cmd("colorscheme tokyonight-moon")

-- Diagnostics
local sign = function(diagnostics_opt)
	vim.fn.sign_define(diagnostics_opt.name, {
		texthl = diagnostics_opt.name,
		text = diagnostics_opt.text,
		numhl = "",
	})
end
sign({ name = "DiagnosticSignError", text = "✘" })
sign({ name = "DiagnosticSignWarn", text = "▲" })
sign({ name = "DiagnosticSignHint", text = "⚑" })
sign({ name = "DiagnosticSignInfo", text = "" })
vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	severity_sort = false,
	float = {
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
	experimental = {
		ghost_text = true,
	},
})

-- LSP config
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
local lsp_defaults = {
	flags = {
		debounce_text_changes = 150,
	},
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
	on_attach = function()
		vim.api.nvim_exec_autocmds("User", { pattern = "LspAttached" })
	end,
}
require("mason").setup({})
require("mason-lspconfig").setup({
	automatic_installation = true,
})
local lspconfig = require("lspconfig")
lspconfig.util.default_config = vim.tbl_deep_extend("force", lspconfig.util.default_config, lsp_defaults)
-- Add new LSP servers here
require("mason-lspconfig").setup_handlers({
	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function(server_name) -- default handler (optional)
		lspconfig[server_name].setup({})
	end,
	-- Next, you can provide targeted overrides for specific servers.
	["pyright"] = function()
		lspconfig.pyright.setup({
			settings = {
				python = {
					analysis = {
						typeCheckingMode = "off",
					},
				},
			},
		})
	end,
	["clangd"] = function()
		local capabilities_clangd = vim.lsp.protocol.make_client_capabilities()
		capabilities_clangd.offsetEncoding = { "utf-16" }
		lspconfig.clangd.setup({
			capabilities = capabilities_clangd,
			-- cmd = { "clangd", "--completion-style=detailed" },
		})
	end,
	["sumneko_lua"] = function()
		lspconfig.sumneko_lua.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
					telemetry = {
						enable = false,
					},
				},
			},
			single_file_support = true,
			-- on_attach = function(client, bufnr)
			-- 	lspconfig.util.default_config.on_attach(client, bufnr)
			-- end,
		})
	end,
	["sqls"] = function()
		lspconfig.sqls.setup({
			settings = {
				sqls = {
					connections = {
						{
							driver = "mysql",
							dataSourceName = "dbuser:password@tcp(localhost:3306)/test",
						},
					},
				},
			},
		})
	end,
})
-- require("lsp_signature").setup({
-- 	bind = true, -- This is mandatory, otherwise border config won't get registered.
-- 	handler_opts = {
-- 		border = "rounded",
-- 	},
-- })

require("luasnip.loaders.from_vscode").lazy_load()
local luasnip = require("luasnip")

-- null-ls
local null_ls = require("null-ls")
null_ls.setup({
	debug = true,
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.black,
		-- null_ls.builtins.formatting.fixjson,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.shfmt,
		-- null_ls.builtins.formatting.sql_formatter,
		null_ls.builtins.formatting.sqlfluff.with({
			extra_args = { "--dialect", "mysql" },
		}),
		null_ls.builtins.diagnostics.sqlfluff.with({
			extra_args = { "--dialect", "mysql" },
		}),
		null_ls.builtins.formatting.markdownlint,
		-- null_ls.builtins.formatting.goimports,
		null_ls.builtins.code_actions.eslint,
		null_ls.builtins.code_actions.shellcheck,
		-- null_ls.builtins.diagnostics.eslint_d,
		null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.diagnostics.pylint.with({
			prefer_local = ".venv/bin",
			diagnostics_postprocess = function(diagnostic)
				diagnostic.code = diagnostic.message_id
			end,
		}),
		null_ls.builtins.diagnostics.golangci_lint,
		null_ls.builtins.diagnostics.markdownlint,
		null_ls.builtins.diagnostics.cpplint,
		-- null_ls.builtins.diagnostics.cppcheck.with({
		-- 	command = vim.fn.stdpath("data") .. "/mason/packages/cppcheck/cppcheck",
		-- }),
		null_ls.builtins.diagnostics.luacheck.with({
			extra_args = { "--globals", "vim" },
		}),
		null_ls.builtins.completion.spell.with({
			filetypes = { "text", "markdown" },
		}),
	},
})

-- Autocomplete completion CMP
local cmp = require("cmp")
local select_opts = { behavior = cmp.SelectBehavior.Insert }
cmp.setup({
	enabled = function()
		return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt" or require("cmp_dap").is_dap_buffer()
	end,
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
		{ name = "luasnip" },
		-- { name = "nvim_lsp_signature_help" },
		{ name = "path" },
		{ name = "buffer" },
		{ name = "dap" },
	},
	window = {
		documentation = cmp.config.window.bordered(),
	},
	formatting = {
		fields = { "menu", "abbr", "kind" },
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = "λ",
				luasnip = "⋗",
				buffer = "Ω",
				path = "🖫",
			}
			item.menu = menu_icon[entry.source.name]
			return item
		end,
	},
	mapping = {
		["<C-p>"] = cmp.mapping.select_prev_item(select_opts),
		["<C-n>"] = cmp.mapping.select_next_item(select_opts),
		-- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
		-- ['<C-f>'] = cmp.mapping.scroll_docs(4),
		["<C-e>"] = cmp.mapping.abort(),
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		["<Tab>"] = cmp.mapping(function(fallback)
			local col = vim.fn.col(".") - 1
			if cmp.visible() then
				cmp.select_next_item(select_opts)
			elseif col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
				fallback()
			elseif luasnip.jumpable(1) then
				luasnip.jump(1)
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item(select_opts)
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	},
})

-- Telescope --
local telescope = require("telescope")
local telescope_actions = require("telescope.actions")
telescope.setup({
	defaults = {
		prompt_prefix = " ",
		selection_caret = " ",
		path_display = { "smart" },
		file_ignore_patterns = { ".git", "node_modules" },
		mappings = {
			i = {
				["<Down>"] = telescope_actions.cycle_history_next,
				["<Up>"] = telescope_actions.cycle_history_prev,
				["<C-n>"] = telescope_actions.move_selection_next,
				["<C-p>"] = telescope_actions.move_selection_previous,
			},
		},
	},
	pickers = {
		find_files = {
			hidden = true,
		},
		live_grep = {
			only_sort_text = true,
			additional_args = function(_)
				return { "--hidden" }
			end,
		},
	},
})

-- Project
local project = require("project_nvim")
project.setup({
	-- Manual mode doesn't automatically change your root directory, so you have
	-- the option to manually do so using `:ProjectRoot` command.
	manual_mode = false,
	-- Methods of detecting the root directory. **"lsp"** uses the native neovim
	-- lsp, while **"pattern"** uses vim-rooter like glob pattern matching. Here
	-- order matters: if one is not detected, the other is used as fallback. You
	-- can also delete or rearangne the detection methods.
	detection_methods = { "lsp", "pattern" },
	-- All the patterns used to detect root dir, when **"pattern"** is in
	-- detection_methods
	patterns = { ".sln", ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
	-- Table of lsp clients to ignore by name
	-- eg: { "efm", ... }
	ignore_lsp = {},
	-- Don't calculate root dir on specific directories
	-- Ex: { "~/.cargo/*", ... }
	exclude_dirs = {},
	-- Show hidden files in telescope
	show_hidden = true,
	-- When set to false, you will get a message when project.nvim changes your
	-- directory.
	silent_chdir = false,
	-- Path where project.nvim will store the project history for use in
	-- telescope
	datapath = vim.fn.stdpath("data"),
})
telescope.load_extension("projects")

-- TreeSitter
local configs = require("nvim-treesitter.configs")
configs.setup({
	ensure_installed = "all", -- one of "all" or a list of languages
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		--[[ disable = { "css" }, -- list of language that will be disabled ]]
	},
	autopairs = {
		enable = true,
	},
	-- indent = { enable = true, disable = { "python", "css" } },
	indent = { enable = true },
})

-- Comment
require("Comment").setup({})

-- hop.nvim
require("hop").setup({})

-- Setup nvim-cmp.
local npairs = require("nvim-autopairs")
npairs.setup({
	check_ts = true, -- treesitter integration
	disable_filetype = { "TelescopePrompt" },
})
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({}))

-- nvim-tree
local nvim_tree = require("nvim-tree")
local nvim_tree_config = require("nvim-tree.config")
local tree_cb = nvim_tree_config.nvim_tree_callback
nvim_tree.setup({
	git = {
		ignore = false,
	},
	filters = {
		dotfiles = false,
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	renderer = {
		root_folder_modifier = ":t",
		icons = {
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					arrow_open = "",
					arrow_closed = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "",
					staged = "S",
					unmerged = "",
					renamed = "➜",
					untracked = "U",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	view = {
		width = 30,
		-- height = 30,
		side = "left",
		mappings = {
			list = {
				{ key = { "l", "<CR>", "o" }, cb = tree_cb("edit") },
				{ key = "h", cb = tree_cb("close_node") },
				{ key = "v", cb = tree_cb("vsplit") },
			},
		},
	},
})

-- guess-indent
-- This is the default configuration
require("guess-indent").setup({
	auto_cmd = true, -- Set to false to disable automatic execution
	filetype_exclude = { -- A list of filetypes for which the auto command gets disabled
		"netrw",
		"tutor",
	},
	buftype_exclude = { -- A list of buffer types for which the auto command gets disabled
		"help",
		"nofile",
		"terminal",
		"prompt",
	},
})

-- DAP config --
local dap = require("dap")
-- nodejs
dap.adapters.node2 = {
	type = "executable",
	command = "node",
	args = { vim.fn.stdpath("data") .. "/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" },
}
dap.configurations.javascript = {
	{
		name = "Launch",
		type = "node2",
		request = "launch",
		program = "${file}",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = "inspector",
		console = "integratedTerminal",
	},
	{
		-- For this to work you need to make sure the node process is started with the `--inspect` flag.
		name = "Attach to process",
		type = "node2",
		request = "attach",
		processId = require("dap.utils").pick_process,
	},
}
-- chrome
dap.adapters.chrome = {
	type = "executable",
	command = "node",
	args = { vim.fn.stdpath("data") .. "/mason/packages/chrome-debug-adapter/out/src/chromeDebug.js" },
}
dap.configurations.javascriptreact = { -- change this to javascript if needed
	{
		type = "chrome",
		request = "attach",
		program = "${file}",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = "inspector",
		port = 9222,
		webRoot = "${workspaceFolder}",
	},
}
dap.configurations.typescriptreact = { -- change to typescript if needed
	{
		type = "chrome",
		request = "attach",
		program = "${file}",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = "inspector",
		port = 9222,
		webRoot = "${workspaceFolder}",
	},
}
-- python
dap.adapters.python = {
	type = "executable",
	command = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python",
	-- command = vim.fn.getcwd() .. string.format("%s/bin/python", os.getenv("VIRTUAL_ENV")),
	args = { "-m", "debugpy.adapter" },
}
dap.configurations.python = {
	{
		-- The first three options are required by nvim-dap
		type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
		request = "launch",
		name = "Launch file",
		-- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options
		program = "${file}", -- This configuration will launch the current file if used.
		pythonPath = function()
			-- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
			-- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
			-- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
			-- local cwd = vim.fn.getcwd()
			-- local pypath = cwd .. string.format("%s/bin/python", os.getenv("VIRTUAL_ENV"))
			local pypath = string.format("%s/bin/python", os.getenv("VIRTUAL_ENV"))
			if vim.fn.executable(pypath) == 1 then
				return pypath
				-- elseif vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
				-- 	return cwd .. '/venv/bin/python'
				-- elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
				-- 	return cwd .. '/.venv/bin/python'
			else
				return vim.fn.exepath("python")
			end
		end,
	},
}
-- cpp/c/rust
-- note to self: while compiling c/c++, use flags -g -O0 when debugging
dap.adapters.cppdbg = {
	id = "cppdbg",
	type = "executable",
	command = vim.fn.stdpath("data") .. "/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
}
dap.configurations.cpp = {
	{
		name = "Launch file",
		type = "cppdbg",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopAtEntry = true,
		stopAtConnect = true,
		justMyCode = true,
		args = {},
		setupCommands = {
			{
				text = "-enable-pretty-printing",
				description = "enable pretty printing",
				ignoreFailures = false,
			},
		},
	},
	{
		name = "Attach to gdbserver :1234",
		type = "cppdbg",
		request = "launch",
		MIMode = "gdb",
		miDebuggerServerAddress = "localhost:1234",
		miDebuggerPath = vim.fn.exepath("gdb"),
		cwd = "${workspaceFolder}",
		stopAtConnect = true,
		justMyCode = true,
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		setupCommands = {
			{
				text = "-enable-pretty-printing",
				description = "enable pretty printing",
				ignoreFailures = false,
			},
		},
	},
}
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

-- dapui
require("dapui").setup({
	icons = { expanded = "▾", collapsed = "▸" },
	mappings = {
		-- Use a table to apply multiple mappings
		expand = { "<CR>", "<2-LeftMouse>" },
		open = "o",
		remove = "d",
		edit = "e",
		repl = "r",
		toggle = "t",
	},
	-- Expand lines larger than the window
	-- Requires >= 0.7
	expand_lines = vim.fn.has("nvim-0.7"),
	-- Layouts define sections of the screen to place windows.
	-- The position can be "left", "right", "top" or "bottom".
	-- The size specifies the height/width depending on position. It can be an Int
	-- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
	-- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
	-- Elements are the elements shown in the layout (in order).
	-- Layouts are opened in order so that earlier layouts take priority in window sizing.
	layouts = {
		{
			elements = {
				-- Elements can be strings or table with id and size keys.
				{ id = "scopes", size = 0.25 },
				"breakpoints",
				"stacks",
				"watches",
			},
			size = 40, -- 40 columns
			position = "left",
		},
		{
			elements = {
				"repl",
				"console",
			},
			size = 0.25, -- 25% of total lines
			position = "bottom",
		},
	},
	floating = {
		max_height = nil, -- These can be integers or a float between 0 and 1.
		max_width = nil, -- Floats will be treated as percentage of your screen.
		border = "single", -- Border style. Can be "single", "double" or "rounded"
		mappings = {
			close = { "q", "<Esc>" },
		},
	},
	windows = { indent = 1 },
	render = {
		max_type_length = nil, -- Can be integer or nil.
	},
})
local dapui = require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

-- Visual config --
-- Bufferline
local bufferline = require("bufferline")
bufferline.setup({
	options = {
		-- Use nvim built-in lsp
		diagnostics = "nvim_lsp",
		-- Get out of the way on the left nvim-tree The location of
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
			},
		},
	},
})

-- Lualine
local lualine = require("lualine")
local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end
local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = true,
	always_visible = true,
}
local diff = {
	"diff",
	colored = true,
	-- symbols = { added = "", modified = "", removed = "" }, -- changes diff symbols
	cond = hide_in_width,
}
local filetype = {
	"filetype",
	icons_enabled = true,
}
local location = {
	"location",
	padding = 0,
}
local spaces = function()
	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end
lualine.setup({
	options = {
		globalstatus = true,
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "alpha", "dashboard" },
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = { diagnostics },
		lualine_x = { diff, spaces, "encoding", filetype },
		lualine_y = { location },
		lualine_z = { "progress" },
	},
})

-- Blankline
-- local indent_blankline = require("indent_blankline")
-- indent_blankline.setup({
-- 	char = "▏",
-- 	show_trailing_blankline_indent = true,
-- 	show_first_indent_level = true,
-- 	use_treesitter = true,
-- 	show_current_context = true,
-- 	buftype_exclude = { "terminal", "nofile" },
-- 	filetype_exclude = {
-- 		"help",
-- 		"packer",
-- 		"NvimTree",
-- 	},
-- })

-- which-key.nvim
require("which-key").setup()

-- nvim-bqf
require("bqf").setup({
	auto_enable = false,
})

-- gitsigns
require("gitsigns").setup({
	on_attach = function(bufnr)
		local gs = package.loaded.gitsigns
		local function map(mode, l, r, opts_gitsigns)
			opts_gitsigns = opts_gitsigns or {}
			opts_gitsigns.buffer = bufnr
			vim.keymap.set(mode, l, r, opts_gitsigns)
		end

		-- Navigation
		map("n", "]c", function()
			if vim.wo.diff then
				return "]c"
			end
			vim.schedule(function()
				gs.next_hunk()
			end)
			return "<Ignore>"
		end, { expr = true })
		map("n", "[c", function()
			if vim.wo.diff then
				return "[c"
			end
			vim.schedule(function()
				gs.prev_hunk()
			end)
			return "<Ignore>"
		end, { expr = true })
		-- Actions
		map({ "n", "v" }, "<leader>hs", ":Gitsigns stage_hunk<CR>")
		map({ "n", "v" }, "<leader>hr", ":Gitsigns reset_hunk<CR>")
		map("n", "<leader>hS", ":Gitsigns stage_buffer<CR>")
		map("n", "<leader>hu", ":Gitsigns undo_stage_hunk<CR>")
		map("n", "<leader>hR", ":Gitsigns reset_buffer<CR>")
		map("n", "<leader>hp", ":Gitsigns preview_hunk<CR>")
		map("n", "<leader>hb", ":Gitsigns blame_line<CR>")
		map("n", "<leader>tb", ":Gitsigns toggle_current_line_blame<CR>")
		map("n", "<leader>hd", ":Gitsigns diffthis HEAD<CR>")
		map("n", "<leader>hD", ":Gitsigns diffthis ~<CR>")
		map("n", "<leader>tD", ":Gitsigns toggle_deleted<CR>")
		-- Text object
		map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>")
	end,
})

-- Copilot
vim.g.copilot_node_command = "~/.nvm/versions/node/v17.9.1/bin/node"
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""
vim.api.nvim_set_keymap("i", "<C-F>", "copilot#Accept()", { expr = true })
