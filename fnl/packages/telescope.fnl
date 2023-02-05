(require-macros :hibiscus.vim)
(local actions (require :telescope.actions))
(local telescope (require :telescope))

; Telescope.nvim
(map! [n :remap] "<Leader>ff" ":Telescope find_files <CR>")
(map! [n :remap] "<Leader>fg" ":Telescope live_grep <CR>")
(map! [n :remap] "<Leader>fb" ":Telescope buffers <CR>")
(map! [n :remap] "<Leader>fy" ":Telescope help_tags <CR>")

(telescope.setup {
    :defaults { :mappings {:i {"<esc>" actions.close }}}
})

