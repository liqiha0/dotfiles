vim.opt.mouse = ""
vim.g.autoformat = false
-- vim.g.lazyvim_php_lsp = "intelephense"
vim.opt.clipboard = ""

if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h13"  -- 字体
  vim.g.neovide_transparency = 0.95              -- 透明度
  vim.g.neovide_cursor_animation_length = 0.05   -- 光标动画速度
  vim.g.neovide_cursor_vfx_mode = "railgun"      -- 光标特效
end

