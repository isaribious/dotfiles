require "lsp_signature".setup({
  bind = true, -- This is mandatory, otherwise border config won't get registered.
  handler_opts = {
    border = "rounded"
  },
  -- fix_pos = false,
  -- hint_enable = false,
  hint_prefix = " 💡 ",
  -- use_lspsaga = false,
  auto_close_after = nil,
})
