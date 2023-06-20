local actions = require "fzf-lua.actions"

require 'fzf-lua'.setup({
  'fzf-native',
  winopts = {
    height     = 0.85,
    width      = 0.90,
    row        = 0.35,
    col        = 0.50,
    border     = 'rounded',
    fullscreen = false,
    preview    = {
      default = 'bat',
      title   = true,
    },
  },
  keymap = {
    fzf = {
      ["ctrl-d"] = "half-page-down",
      ["ctrl-u"] = "half-page-up",
      ["ctrl-r"] = "toggle-preview-wrap",
      ["ctrl-t"] = "toggle-preview",
      ["ctrl-f"] = "preview-page-down",
      ["ctrl-b"] = "preview-page-up",
      ["ctrl-e"] = "preview-down",
      ["ctrl-y"] = "preview-up",
    },
  },
  actions = {
    files = {
      ["default"] = actions.file_edit_or_qf,
      ["ctrl-s"]  = actions.file_split,
      ["ctrl-v"]  = actions.file_vsplit,
      ["alt-q"]   = actions.file_sel_to_qf,
      ["alt-l"]   = actions.file_sel_to_ll,
    },
    buffers = {
      ["default"] = actions.buf_edit,
      ["ctrl-s"]  = actions.buf_split,
      ["ctrl-v"]  = actions.buf_vsplit,
    }
  },
  fzf_opts = {
    ['--layout'] = 'default',
    -- ['--inline-info'] = '',
  },
  previewers = {
    bat = {
      args = "--style=header,grid,numbers,changes --color always",
      -- theme  = 'Nord', -- bat preview theme (bat --list-themes)
      -- config = nil,    -- nil uses $BAT_CONFIG_PATH
      -- config = "/home/shimauchi/.config/bat/config", -- nil uses $BAT_CONFIG_PATH
    },
  },
  grep = {
    rg_opts   = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 --hidden",
    no_header = true,
  },
})
