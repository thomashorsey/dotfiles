vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.swapfile = false
vim.o.winborder = "single"

vim.pack.add({
        {src = "https://github.com/projekt0n/github-nvim-theme"},
        {src = "https://github.com/neovim/nvim-lspconfig"}
})

vim.cmd("colorscheme github_light")
vim.cmd(":hi statusline guibg=NONE guifg=black")

vim.lsp.enable({ "lua_ls", "marksman" })

vim.schedule(function()
        vim.o.clipboard = 'unnamedplus'
end)
