(require-macros :hibiscus.vim)

(local treesitter (require :nvim-treesitter.configs))
(local colorscheme (require :kanagawa))

(colorscheme.setup {
    :transparent true
})
(color! "kanagawa")


(treesitter.setup {
    :ensure_installed "all"
    :highlight { :enable true }
    :refactor {
        :highlight_definitions { :enable true }
        :smart_rename {
            :enable true
            :keymaps { :smart_rename :<Leader>rr }
        }
    }
    :indent { :enable true }
})
