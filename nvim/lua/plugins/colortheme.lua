return {
  {
    'thesimonho/kanagawa-paper.nvim',
    lazy = false,
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'kanagawa-paper-ink'
    end,
    opts = { ... },
  },
  -- {
  --   'rebelot/kanagawa.nvim',
  --   lazy = false, -- load it immediately (optional)
  --   priority = 1000, -- make sure colorscheme loads early (optional)
  --   config = function()
  --     require('kanagawa').setup {
  --       -- Optional: override default options here
  --       undercurl = true,
  --       commentStyle = { italic = true },
  --       keywordStyle = { italic = true },
  --       statementStyle = { bold = true },
  --       transparent = false,
  --       dimInactive = false,
  --       terminalColors = true,
  --       overrides = function(colors)
  --         local bg = colors.theme.ui.bg
  --         return {
  --           LineNr = { bg = bg, fg = colors.palette.fujiGray },
  --           CursorLineNr = { bg = bg, bold = true },
  --           SignColumn = { bg = bg },
  --           FoldColumn = { bg = bg },
  --           GitSignsAdd = { bg = bg },
  --           GitSignsChange = { bg = bg },
  --           GitSignsDelete = { bg = bg },
  --         }
  --       end,
  --       -- theme = 'wave', -- default theme (wave / dragon / lotus)
  --       -- background = { -- map the value of 'background' option to a theme
  --       --   dark = 'wave', -- try "dragon" !
  --       --   light = 'lotus',
  --       -- },
  --     }
  --     vim.cmd 'colorscheme kanagawa' -- actually activate the theme
  --   end,
  -- },
}
