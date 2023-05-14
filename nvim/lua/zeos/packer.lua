return require('packer').startup(function(use)
    -- Packer for managing packages
    use 'wbthomason/packer.nvim'
    -- Colourscheme
    use("gruvbox-community/gruvbox")
    use("sainnhe/gruvbox-material")
    -- LSP server
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    use 'nvim-lua/lsp_extensions.nvim'
    -- Airline
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    -- Git and Github
    use 'tpope/vim-fugitive'
    -- UI
    use("onsails/lspkind-nvim")
    use("preservim/nerdtree")
    -- Telescope
    use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Fast. File. Movement.
    use('theprimeagen/harpoon')
    -- Oopsie daisy reverter
    use('mbbill/undotree')
    -- Treeeeeeeeee
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })
    use("nvim-treesitter/playground")
    use("romgrk/nvim-treesitter-context")
    -- Latex and Markdown previewer
    use 'emakman/neovim-latex-previewer'
    use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}
    -- Rust
    use 'simrat39/rust-tools.nvim'
    -- CAD deez nuts
    use {
        'salkin-mada/openscad.nvim',
        config = function ()
            require('openscad')
            -- load snippets, note requires
            vim.g.openscad_load_snippets = true
        end,
        requires = 'L3MON4D3/LuaSnip'
    }
end)
