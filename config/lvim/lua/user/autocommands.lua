-- Cursor highlight
vim.api.nvim_create_autocmd("WinEnter", {
  pattern = "*",
  command = "set cursorline"
})
vim.api.nvim_create_autocmd("WinLeave", {
  pattern = "*",
  command = "set nocursorline"
})

-- Yank Highlight
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  command = "silent! lua vim.highlight.on_yank {higroup=\"CursorLine\", timeout=150}"
})

-- Import
function OrgImports(wait_ms)
  local params = vim.lsp.util.make_range_params()
  params.context = { only = { "source.organizeImports" } }
  local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
  for _, res in pairs(result or {}) do
    for _, r in pairs(res.result or {}) do
      if r.edit then
        vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
      else
        vim.lsp.buf.execute_command(r.command)
      end
    end
  end
end

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  command = "lua OrgImports(1000)"
})

-- Colorscheme
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#777777" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#777777" })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3b4451" })
    vim.api.nvim_set_hl(0, "Comment", { fg = "#777777" })
    vim.api.nvim_set_hl(0, "TsComment", { fg = "#777777" })
    vim.api.nvim_set_hl(0, "Visual", { bg = "#5c6168" })
    vim.api.nvim_set_hl(0, "IncSearch", { fg = "#111111", bg = "#7aa4a1" })
    vim.api.nvim_set_hl(0, "Search", { fg = "#eeeeee", bg = "#425e5e" })
    -- vim.api.nvim_set_hl(0, "IncSearch", { fg = "#ffffff", bg = "#ff2255" })
    -- vim.api.nvim_set_hl(0, "Search", { fg = "#ebcb8b", bg = "#3b4252" })
    vim.api.nvim_set_hl(0, "MatchParen", { bg = "#777777" })
    vim.api.nvim_set_hl(0, "@Parameter", { fg = "#eeeeee" })
    vim.api.nvim_set_hl(0, "@NameSpace", { fg = "#eeeeee" })
    vim.api.nvim_set_hl(0, "@Variable.Builtin", { fg = "#eeeeee" })
    -- vim.api.nvim_set_hl(0, "@Function.Builtin", { fg = "#81A1C1" })
    -- vim.api.nvim_set_hl(0, "@Function.Macro", { fg = "#81A1C1" })

    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#2e3440" })
    vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })
    vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none" })
  end
})
-- #593ea0
-- #f20e5e
-- #425e5e
-- #587b7b
-- #7aa4a1

-- Indent
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = {
    "*.lua",
    "*.json",
    "*.html",
    "*.js",
    "*.css",
    "*.dart",
  },
  command = "setlocal ts=2 sw=2",
})
