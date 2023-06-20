require("nightfox").setup({
  palettes = {
    nordfox = {
      black = "#2E3440",             -- nord0 in palette
      dark_gray = "#3B4252",         -- nord1 in palette
      gray = "#434C5E",              -- nord2 in palette
      light_gray = "#4C566A",        -- nord3 in palette
      light_gray_bright = "#616E88", -- out of palette
      darkest_white = "#D8DEE9",     -- nord4 in palette
      darker_white = "#E5E9F0",      -- nord5 in palette
      white = "#ECEFF4",             -- nord6 in palette
      teal = "#8FBCBB",              -- nord7 in palette
      off_blue = "#7a9ca9",          -- nord8 in palette
      glacier = "#81A1C1",           -- nord9 in palette
      blue = "#5E81AC",              -- nord10 in palette
      red = "#BF616A",               -- nord11 in palette
      -- red = "#f38276",               -- nord11 in palette
      orange = "#D08770",            -- nord12 in palette
      yellow = "#EBCB8B",            -- nord13 in palette
      green = "#A3BE8C",             -- nord14 in palette
      purple = "#C19696",            -- nord15 in palette
      none = "NONE",
    },
  },
  specs = {
    nordfox = {
      syntax = {
        bracket     = "fg2",           -- spec.fg2,           -- Brackets and Punctuation
        builtin0    = "red",           -- pal.red.base,       -- Builtin variable
        builtin1    = "teal",          -- pal.cyan.bright,    -- Builtin type
        builtin2    = "purple",        -- pal.orange.bright,  -- Builtin const
        builtin3    = "red",           -- pal.red.bright,     -- Not used
        conditional = "glacier",       -- pal.magenta.bright, -- Conditional and loop
        const       = "white",         -- pal.orange.bright,  -- Constants, imports and booleans
        dep         = "fg3",           -- spec.fg3,           -- Deprecated
        field       = "darkest_white", -- pal.blue.base,      -- Field
        func        = "off_blue",      -- pal.blue.bright,    -- Functions and Titles
        ident       = "red",           -- pal.cyan.base,      -- Identifiers
        keyword     = "glacier",       -- pal.magenta.base,   -- Keywords
        number      = "purple",        -- pal.orange.base,    -- Numbers
        operator    = "fg2",           -- spec.fg2,           -- Operators
        preproc     = "magenta",       -- pal.pink.bright,    -- PreProc
        regex       = "teal",          -- pal.yellow.bright,  -- Regex
        statement   = "teal",          -- pal.magenta.base,   -- Statements
        string      = "green",         -- pal.green.base,     -- Strings
        type        = "teal",          -- pal.yellow.base,    -- Types
        variable    = "white",         -- pal.white.base,     -- Variables
      }
    }
  },
})
