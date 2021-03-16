require('telescope').setup{
  defaults = {
    color_devicons = true
    prompt_prefix = "%> "
    selection_caret = "%> "
  }
  extensions = {
    fzf_writer = {
        minimum_grep_characters = 2,
        minimum_files_characters = 2,

        -- Disabled by default.
        -- Will probably slow down some aspects of the sorter, but can make color highlights.
        -- I will work on this more later.
        use_highlighter = true,
    }
  }
}
