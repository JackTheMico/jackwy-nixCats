require("snacks.bigfile").setup()

require("nixCatsUtils").setup {
  non_nix_value = true;
}

local lze = require("lze")

lze.load {
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
lze.load("plugins")
