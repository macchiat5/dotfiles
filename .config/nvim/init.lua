local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
vim.o.termguicolors = true

require("options")
require("lazy").setup("plugins")

-- 저장된 초기 디렉토리를 :Neotree 명령으로 열기
vim.g.initial_cwd = vim.fn.getcwd()
vim.api.nvim_create_user_command("NeotreeInitial", function()
  vim.cmd("Neotree left dir=" .. vim.g.initial_cwd .. " toggle")
end, {})
