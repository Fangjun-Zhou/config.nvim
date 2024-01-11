-- Bootstrap lazy.nvim.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Fetch stable release of lazy.nvim
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim plugins
local plugins = require("plugin")
local opt = {
  install = {
    -- Disable install missing plugins
    missing = false,
  }
}
require("lazy").setup(plugins, opts)

-- Run the configuration
require("config")
