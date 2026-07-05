 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#18120e',
    base01 = '#241e1a',
    base02 = '#2f2924',
    base03 = '#9e8e81',
    base04 = '#d6c3b5',
    base05 = '#ece0d9',
    base06 = '#ece0d9',
    base07 = '#ece0d9',
    base08 = '#ffb4ab',
    base09 = '#c6cc7b',
    base0A = '#e5c0a1',
    base0B = '#feb878',
    base0C = '#c6cc7b',
    base0D = '#feb878',
    base0E = '#e5c0a1',
    base0F = '#93000a',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#ece0d9',          bg = '#18120e' })
  hi('TelescopeBorder',         { fg = '#9e8e81',             bg = '#18120e' })
  hi('TelescopePromptNormal',   { fg = '#ece0d9',          bg = '#18120e' })
  hi('TelescopePromptBorder',   { fg = '#9e8e81',             bg = '#18120e' })
  hi('TelescopePromptPrefix',   { fg = '#feb878',             bg = '#18120e' })
  hi('TelescopePromptCounter',  { fg = '#d6c3b5',  bg = '#18120e' })
  hi('TelescopePromptTitle',    { fg = '#18120e',             bg = '#feb878' })
  hi('TelescopePreviewTitle',   { fg = '#18120e',             bg = '#e5c0a1' })
  hi('TelescopeResultsTitle',   { fg = '#18120e',             bg = '#c6cc7b' })
  hi('TelescopeSelection',      { fg = '#ece0d9',          bg = '#2f2924' })
  hi('TelescopeSelectionCaret', { fg = '#feb878',             bg = '#2f2924' })
  hi('TelescopeMatching',       { fg = '#feb878',             bold = true })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
