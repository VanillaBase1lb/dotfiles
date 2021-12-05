vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4

vim.wo.number = true
-- vim.wo.relativenumber = true
vim.wo.scrolloff = 7
vim.wo.wrap = false
vim.wo.cursorline = true

vim.o.mouse = 'a'
vim.o.hidden = true
vim.o.completeopt = 'menu,menuone,noselect'
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.undofile = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4

vim.g.mapleader = ' '
vim.g.vscode_style="dark"

vim.cmd[[colorscheme gruvbox-material]]

vim.api.nvim_set_keymap('n', '<c-j>', '<c-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-k>', '<c-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-h>', '<c-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-l>', '<c-w>l', { noremap = true })
-- vim.api.nvim_set_keymap('i', 'kj', '<esc>', { noremap = true })
-- swap Esc and Caps Lock
vim.api.nvim_set_keymap('n', '<tab>', ':bn<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<s-tab>', ':bp<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>t', ':NERDTreeToggle<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>qw', ':w<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>qq', ':q<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>qQ', ':qa!<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>qb', ':bd<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>qB', ':bd!<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-right>', ':vertical resize +1<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-left>', ':vertical resize -1<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-down>', ':resize +1<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<c-up>', ':resize -1<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>s', "<cmd>lua require'hop'.hint_char1({})<cr>", {})
-- vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
-- vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>S', "<cmd>lua require('spectre').open()<cr>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-E>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("s", "<C-E>", "<Plug>luasnip-next-choice", {})

require ('packer').startup(function ()
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'nvim-treesitter/nvim-treesitter'
    use 'L3MON4D3/LuaSnip'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'numToStr/Comment.nvim'
    use 'Mofiqul/vscode.nvim'
    use 'preservim/nerdtree'
    use 'phaazon/hop.nvim'
    use 'folke/which-key.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'windwp/nvim-spectre'
    use 'windwp/nvim-autopairs'
    use 'iamcco/markdown-preview.nvim'
    use 'tpope/vim-fugitive'
    use 'williamboman/nvim-lsp-installer'
    use 'kevinhwang91/nvim-bqf'
    use 'tpope/vim-surround'
    use 'sainnhe/gruvbox-material'
end)

-- Modules


-- nvim-autopairs

require('nvim-autopairs').setup({
    enable_check_bracket_line = false,
    ignored_next_char = "[%w%.]"
})

-- nvim-spectre

require 'spectre'.setup ({
    color_devicons = true,
    open_cmd = 'vnew',
    live_update = false, -- auto excute search again when you write any file in vim
    line_sep_start = '┌-----------------------------------------',
    result_padding = '¦  ',
    line_sep       = '└-----------------------------------------',
    highlight = {
        ui = "String",
        search = "DiffChange",
        replace = "DiffDelete"
    },
    mapping={
        ['toggle_line'] = {
            map = "dd",
            cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
            desc = "toggle current item"
        },
        ['enter_file'] = {
            map = "<cr>",
            cmd = "<cmd>lua require('spectre.actions').select_entry()<CR>",
            desc = "goto current file"
        },
        ['send_to_qf'] = {
            map = "<leader>q",
            cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
            desc = "send all item to quickfix"
        },
        ['replace_cmd'] = {
            map = "<leader>c",
            cmd = "<cmd>lua require('spectre.actions').replace_cmd()<CR>",
            desc = "input replace vim command"
        },
        ['show_option_menu'] = {
            map = "<leader>o",
            cmd = "<cmd>lua require('spectre').show_options()<CR>",
            desc = "show option"
        },
        ['run_replace'] = {
            map = "<leader>R",
            cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
            desc = "replace all"
        },
        ['change_view_mode'] = {
            map = "<leader>v",
            cmd = "<cmd>lua require('spectre').change_view()<CR>",
            desc = "change result view mode"
        },
        ['toggle_live_update']={
            map = "tu",
            cmd = "<cmd>lua require('spectre').toggle_live_update()<CR>",
            desc = "update change when vim write file."
        },
        ['toggle_ignore_case'] = {
            map = "ti",
            cmd = "<cmd>lua require('spectre').change_options('ignore-case')<CR>",
            desc = "toggle ignore case"
        },
        ['toggle_ignore_hidden'] = {
            map = "th",
            cmd = "<cmd>lua require('spectre').change_options('hidden')<CR>",
            desc = "toggle search hidden"
        },
        -- you can put your mapping here it only use normal mode
    },
    find_engine = {
        -- rg is map with finder_cmd
        ['rg'] = {
            cmd = "rg",
            -- default args
            args = {
                '--color=never',
                '--no-heading',
                '--with-filename',
                '--line-number',
                '--column',
            } ,
            options = {
                ['ignore-case'] = {
                    value= "--ignore-case",
                    icon="[I]",
                    desc="ignore case"
                },
                ['hidden'] = {
                    value="--hidden",
                    desc="hidden file",
                    icon="[H]"
                },
                -- you can put any rg search option you want here it can toggle with
                -- show_option function
            }
        },
        ['ag'] = {
            cmd = "ag",
            args = {
                '--vimgrep',
                '-s'
            } ,
            options = {
                ['ignore-case'] = {
                    value= "-i",
                    icon="[I]",
                    desc="ignore case"
                },
                ['hidden'] = {
                    value="--hidden",
                    desc="hidden file",
                    icon="[H]"
                },
            },
        },
    },
    replace_engine={
        ['sed']={
            cmd = "sed",
            args = nil
        },
        options = {
            ['ignore-case'] = {
                value= "--ignore-case",
                icon="[I]",
                desc="ignore case"
            },
        }
    },
    default = {
        find = {
            --pick one of item in find_engine
            cmd = "rg",
            options = {"ignore-case"}
        },
        replace={
            --pick one of item in replace_engine
            cmd = "sed"
        }
    },
    replace_vim_cmd = "cdo",
    is_open_target_win = true, --open file on opener window
    is_insert_mode = false  -- start open panel on is_insert_mode
})

-- telescope.nvim

require 'telescope'.setup {}

-- which-key.nvim

require 'which-key'.setup {}

-- hop.nvim

require 'hop'.setup {}

-- lualine

require 'lualine'.setup {
    tabline = {
        lualine_a = {'buffers'},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'tabs'}
    }
    -- },
    -- options = { theme = 'vscode' }
}

-- Treesitter configuration
-- Parsers must be installed manually via :TSInstall

require('nvim-treesitter.configs').setup {
    highlight = {
        enable = true, -- false will disable the whole extension
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = 'gnn',
            node_incremental = 'grn',
            scope_incremental = 'grc',
            node_decremental = 'grm',
        },
    },
    indent = {
        enable = false,
    },
    textobjects = {
        select = {
            enable = true,
            lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
                ['ac'] = '@class.outer',
                ['ic'] = '@class.inner',
            },
        },
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                [']m'] = '@function.outer',
                [']]'] = '@class.outer',
            },
            goto_next_end = {
                [']M'] = '@function.outer',
                [']['] = '@class.outer',
            },
            goto_previous_start = {
                ['[m'] = '@function.outer',
                ['[['] = '@class.outer',
            },
            goto_previous_end = {
                ['[M'] = '@function.outer',
                ['[]'] = '@class.outer',
            },
        },
    },
}

-- nvim-lspconfig https://github.com/neovim/nvim-lspconfig

-- local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=false }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<leader>ck', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    -- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    -- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    -- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', '<leader>cd', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<leader>cn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<leader>ce', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<leader>cq', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    buf_set_keymap('n', '<leader>cf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end

-- Setup lspconfig.
local caps = vim.lsp.protocol.make_client_capabilities()
caps = require('cmp_nvim_lsp').update_capabilities(caps)

-- Lsp installer

local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    -- local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    -- server:setup(opts)
    server:setup{
        on_attach = on_attach,
        capabilities = caps,
        flags = {
            debounce_text_changes = 150,
        }
    }
end)

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches

-- local servers = { 'tsserver', 'clangd', 'html', 'jsonls', 'jedi_language_server' }
-- for _, lsp in ipairs(servers) do
--     nvim_lsp[lsp].setup {
--         on_attach = on_attach,
--         capabilities = caps,
--         flags = {
--             debounce_text_changes = 150,
--         }
--     }
-- end

-- Comment.nvim


require('Comment').setup()

-- LuaSnip declaration

local luasnip = require 'luasnip'
local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

-- Setup nvim-cmp.
-- add nvim-autopair mapping for <cr>

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require'cmp'

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            luasnip.lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(), -- open autocomplete list
        ['<C-e>'] = cmp.mapping.close(), -- close autocomplete list
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
    }, {
        { name = 'buffer' },
        { name = 'path' }
    })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))
