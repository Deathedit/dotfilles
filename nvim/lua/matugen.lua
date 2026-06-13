 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#14121c',
    base01 = '#211e28',
    base02 = '#2b2833',
    base03 = '#948da4',
    base04 = '#cbc3dc',
    base05 = '#e7e0ef',
    base06 = '#e7e0ef',
    base07 = '#e7e0ef',
    base08 = '#ffb4ab',
    base09 = '#cebdfe',
    base0A = '#9bcbfb',
    base0B = '#96ccff',
    base0C = '#cebdfe',
    base0D = '#96ccff',
    base0E = '#9bcbfb',
    base0F = '#93000a',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#e7e0ef',          bg = '#14121c' })
  hi('TelescopeBorder',         { fg = '#948da4',             bg = '#14121c' })
  hi('TelescopePromptNormal',   { fg = '#e7e0ef',          bg = '#14121c' })
  hi('TelescopePromptBorder',   { fg = '#948da4',             bg = '#14121c' })
  hi('TelescopePromptPrefix',   { fg = '#96ccff',             bg = '#14121c' })
  hi('TelescopePromptCounter',  { fg = '#cbc3dc',  bg = '#14121c' })
  hi('TelescopePromptTitle',    { fg = '#14121c',             bg = '#96ccff' })
  hi('TelescopePreviewTitle',   { fg = '#14121c',             bg = '#9bcbfb' })
  hi('TelescopeResultsTitle',   { fg = '#14121c',             bg = '#cebdfe' })
  hi('TelescopeSelection',      { fg = '#e7e0ef',          bg = '#2b2833' })
  hi('TelescopeSelectionCaret', { fg = '#96ccff',             bg = '#2b2833' })
  hi('TelescopeMatching',       { fg = '#96ccff',             bold = true })
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
