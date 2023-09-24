-- options settings
local set = vim.opt
local g = vim.g
local cmd = vim.cmd



set.backup = false
set.clipboard = set.clipboard + "unnamedplus"
set.cmdheight = 2
set.completeopt = { "menuone", "noselect", "noinsert" }
set.conceallevel = 0
set.fileencoding = "utf-8"
set.hlsearch = true
set.ignorecase = true
set.mouse = "a"
set.pumheight = 10
set.showmode = false
set.showtabline = 2
set.smartcase = true
set.smartindent = true
set.splitbelow = true
set.splitright = true
set.swapfile = false
set.timeoutlen = 1000
set.undofile = true
set.updatetime = 300
set.writebackup = false
set.expandtab = true
set.shiftwidth = 2
set.tabstop = 2
set.cursorline = true
set.number = true
set.relativenumber = true
set.numberwidth = 4
set.signcolumn = "yes"
set.wrap = false
set.scrolloff = 8
set.sidescrolloff = 8
set.guifont = "monospace:h17"


-- from another file
--
--

set.hidden = true
set.inccommand = "split"
set.shell = "bash"
set.list = true
set.listchars = { space = "⋅", tab = "| ", eol = "↴" }
set.undofile = true
set.undodir = os.getenv("HOME") .. "/.local/state/nvim/undo"
-- patterns to ignore during file-navigation
set.wildignore = set.wildignore + "*.o,*.rej,*.so"
-- faster scrolling
set.lazyredraw = true


-- remove whitespace on save
cmd([[au BufWritePre * :%s/\s\+$//e]])
-- don't auto commenting new lines
cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])
-- completion options
cmd(
    [[
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
]]
)


-- nvim-tree
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
