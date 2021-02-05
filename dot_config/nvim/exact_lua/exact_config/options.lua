vim.g.autoformat = false
vim.g.root_spec = { "cwd" }
vim.opt.relativenumber = false
vim.opt.spelllang = { "en", "cjk" }
vim.opt.clipboard = ""

local is_ssh = vim.env.SSH_CLIENT ~= nil or vim.env.SSH_TTY ~= nil

if is_ssh then
	vim.g.clipboard = {
		name = "OSC 52",
		copy = {
			["+"] = require("vim.ui.clipboard.osc52").copy("+"),
			["*"] = require("vim.ui.clipboard.osc52").copy("*"),
		},
		paste = {
			["+"] = require("vim.ui.clipboard.osc52").paste("+"),
			["*"] = require("vim.ui.clipboard.osc52").paste("*"),
		},
	}
end
