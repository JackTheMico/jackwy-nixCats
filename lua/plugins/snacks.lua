return {
  "snacks.nvim",
  keys = {
    { '<c-\\>', function() Snacks.terminal() end, mode = { 'n' }, desc = 'open snacks terminal' },
  },
  after = function(_)
    require('snacks').setup({
      terminal = { enabled = true, },
    })
  end,
}
