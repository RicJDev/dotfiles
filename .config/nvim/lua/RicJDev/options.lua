vim.wo.wrap = false
vim.o.guicursor = "n-v-c-i:block"
vim.o.linebreak = true
vim.cmd.colorscheme("onedark")

-------------------------------------- options ------------------------------------------
vim.o.laststatus = 3
vim.o.showmode = false

vim.o.clipboard = "unnamedplus"
vim.o.cursorline = true
vim.o.cursorlineopt = "both"

-- Indenting
vim.o.expandtab = true
vim.o.smartindent = true

vim.opt.fillchars = { eob = " " }
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.mouse = "a"

-- Numbers
vim.o.number = true
vim.o.relativenumber = true
vim.o.numberwidth = 2
vim.o.ruler = false

-- Virtual column
vim.opt.colorcolumn = "80"

-- disable nvim intro
vim.opt.shortmess:append "sI"

vim.o.foldenable = true
vim.o.foldlevelstart = 99
vim.o.signcolumn = "yes"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.timeoutlen = 400
vim.o.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
vim.o.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
vim.opt.whichwrap:append "<>[]hl"

-- disable some default providers
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Ehm... other stuff
vim.opt.swapfile = false
