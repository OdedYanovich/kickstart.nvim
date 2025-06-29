return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {

      options = {
        icons_enabled = true,
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
      },
      sections = {
        lualine_c = {
          {
            'buffers',
            show_filename_only = true, -- Shows shortened relative path when set to false.
            hide_filename_extension = true, -- Hide filename extension when set to true.
            use_mode_colors = true,

            symbols = {
              modified = ' ●', -- Text to show when the buffer is modified
              alternate_file = '#', -- Text to show to identify the alternate file
              directory = '', -- Text to show when the buffer is a directory
            },
            buffers_color = {
              --   -- Same values as the general color option can be used here.
              active = { fg = '#ffffff', bg = '#005f87', gui = 'bold' }, -- color for the current (active) buffer
              inactive = { fg = '#000000', bg = '#c1c1c1' }, -- color for inactive buffers
            },
          },
        },
      },
    }
  end,
  --   -- lualine_a = { 'mode' },
  --   -- lualine_a = { 'buffers' },
  --   -- lualine_b = { 'branch', 'diff', 'diagnostics' },
  --   -- lualine_c = { 'filename' },
  --   -- lualine_x = { 'encoding', 'fileformat', 'filetype' },
  --   -- lualine_y = { 'progress' },
  --   -- lualine_z = { 'location' },
  -- },
}
