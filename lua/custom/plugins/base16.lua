return {
  'RRethy/base16-nvim',
  lazy = false, -- CRITICAL: Don't lazy-load this, it must load at boot
  priority = 1000, -- CRITICAL: Load this before all other plugins try to draw UI elements
  config = function()
    local ok, matugen = pcall(require, 'matugen')
    if ok then
      matugen.setup()
    else
      -- Fallback theme just in case matugen hasn't generated anything yet
      vim.cmd.colorscheme 'habamax'
    end
  end,
}
