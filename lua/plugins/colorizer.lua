-- In your plugins/init.lua or equivalent configuration file
return {
  'NvChad/nvim-colorizer.lua',
  event = 'VeryLazy', -- Load it only when needed
  config = function()
    require('colorizer').setup({
      -- Explicitly set mode to virtualtext (this is the default)
      mode = 'foreground',
      -- You can try a different character if '■' doesn't show up
      -- virtualtext = '█', -- A wider block
      -- virtualtext = '●', -- A circle (if your font supports it)
    })
  end,
}
