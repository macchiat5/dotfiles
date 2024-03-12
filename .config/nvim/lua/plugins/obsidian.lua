return {
  "epwalsh/obsidian.nvim",
  -- A list of workspace names, paths, and configuration overrides.
  -- If you use the Obsidian app, the 'path' of a workspace should generally be
  -- your vault root (where the `.obsidian` folder is located).
  -- When obsidian.nvim is loaded by your plugin manager, it will automatically set
  -- the workspace to the first workspace in the list whose `path` is a parent of the
  -- current markdown file being edited.
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/.vaults/personal",
      },
      {
        name = "work",
        path = "~/.vaults/work",
        -- Optional, override certain settings.
        overrides = {
          notes_subdir = "notes",
        },
      },
    },
  },
}
