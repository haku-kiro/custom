-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.opt.spelllang = 'en_us'
vim.opt.spell = true
vim.wo.relativenumber = true

-- sigh...
-- edit one of the nvchad themes to be -> https://github.com/blazkowolf/gruber-darker.nvim
-- vim.cmd("colorscheme gruber-darker")
