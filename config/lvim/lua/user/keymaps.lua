---------------------------------------------------------------------
-- Key Mappings
---------------------------------------------------------------------
lvim.keys.normal_mode["<C-w>"] = "<C-w>"
-- lvim.keys.normal_mode["<S-h>"] = nil
-- lvim.keys.normal_mode["<S-l>"] = nil
lvim.keys.insert_mode["jj"] = { nil, { silent = true, noremap = false } }
lvim.keys.insert_mode["kj"] = { nil, { silent = true, noremap = false } }
lvim.keys.insert_mode["jk"] = { nil, { silent = true, noremap = false } }
lvim.keys.visual_mode["<"] = { nil, { silent = true, noremap = false } }
lvim.keys.visual_mode[">"] = { nil, { silent = true, noremap = false } }
-- lvim.keys.normal_mode["<leader>q"] = ""

-- set leader key
vim.cmd([[
  let g:mapleader = "\<Space>"
]])

-- Better cursor move
lvim.keys.insert_mode["<C-h>"] = "<Left>"
lvim.keys.insert_mode["<C-j>"] = "<Down>"
lvim.keys.insert_mode["<C-k>"] = "<Up>"
lvim.keys.insert_mode["<C-l>"] = "<Right>"
lvim.keys.normal_mode["<C-h>"] = "<Left>"
lvim.keys.normal_mode["<C-j>"] = "<Down>"
lvim.keys.normal_mode["<C-k>"] = "<Up>"
lvim.keys.normal_mode["<C-l>"] = "<Right>"
lvim.keys.command_mode = {
  ["<C-h>"] = { "<Left>", { expr = false, noremap = true }, },
  ["<C-l>"] = { "<Right>", { expr = false, noremap = true }, },
  ["<C-j>"] = { "<Down>", { expr = false, noremap = true }, },
  ["<C-k>"] = { "<Up>", { expr = false, noremap = true }, },
}
lvim.keys.term_mode["<C-h>"] = "<Left>"
lvim.keys.term_mode["<C-j>"] = "<Down>"
lvim.keys.term_mode["<C-k>"] = "<Up>"
lvim.keys.term_mode["<C-l>"] = "<Right>"
lvim.keys.term_mode["<C-n>"] = "<Down>"
lvim.keys.term_mode["<C-p>"] = "<Up>"

-- Delete backword
lvim.keys.insert_mode["<C-y>"] = "<C-o>dw"
lvim.keys.insert_mode["<C-g>"] = "<C-o>d$"

-- Remove highlight
lvim.keys.normal_mode["<Esc><Esc>"] = ":<C-u>noh<CR>"

-- Paste
vim.cmd([[
  nnoremap <expr><silent> <A-p>   getregtype() ==# 'V' ? 'p' : 'o<Esc>p'
  nnoremap <expr><silent> <S-A-p> getregtype() ==# 'V' ? '<S-p>' : 'O<Esc>p'
]])
lvim.keys.insert_mode["<C-v>"] = "<C-r>*"

-- Select all
-- lvim.keys.normal_mode["<C-a>"] = "gg<S-v>G"

-- Increment/decrement
lvim.keys.normal_mode["+"] = "<C-a>"
lvim.keys.normal_mode["-"] = "<C-x>"

-- Easy CAPS
lvim.keys.insert_mode["<A-PageUp>"] = "<ESC>viwUi"
lvim.keys.normal_mode["<A-PageUp>"] = "viwU<Esc>"
lvim.keys.insert_mode["<A-PageDown>"] = "<ESC>viwui"
lvim.keys.normal_mode["<A-PageDown>"] = "viwu<Esc>"

-- Resize window
lvim.keys.normal_mode["<C-A-h>"] = "<C-w><"
lvim.keys.normal_mode["<C-A-l>"] = "<C-w>>"
lvim.keys.normal_mode["<C-A-k>"] = "<C-w>+"
lvim.keys.normal_mode["<C-A-j>"] = "<C-w>-"

-- Disable recording key
lvim.keys.normal_mode["qq"] = "<NOP>"

-- Disable inserting the character under the cursor
lvim.keys.insert_mode["<C-e>"] = "<NOP>"

-- Quick list
vim.cmd([[
  nnoremap <Leader>a :botright copen<CR>
  nnoremap <Leader>q :cclose<CR>
  nnoremap <C-n> :cnext<CR>
  nnoremap <C-p> :cprevious<CR>
]])

-- Location list
vim.cmd([[
  nnoremap <Leader>o :lopen<CR>
  nnoremap <Leader>c :lclose<CR>
]])

-- Line number toggle
vim.cmd([[
  nnoremap <silent> <F11> :set norelativenumber \| set invnumber<CR>
]])

-- Relative line number toggle
vim.cmd([[
  nnoremap <silent> <F12> :set nonumber \| set invrelativenumber<CR>
]])

-- Save with root permission
vim.cmd([[
  command! W w !sudo tee > /dev/null %
]])

-- Jump last edit
vim.cmd([[
  nnoremap <silent> `` `.
]])

-- Tab
-- vim.cmd([[
--   " The prefix key.
--   nnoremap    [Tag]   <Nop>
--   " Tab jump
--   nmap    t [Tag]
--   " t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ
--   for n in range(1, 9)
--     execute 'nnoremap <silent> [Tag]'.n  ':<C-u> tabnext'.n.'<CR>'
--   endfor

--   " New tab (most right)
--   nnoremap <silent> [Tag]t :<C-u> $tabnew$<CR>
--   " Close tab
--   nnoremap <silent> [Tag]w :<C-u> tabclose<CR>
--   " Next tab
--   nnoremap <silent> [Tag]l :<C-u> tabnext<CR>
--   " Previous tab
--   nnoremap <silent> [Tag]h :<C-u> tabprevious<CR>
-- ]])
local function get_updated_buffers(buf_nums, sorted)
  local lazy = require("bufferline.lazy")
  local utils = lazy.require("bufferline.utils")

  if not sorted then
    return buf_nums
  end
  local nums = { unpack(buf_nums) }
  local reverse_lookup_sorted = utils.tbl_reverse_lookup(sorted)

  --- a comparator that sorts buffers by their position in sorted
  local sort_by_sorted = function(buf_id_1, buf_id_2)
    local buf_1_rank = reverse_lookup_sorted[buf_id_1]
    local buf_2_rank = reverse_lookup_sorted[buf_id_2]
    if not buf_1_rank then
      return false
    end
    if not buf_2_rank then
      return true
    end
    return buf_1_rank < buf_2_rank
  end
  table.sort(nums, sort_by_sorted)
  return nums
end

function _G.getbufid(n)
  local lazy = require("bufferline.lazy")
  local utils = lazy.require("bufferline.utils")
  local state = lazy.require("bufferline.state")
  local buf_nums = utils.get_valid_buffers()
  buf_nums = get_updated_buffers(buf_nums, state.custom_sort)
  for i, buf_id in ipairs(buf_nums) do
    if i == n then
      return buf_id
    end
  end
end

vim.cmd([[
  " The prefix key.
  nnoremap    [Tag]   <Nop>
  " Tab jump
  nmap    t [Tag]
  " t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ
  for n in range(1, 9)
    "execute 'nnoremap <silent> [Tag]'.n  ':call BufferLineGoToBuffer__('.n.')<CR>'
    execute 'nnoremap <silent> [Tag]'.n  ':BufferLineGoToBuffer'.n.'<CR>'
  endfor

  " New tab (most right)
  nnoremap <silent> [Tag]t :enew<CR>
  " Close tab
  nnoremap <silent> [Tag]w :bd<CR>
  nnoremap <silent> [Tag]W :%bd<CR>
  " Next tab
  nnoremap <silent> [Tag]l :BufferLineCycleNext<CR>
  nnoremap <silent> [Tag]cl :BufferLineCloseRight<CR>
  nnoremap <silent> [Tag]cL :call BufferLineCloseRight__()<CR>
  nnoremap <silent> [Tag]q :call BufferLineCloseExternal__()<CR>
  nnoremap <silent> [Tag]n :tabnext<CR>
  " Previous tab
  nnoremap <silent> [Tag]h :BufferLineCyclePrev<CR>
  nnoremap <silent> [Tag]ch :BufferLineCloseLeft<CR>
  nnoremap <silent> [Tag]cH :call BufferLineCloseLeft__()<CR>
  nnoremap <silent> [Tag]p :tabprevious<CR>

  nnoremap <silent> <S-l> :BufferLineMoveNext<CR>
  nnoremap <silent> <S-h> :BufferLineMovePrev<CR>

  function! BufferLineCloseRight__()
    :BufferLineCloseRight
    :bd
  endfunction

  function! BufferLineCloseLeft__()
    :BufferLineCloseLeft
    :bd
  endfunction

  function! BufferLineCloseExternal__()
    let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val) && nvim_buf_get_name(v:val) !~ getcwd()')
    if empty(buffers) | echo "No external buffer" | return | endif
    :execute 'bd '.join(buffers, ' ')
  endfunction

  function! BufferLineGoToBuffer__(num)
    let n = v:lua.getbufid(a:num)
    if n == v:null | return | endif
    :execute 'b'.n
  endfunction
]])

-- Terminal
vim.cmd([[
  " New terminal (most right)
  nnoremap <silent> t\ :<C-u> enew \| terminal<CR>
  " New split terminal
  nnoremap <silent> ts :split \| resize 20 \| terminal<CR>
  " New vsplit terminal
  nnoremap <silent> tv :vsplit \| terminal<CR>

  tnoremap <Esc> <C-\><C-n>
  autocmd TermOpen * startinsert
]])

-- Commentary
vim.cmd([[
  nnoremap \\ :Commentary<CR>
  vnoremap \\ :Commentary<CR>
  "nnoremap || :gb<CR>
  "vnoremap || :gb<CR>
  "nnoremap \|\| <Cmd>lua ___comment_call("gbc")<CR>g@$
  "vnoremap \|\| <Cmd>lua ___comment_call("gbc")<CR>g@$
]])

-- Telescope
vim.cmd([[
  nnoremap <silent>;F :Telescope find_files prompt_prefix=🔍<CR>
  nnoremap <silent>;H :Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍<CR>
  nnoremap <silent>;G :Telescope live_grep file_command=rg,--column,--line-number,--no-heading,--hidden,--smart-case,.+<CR>
  nnoremap <silent>;\ :Telescope buffers<CR>
  nnoremap <silent>ff :Telescope git_files<CR>
  nnoremap <silent>fs :Telescope git_status<CR>
  nnoremap <silent>fb :Telescope git_branches<CR>
  nnoremap <silent>fc :Telescope git_commits<CR>
]])

-- Fuzzy Finder
vim.cmd([[
  nnoremap FF :File<space>
  nnoremap FG :Rg<space>
  :command! -nargs=1 -complete=dir File lua require'fzf-lua'.files({ cwd=<q-args> })
  :command! -nargs=1 -complete=dir Rg lua require'fzf-lua'.grep_project({ cwd=<q-args> })
]])

local keymap_opts = { silent = true, noremap = true }
-- vim.keymap.set('n', '<leader>f', "<cmd>lua require('fzf-lua').files()<CR>")
vim.keymap.set('n', '<leader>f', ":FzfLua files<CR>", keymap_opts)
vim.keymap.set('n', '<leader>g', ":FzfLua grep_project<CR>", keymap_opts)

vim.keymap.set('n', '<leader>,', ":FzfLua files info=inline cwd=~/.config/lvim<CR>", keymap_opts)
vim.keymap.set('n', '<leader>::', ":FzfLua files cwd=~/.local/share/lunarvim<CR>", keymap_opts)
vim.keymap.set('n', '<leader>:l', ":FzfLua files cwd=~/.local<CR>", keymap_opts)
vim.keymap.set('n', '<leader>:c', ":FzfLua files cwd=~/.config<CR>", keymap_opts)
vim.keymap.set('n', '<leader>s', ":FzfLua git_status()<CR>", keymap_opts)
vim.keymap.set('n', '<leader>b', ":FzfLua git_branches()<CR>", keymap_opts)
vim.keymap.set('n', '<leader>/', ":FzfLua buffers<CR>", keymap_opts)
vim.keymap.set('n', '<leader>\\', ":FzfLua blines<CR>", keymap_opts)
vim.keymap.set('n', '<leader>.', ":FzfLua resume<CR>", keymap_opts)

vim.keymap.set('n', '<leader>lr', ":FzfLua lsp_references<CR>", keymap_opts)
vim.keymap.set('n', '<leader>ld', ":FzfLua lsp_definitions<CR>", keymap_opts)
vim.keymap.set('n', '<leader>lD', ":FzfLua lsp_declarations<CR>", keymap_opts)
vim.keymap.set('n', '<leader>li', ":FzfLua lsp_implementations<CR>", keymap_opts)
vim.keymap.set('n', '<leader>ls', ":FzfLua lsp_document_symbols<CR>", keymap_opts)
vim.keymap.set('n', '<leader>lt', ":FzfLua lsp_typedefs<CR>", keymap_opts)
vim.keymap.set('n', '<leader>ll', ":FzfLua diagnostics_document<CR>", keymap_opts)

-- Nvim Tree
vim.cmd([[
  nnoremap <silent> <Leader>` :NvimTreeToggle<CR>
]])

-- Diffview
vim.cmd([[
  nnoremap <silent> do :DiffviewOpen -uno<CR>
  nnoremap <silent> dc :DiffviewClose<CR>
  nnoremap <silent> dt :DiffviewToggleFiles<CR>
  nnoremap <silent> dh :DiffviewFileHistory<CR>
]])

-- Gitsigns
vim.cmd([[
  nnoremap <silent> gsh :Gitsigns preview_hunk<CR>
  nnoremap <silent> gsn :Gitsigns next_hunk<CR>
  nnoremap <silent> gsp :Gitsigns prev_hunk<CR>
  nnoremap <silent> gsr :Gitsigns reset_hunk<CR>
  nnoremap <silent> gss :Gitsigns stage_hunk<CR>
  nnoremap <silent> gsa :Gitsigns stage_buffer<CR>
  nnoremap <silent> gsu :Gitsigns undo_stage_hunk<CR>
  nnoremap <silent> gsd :Gitsigns diffthis<CR>
]])
