local components = require "lvim.core.lualine.components"

lvim.builtin.lualine.options.theme = "nord"
lvim.builtin.lualine.options.section_separators = { left = '', right = '' }
lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.sections.lualine_b = {
  components.branch,
  components.filename,
}
lvim.builtin.lualine.sections.lualine_c = {
  components.diff,
  components.python_env,
}
lvim.builtin.lualine.sections.lualine_x = {
  components.diagnostics,
  components.treesitter,
  components.lsp,
  components.filetype,
  "fileformat",
  components.encoding,
}
lvim.builtin.lualine.sections.lualine_y = {
  components.progress
}
lvim.builtin.lualine.sections.lualine_z = {
  components.location
}
