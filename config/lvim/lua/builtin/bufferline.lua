local palettes = {
  col1 = { bg = '#383838' },
  col2 = { bg = '#444444' },
  col3 = { fg = '#eeeeee', bg = '#383838' },
  col4 = { fg = '#777777', bg = '#444444' },
  col5 = { fg = '#dddddd', bg = '#383838' },
  col6 = { fg = '#383838', bg = '#383838' },
  col7 = { fg = '#383838', bg = '#444444' },
}

lvim.builtin.bufferline.options.numbers = "ordinal"
lvim.builtin.bufferline.options.separator_style = "slope"
lvim.builtin.bufferline.highlights.fill = palettes.col1
lvim.builtin.bufferline.highlights.background = palettes.col2
lvim.builtin.bufferline.highlights.tab = palettes.col1
lvim.builtin.bufferline.highlights.tab_selected = palettes.col3
lvim.builtin.bufferline.highlights.tab_close = palettes.col1
lvim.builtin.bufferline.highlights.close_button = palettes.col2
lvim.builtin.bufferline.highlights.close_button_visible = palettes.col4
lvim.builtin.bufferline.highlights.close_button_selected = palettes.col5
lvim.builtin.bufferline.highlights.buffer_visible = palettes.col4
lvim.builtin.bufferline.highlights.buffer_selected = palettes.col5
lvim.builtin.bufferline.highlights.numbers = palettes.col2
lvim.builtin.bufferline.highlights.numbers_visible = palettes.col4
lvim.builtin.bufferline.highlights.numbers_selected = palettes.col5
lvim.builtin.bufferline.highlights.diagnostic = palettes.col2
lvim.builtin.bufferline.highlights.diagnostic_visible = palettes.col4
lvim.builtin.bufferline.highlights.diagnostic_selected = palettes.col1
lvim.builtin.bufferline.highlights.hint = palettes.col2
lvim.builtin.bufferline.highlights.hint_visible = palettes.col4
lvim.builtin.bufferline.highlights.hint_selected = palettes.col1
lvim.builtin.bufferline.highlights.hint_diagnostic = palettes.col2
lvim.builtin.bufferline.highlights.hint_diagnostic_visible = palettes.col4
lvim.builtin.bufferline.highlights.hint_diagnostic_selected = palettes.col1
lvim.builtin.bufferline.highlights.info = palettes.col2
lvim.builtin.bufferline.highlights.info_visible = palettes.col4
lvim.builtin.bufferline.highlights.info_selected = palettes.col1
lvim.builtin.bufferline.highlights.info_diagnostic = palettes.col2
lvim.builtin.bufferline.highlights.info_diagnostic_visible = palettes.col4
lvim.builtin.bufferline.highlights.info_diagnostic_selected = palettes.col1
lvim.builtin.bufferline.highlights.warning = palettes.col2
lvim.builtin.bufferline.highlights.warning_visible = palettes.col4
lvim.builtin.bufferline.highlights.warning_selected = palettes.col1
lvim.builtin.bufferline.highlights.warning_diagnostic = palettes.col2
lvim.builtin.bufferline.highlights.warning_diagnostic_visible = palettes.col4
lvim.builtin.bufferline.highlights.warning_diagnostic_selected = palettes.col1
lvim.builtin.bufferline.highlights.error = palettes.col2
lvim.builtin.bufferline.highlights.error_visible = palettes.col4
lvim.builtin.bufferline.highlights.error_selected = palettes.col1
lvim.builtin.bufferline.highlights.error_diagnostic = palettes.col2
lvim.builtin.bufferline.highlights.error_diagnostic_visible = palettes.col4
lvim.builtin.bufferline.highlights.error_diagnostic_selected = palettes.col1
lvim.builtin.bufferline.highlights.modified = palettes.col2
lvim.builtin.bufferline.highlights.modified_visible = palettes.col4
lvim.builtin.bufferline.highlights.modified_selected = palettes.col1
lvim.builtin.bufferline.highlights.duplicate_selected = palettes.col1
lvim.builtin.bufferline.highlights.duplicate_visible = palettes.col4
lvim.builtin.bufferline.highlights.duplicate = palettes.col5
lvim.builtin.bufferline.highlights.separator_selected = palettes.col6
lvim.builtin.bufferline.highlights.separator_visible = palettes.col7
lvim.builtin.bufferline.highlights.separator = palettes.col7
lvim.builtin.bufferline.highlights.indicator_selected = palettes.col5
lvim.builtin.bufferline.highlights.pick_selected = palettes.col5
lvim.builtin.bufferline.highlights.pick_visible = palettes.col5
lvim.builtin.bufferline.highlights.pick = palettes.col5
lvim.builtin.bufferline.highlights.offset_separator = palettes.col5
