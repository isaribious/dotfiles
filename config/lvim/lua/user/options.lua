---------------------------------------------------------------------
-- Options
---------------------------------------------------------------------
-- For vim
vim.opt.termguicolors = true              -- Enables 24-bit RGB color in the TUI.
vim.opt.background = "dark"               -- tell vim what the background color looks like
vim.opt.backspace = "start,eol,indent"
vim.opt.clipboard = "unnamed,unnamedplus" -- Copy paste between vim and everything else
vim.opt.cmdheight = 2                     -- More space for displaying messages
-- vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.encoding = "utf-8"                -- The encoding displayed
vim.opt.expandtab = true                  -- Converts tabs to spaces
vim.opt.fileencoding = "utf-8"            -- The encoding written to file
vim.opt.fileencodings = "utf-8,sjis,euc-jp,latin"
vim.opt.fileformats = "unix,dos,mac"      -- Automatic recognition of line feed code
vim.opt.hidden = true                     -- Required to keep multiple buffers open multiple buffers
vim.opt.hlsearch = true
vim.opt.ignorecase = true                 -- Ignore case for search
vim.opt.iskeyword:append('-')             -- treat dash separated words as a word text object
vim.opt.laststatus = 2                    -- Always display the status line
vim.opt.list = true                       -- Tab display switch
vim.opt.listchars = { tab = "  " }        -- Put cursor in the head of tab char.
vim.opt.mouse = 'a'                       -- Enable your mouse
vim.opt.wrap = true                       -- Display long lines as wrap
vim.opt.whichwrap = ""                    -- Wrap between lines and Move cursor
vim.opt.number = false                    -- Enable your mouse
vim.opt.ruler = true                      -- Show the cursor position all the time
vim.opt.relativenumber = true             -- Line relative numbers
-- vim.opt.scrolloff = 10
vim.opt.shiftwidth = 4                    -- Change the number of space characters inserted for indentation
vim.opt.showcmd = true
vim.opt.showtabline = 2                   -- Always show tabs
vim.opt.signcolumn = "yes"
vim.opt.smartindent = false               -- Makes indenting smart
vim.opt.smarttab = true                   -- Makes tabbing smarter will realize you have 2 vs 4
vim.opt.softtabstop = 4
vim.opt.splitbelow = false                -- Horizontal splits will automatically be below
vim.opt.splitright = false                -- Vertical splits will automatically be to the right
vim.opt.statusline = "%f%m%=%l,%c\\ %{'['.(&fenc!=''?&fenc:&enc).']\\ ['.&fileformat.']'}"
vim.opt.tabstop = 4                       -- Insert 2 spaces for a tab
vim.opt.timeoutlen = 500                  -- By default timeoutlen is 1000 ms
vim.opt.title = true
vim.opt.updatetime = 300                  -- Faster completion
vim.opt.wildmenu = true
vim.opt.wildmode = "list:longest"
-- vim.opt.wildmode = "longest:full"

vim.opt.inccommand = "split" -- incremental substitution (neovim)

vim.g.python3_host_prog = "/usr/bin/python3"

-- For lvim
lvim.log.level = "warn"
lvim.format_on_save = true
-- lvim.colorscheme = "onedarker"
lvim.colorscheme = "nordfox"
lvim.transparent_window = true
-- lvim.line_wrap_cursor_movement = false -- Invalid in lvim master 1.1.13 (nvim v0.7.0)
