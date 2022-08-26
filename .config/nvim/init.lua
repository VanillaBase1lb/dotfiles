vim.opt.backup = false -- creates a backup file
-- vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 1 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion (4000ms default)
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
-- vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
-- vim.opt.tabstop = 2                             -- insert 2 spaces for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set numbered lines
vim.opt.rnu = true
vim.opt.laststatus = 3
vim.opt.showcmd = true
vim.opt.ruler = false
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false -- display lines as one long line
vim.opt.scrolloff = 999
vim.opt.sidescrolloff = 999
-- vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
vim.opt.fillchars.eob = " "
vim.opt.shortmess:append("c")
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.iskeyword:append("-")

-- Shorten function name
-- local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = false }
--Remap space as leader key
vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.keymap.set("n", "<leader><leader>", ":", opts)
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
-- Normal --
-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)
-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", opts)
-- Clear highlights
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)
-- Operations on buffers/windows/frames
vim.keymap.set("n", "Q", ":bd!<CR>", opts)
vim.keymap.set("n", "<leader>bd", ":bd<CR>", opts)
vim.keymap.set("n", "<leader>bw", ":w<CR>", opts)
vim.keymap.set("n", "<leader>q", ":q<CR>", opts)
vim.keymap.set("n", "<leader>wd", ":q!<CR>", opts)
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", opts)
vim.keymap.set("n", "<leader>ws", ":split<CR>", opts)
vim.keymap.set("n", "<leader>wx", "<C-w>x", opts)
vim.keymap.set("n", "<leader>w=", "<C-w>=", opts)
vim.keymap.set("n", "<leader>bt", ":vnew<CR>", opts) -- create new temporary buffer in vsplit
-- Better paste
vim.keymap.set("v", "p", '"_dP', opts)
-- Better text navigation
vim.keymap.set({ "n", "v", "x" }, "s", require'hop'.hint_char1, opts)
-- Insert --
-- Press jk fast to enter
vim.keymap.set("i", "kj", "<ESC>", opts)
-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
-- Nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- Plugins --
-- Toggle
vim.keymap.set("n", "<leader>tq", ":BqfToggle<CR>", opts)
vim.keymap.set("n", "<leader>tu", ":UndotreeToggle<CR>", opts)
-- Telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>fg", ":Telescope grep_string<CR>", opts)
vim.keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>", opts)
vim.keymap.set("n", "<leader>fp", ":Telescope projects<CR>", opts)
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", opts)
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
vim.keymap.set("n", "<leader>fr", ":Telescope resume<CR>", opts)
vim.keymap.set("n", "<leader>ft", ":Telescope treesitter<CR>", opts)
vim.keymap.set("n", "<leader>fm", ":Telescope marks<CR>", opts)
-- Git
vim.keymap.set("n", "<leader>gg", ":Git<CR>", opts)
-- Go to init.lua
vim.keymap.set("n", "<leader>gh", ":e ~/.config/nvim/init.lua<CR>", opts)
-- LSP/autocomplete keybindings
vim.api.nvim_create_autocmd("User", {
	pattern = "LspAttached",
	desc = "LSP actions",
	callback = function()
		local lsp_map_opts = { buffer = 0 }
		vim.keymap.set("n", "K", vim.lsp.buf.hover, lsp_map_opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, lsp_map_opts)
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, lsp_map_opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, lsp_map_opts)
		vim.keymap.set("n", "go", vim.lsp.buf.type_definition, lsp_map_opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, lsp_map_opts)
		vim.keymap.set("n", "<leader>ls", vim.lsp.buf.signature_help, lsp_map_opts)
		vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, lsp_map_opts)
		vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, lsp_map_opts)
		vim.keymap.set("x", "<leader>la", vim.lsp.buf.range_code_action, lsp_map_opts)
		vim.keymap.set("n", "<leader>lf", vim.lsp.buf.formatting, lsp_map_opts)
		vim.keymap.set("n", "<leader>lq", vim.diagnostic.setloclist, lsp_map_opts)
		vim.keymap.set("n", "gl", vim.diagnostic.open_float, lsp_map_opts)
		vim.keymap.set("n", "[e", vim.diagnostic.goto_prev, lsp_map_opts)
		vim.keymap.set("n", "]e", vim.diagnostic.goto_next, lsp_map_opts)
	end,
})
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
	-- My plugins here
	use({ "wbthomason/packer.nvim" }) -- Have packer manage itself
	use({ "nvim-lua/plenary.nvim" }) -- Useful lua functions used by lots of plugins
	use({ "windwp/nvim-autopairs" }) -- Autopairs, integrates with both cmp and treesitter
	use({ "numToStr/Comment.nvim" })
	use({ "kyazdani42/nvim-web-devicons" })
	use({ "kyazdani42/nvim-tree.lua" })
	use({ "akinsho/bufferline.nvim" })
	use({ "nvim-lualine/lualine.nvim" })
	use({ "akinsho/toggleterm.nvim" })
	use({ "ahmedkhalf/project.nvim" })
	use({ "lewis6991/impatient.nvim" })
	use({ "lukas-reineke/indent-blankline.nvim" })
	-- Custom pugins
	use({ "NMAC427/guess-indent.nvim" })
	use({ "phaazon/hop.nvim" })
	use({ "folke/which-key.nvim" })
	use({ "tpope/vim-surround" })
	use({ "mbbill/undotree" })
	use({ "tpope/vim-fugitive" })
	use({ "kevinhwang91/nvim-bqf" })
	use({ "stefandtw/quickfix-reflector.vim" })
	use({ "Shatur/neovim-session-manager" })
	-- Colorschemes
	use({ "folke/tokyonight.nvim" })
	use({ "lunarvim/darkplus.nvim" })
	use({ "ellisonleao/gruvbox.nvim" })
	-- cmp plugins
	use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
	use({ "hrsh7th/cmp-buffer" }) -- buffer completions
	use({ "hrsh7th/cmp-path" }) -- path completions
	use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })
	-- snippets
	use({ "L3MON4D3/LuaSnip" }) --snippet engine
	use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use
	-- LSP
	use({ "neovim/nvim-lspconfig" }) -- enable LSP
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "RRethy/vim-illuminate" })
	-- Telescope
	use({ "nvim-telescope/telescope.nvim" })
	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter" })

	-- -- Automatically set up your configuration after cloning packer.nvim
	-- -- Put this at the end after all plugins
	-- if PACKER_BOOTSTRAP then
	--   require("packer").sync()
	-- end
end)



-- Impatient
local impatient = require("impatient")
impatient.enable_profile()
-- session manager
local Path = require('plenary.path')
require('session_manager').setup({
	sessions_dir = Path:new(vim.fn.stdpath('data'), 'sessions'), -- The directory where the session files will be saved.
	path_replacer = '__', -- The character to which the path separator will be replaced for session files.
	colon_replacer = '++', -- The character to which the colon symbol will be replaced for session files.
	autoload_mode = require('session_manager.config').AutoloadMode.LastSession, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
	autosave_last_session = true, -- Automatically save last session on exit and on session switch.
	autosave_ignore_not_normal = true, -- Plugin will not save a session when no buffers are opened, or all of them aren't writable or listed.
	autosave_ignore_filetypes = { -- All buffers of these file types will be closed before the session is saved.
		'gitcommit',
	},
	autosave_only_in_session = false, -- Always autosaves session. If true, only autosaves after a session is active.
	max_path_length = 80, -- Shorten the display path if length exceeds this threshold. Use 0 if don't want to shorten the path at all.
})



-- General tweaks --
-- Set wrap and spell in markdown and gitcommit
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "gitcommit", "markdown" },
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
	end,
})
-- Highlight Yanked Text
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
	end,
})
vim.cmd("colorscheme darkplus")



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
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
-- LSP config
require('mason').setup({})
require('mason-lspconfig').setup({})
local lsp_defaults = {
	flags = {
		debounce_text_changes = 150,
	},
	capabilities = require('cmp_nvim_lsp').update_capabilities(
		vim.lsp.protocol.make_client_capabilities()
	),
	on_attach = function()
		vim.api.nvim_exec_autocmds('User', { pattern = 'LspAttached' })
	end
}
local lspconfig = require('lspconfig')
lspconfig.util.default_config = vim.tbl_deep_extend(
	'force',
	lspconfig.util.default_config,
	lsp_defaults
)
-- Add new LSP servers here
lspconfig.tsserver.setup({})
lspconfig.html.setup({})
lspconfig.cssls.setup({})
lspconfig.yamlls.setup({})
lspconfig.sumneko_lua.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand "$VIMRUNTIME/lua"] = true,
					[vim.fn.stdpath "config" .. "/lua"] = true,
				},
			},
			telemetry = {
				enable = false,
			},

		}
	},
	single_file_support = true,
	on_attach = function(client, bufnr)
		lspconfig.util.default_config.on_attach(client, bufnr)
	end
})
-- Autocomplete completion CMP
require('luasnip.loaders.from_vscode').lazy_load()
local cmp = require('cmp')
local luasnip = require('luasnip')
local select_opts = { behavior = cmp.SelectBehavior.Insert }
cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end
	},
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lua' },
		{ name = 'luasnip' },
		{ name = 'path' },
		{ name = 'buffer' },
	},
	window = {
		documentation = cmp.config.window.bordered()
	},
	formatting = {
		fields = { 'menu', 'abbr', 'kind' },
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = 'λ',
				luasnip = '⋗',
				buffer = 'Ω',
				path = '🖫',
			}
			item.menu = menu_icon[entry.source.name]
			return item
		end,
	},
	mapping = {
		['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
		['<C-n>'] = cmp.mapping.select_next_item(select_opts),
		-- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
		-- ['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = false }),
		['<Tab>'] = cmp.mapping(function(fallback)
			local col = vim.fn.col('.') - 1
			if cmp.visible() then
				cmp.select_next_item(select_opts)
			elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
				fallback()
			elseif luasnip.jumpable(1) then
				luasnip.jump(1)
				cmp.complete()
			else
				fallback()
			end
		end, { 'i', 's' }),
		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item(select_opts)
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { 'i', 's' }),
	},
})



-- Telescope --
local telescope = require("telescope")
local actions = require("telescope.actions")
telescope.setup({
	defaults = {
		prompt_prefix = " ",
		selection_caret = " ",
		path_display = { "smart" },
		file_ignore_patterns = { ".git/", "node_modules" },
		mappings = {
			i = {
				["<Down>"] = actions.cycle_history_next,
				["<Up>"] = actions.cycle_history_prev,
				["<C-n>"] = actions.move_selection_next,
				["<C-p>"] = actions.move_selection_previous,
			},
		},
	},
	{
		pickers = {
			live_grep = {
				only_sort_text = true,
			},
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
	--[[ indent = { enable = true, disable = { "python", "css" } }, ]]
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
		height = 30,
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

-- Toggleterm
local toggleterm = require("toggleterm")
toggleterm.setup({
	-- size = 20,
	open_mapping = [[<c-\>]],
	-- hide_numbers = true,
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	-- close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
	},
})
function _G.set_terminal_keymaps()
	local terminal_opts = { noremap = true }
	-- vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], terminal_opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], terminal_opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], terminal_opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], terminal_opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")


-- Visual config --
-- Bufferline
local bufferline = require("bufferline")
bufferline.setup({
	options = {
		-- Use nvim built-in lsp
		diagnostics = "nvim_lsp",
		-- Get out of the way on the left nvim-tree The location of
		offsets = { {
			filetype = "NvimTree",
			text = "File Explorer",
			highlight = "Directory",
			text_align = "left"
		} }
	}
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

-- Illuminate
require('illuminate').configure({
	-- providers: provider used to get references in the buffer, ordered by priority
	providers = {
		'lsp',
		'treesitter',
		'regex',
	},
	-- delay: delay in milliseconds
	delay = 100,
	-- filetype_overrides: filetype specific overrides.
	-- The keys are strings to represent the filetype while the values are tables that
	-- supports the same keys passed to .configure except for filetypes_denylist and filetypes_allowlist
	filetype_overrides = {},
	-- filetypes_denylist: filetypes to not illuminate, this overrides filetypes_allowlist
	filetypes_denylist = {
		'dirvish',
		'fugitive',
	},
	-- filetypes_allowlist: filetypes to illuminate, this is overriden by filetypes_denylist
	filetypes_allowlist = {},
	-- modes_denylist: modes to not illuminate, this overrides modes_allowlist
	modes_denylist = {},
	-- modes_allowlist: modes to illuminate, this is overriden by modes_denylist
	modes_allowlist = {},
	-- providers_regex_syntax_denylist: syntax to not illuminate, this overrides providers_regex_syntax_allowlist
	-- Only applies to the 'regex' provider
	-- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
	providers_regex_syntax_denylist = {},
	-- providers_regex_syntax_allowlist: syntax to illuminate, this is overriden by providers_regex_syntax_denylist
	-- Only applies to the 'regex' provider
	-- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
	providers_regex_syntax_allowlist = {},
	-- under_cursor: whether or not to illuminate under the cursor
	under_cursor = true,
})

-- Blankline
local indent_blankline = require("indent_blankline")
indent_blankline.setup({
	char = "▏",
	show_trailing_blankline_indent = true,
	show_first_indent_level = true,
	use_treesitter = true,
	show_current_context = true,
	buftype_exclude = { "terminal", "nofile" },
	filetype_exclude = {
		"help",
		"packer",
		"NvimTree",
	},
})

-- which-key.nvim
require("which-key").setup({})
-- nvim-bqf
require("bqf").setup({})
