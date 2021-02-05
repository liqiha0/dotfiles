vim.g.autoformat = false
vim.opt.clipboard = ""
vim.opt.relativenumber = false
vim.lsp.enable("kotlin_lsp")

if vim.g.neovide then
  vim.g.neovide_opacity = 0.85
  vim.g.neovide_window_blurred = true
end
