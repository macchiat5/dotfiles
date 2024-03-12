vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set cursorline")
vim.cmd("set number relativenumber")

vim.g.mapleader = " "
vim.g.python3_host_prog = "/Users/chiatomac/.pyenv/shims/python3"
vim.g.ruby_host_prog = "/Users/chiatomac/.rbenv/shims/ruby"

-- code runner
vim.keymap.set(
  "n",
  "<leader>r",
  ":RunCode<CR>",
  { noremap = true, silent = false }
)
vim.keymap.set(
  "n",
  "<leader>rf",
  ":RunFile<CR>",
  { noremap = true, silent = false }
)
vim.keymap.set(
  "n",
  "<leader>rft",
  ":RunFile tab<CR>",
  { noremap = true, silent = false }
)
vim.keymap.set(
  "n",
  "<leader>rp",
  ":RunProject<CR>",
  { noremap = true, silent = false }
)
vim.keymap.set(
  "n",
  "<leader>rc",
  ":RunClose<CR>",
  { noremap = true, silent = false }
)
vim.keymap.set(
  "n",
  "<leader>crf",
  ":CRFiletype<CR>",
  { noremap = true, silent = false }
)
vim.keymap.set(
  "n",
  "<leader>crp",
  ":CRProjects<CR>",
  { noremap = true, silent = false }
)

-- Neotree
vim.keymap.set(
  "n",
  "<leader>cf",
  ":Neotree focus filesystem float /Users/chiatomac/.config/nvim<CR>",
  { noremap = true, silent = false }
)
