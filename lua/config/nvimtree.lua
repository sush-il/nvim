return {
  -- Filters out dotfiles (like .git, .env)
  filters = {
    dotfiles = true,
  },

  git = { enable = true },

  -- Keeps the cursor at the file you opened instead of at the top
  hijack_cursor = true,

  -- Makes the root of the tree follow your working directory
  sync_root_with_cwd = true,

  update_focused_file = {
    enable = true,
    update_root = false, -- don't change root of tree, just highlight the file
  },

  view = {
    width = 30, 
    preserve_window_proportions = true, -- keeps splits from resizing weirdly
  },

  renderer = {
    root_folder_label = false, 
    highlight_git = true, -- enable git status colors
    indent_markers = {
      enable = true, 
    },
    icons = {
      glyphs = {
        default = "󰈚",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
        },
        git = {
          unmerged = "", 
        },
      },
    },
  },
}
