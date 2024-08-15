-- init.lua

-- Install Packer (if you haven't already)
vim.cmd([[packadd packer.nvim]])

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    -- File Tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require'nvim-tree'.setup {
                -- Add your custom configurations here if needed
            -- view = {
            --    mappings = {
            --      list = {
            --        { key = "v", action = "vsplit" }, -- Open in vertical split
            --        { key = "s", action = "split" },  -- Open in horizontal split
            --        { key = "t", action = "tabnew" }, -- Open in new tab
            --      }
            --    }
            --  }
            }
        end
    }
    use 'gruvbox-community/gruvbox'
    use 'hoob3rt/lualine.nvim'
    use 'romgrk/barbar.nvim'
    -- Autocompletion
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-cmdline',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip'
        },
        config = function()
            local cmp = require'cmp'
            cmp.setup {
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                }, {
                    { name = 'buffer' },
                })
            }
        end
    }
    -- LSP
    use 'neovim/nvim-lspconfig'
    
    -- C++ LSP (clangd)
    require('lspconfig').clangd.setup{
        on_attach = function(client, bufnr)
            -- Your on_attach configuration here
        end,
        flags = {
            debounce_text_changes = 150,
        },
        cmd = { "clangd", "--background-index", "--clang-tidy", "--completion-style=detailed" },
        filetypes = { "c", "cpp", "objc", "objcpp" },
        root_dir = require('lspconfig').util.root_pattern("compile_commands.json", ".git"),
        init_options = {
            clangd = {
                clangdPath = "/usr/bin/clangd",
                extraArgs = { "-I/usr/include/python3.12" }
            }
        },
    }
    
    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = "cpp", -- List of parsers to install
                highlight = {
                    enable = true,
                },
            }
        end
    }
end)

-- Basic settings
-- Set <Leader> to space
vim.g.mapleader = ' '
vim.o.number = true
vim.o.relativenumber = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.smartindent = true
vim.o.wrap = false
-- Set clipboard to unnamedplus
vim.opt.clipboard = 'unnamedplus'

-- Map <Esc> to jk
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

-- Keybindings for LSP diagnostics
vim.api.nvim_set_keymap('n', '<leader>w', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })

-- Keybinding for Nvim Tree
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Set up LSP for C++
local lspconfig = require('lspconfig')
lspconfig.clangd.setup {
    cmd = { "clangd", "--background-index", "--clang-tidy", "--completion-style=detailed" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git"),
}

-- Enable autocompletion
local cmp = require'cmp'
local luasnip = require'luasnip'

-- Set up auto-completion
-- vim.o.completeopt = 'menuone,noselect'

-- Apply theme
vim.cmd('colorscheme gruvbox')

-- Set background transparency
-- Enable transparency for gruvbox
-- vim.g.gruvbox_transparent_bg = 1
-- 
vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]
vim.cmd[[hi NonText guibg=NONE ctermbg=NONE]]
vim.cmd[[hi SignColumn guibg=NONE]]
vim.cmd[[hi EndOfBuffer guibg=NONE]]

