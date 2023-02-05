(require-macros :hibiscus.packer)

(packer-setup!)

(packer!
    ; Fennel plugins
    (use! :udayvir-singh/hibiscus.nvim)
    (use! :udayvir-singh/tangerine.nvim)
    (use! :lewis6991/impatient.nvim)

    ; Colors
    (use! :catppuccin/nvim)
    (use! :rebelot/kanagawa.nvim)
    (use! :nvim-treesitter/nvim-treesitter
          :run "TSUpdate")

    ; Telescope
    (use! :nvim-telescope/telescope.nvim
          :requires "nvim-lua/plenary.nvim")

    ; UI
    (use! :glepnir/dashboard-nvim)
    (use! :beauwilliams/statusline.lua)

    ; LSP
    (use! :VonHeikemen/lsp-zero.nvim
          :requires [
             "neovim/nvim-lspconfig"
             "williamboman/mason.nvim" 
             "williamboman/mason-lspconfig.nvim"
             "hrsh7th/nvim-cmp"
             "hrsh7th/cmp-nvim-lsp"
             "hrsh7th/cmp-buffer"
             "hrsh7th/cmp-path"
             "saadparwaiz1/cmp_luasnip"
             "hrsh7th/cmp-nvim-lua"
             "L3MON4D3/LuaSnip"
             "rafamadriz/friendly-snippets"
         ])

)
