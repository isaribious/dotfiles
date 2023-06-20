-- Activation for Core Plugins
lvim.builtin.alpha.active = false
lvim.builtin.which_key.active = false
lvim.builtin.terminal.active = true
lvim.builtin.lualine.active = true
lvim.builtin.bufferline.active = true
lvim.builtin.breadcrumbs.active = false
lvim.builtin.illuminate.active = false

-- Builtin Configuration
reload "builtin.lualine"
reload "builtin.bufferline"
reload "builtin.telescope"
reload "builtin.treesitter"
reload "builtin.project"
reload "builtin.cmp"
reload "builtin.lsp"
reload "builtin.terminal"

-- User Configuration
reload "user.plugins"
reload "user.options"
reload "user.keymaps"
reload "user.nightfox"
reload "user.diffview"
reload "user.lsp-signature"
reload "user.colorizer"
reload "user.fzf-lua"
reload "user.autocommands"
