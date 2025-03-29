-- Installing Lazy Plugin Manager --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

-- Core files
require("core.options")
require("core.keymaps")
require("core.autocommands")

-- Extra utilities
require("core.extras.cmd-persistent")
require("core.extras.session")

-- Plugins
require("core.plugins")
require("core.plugin-config")
