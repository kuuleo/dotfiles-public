require('kuuleo.base')
require('kuuleo.highlights')
require('kuuleo.maps')
require('kuuleo.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('kuuleo.macos')
end
if is_win then
  require('kuuleo.windows')
end

vim.lsp.set_log_level("debug")
