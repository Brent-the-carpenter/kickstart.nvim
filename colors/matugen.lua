-- ~/.config/nvim/colors/matugen.lua

-- Clear out old highlights
vim.cmd 'hi clear'
if vim.fn.exists 'syntax_on' == 1 then vim.cmd 'syntax reset' end

-- Tell Neovim the name of this theme
vim.g.colors_name = 'matugen'

-- Force clear the Lua cache and call your Matugen setup function
package.loaded['matugen'] = nil
require('matugen').setup()
