require("snacks.quickfile").setup()

require("nixCatsUtils").setup {
  non_nix_value = true;
}

local lze = require("lze")

lze.load("plugins")

lze.load {
  "snacks.nvim",
  event = "DeferredUIEnter",
  -- 将键位映射移到 after 回调中
  after = function(_)
    local Snacks = require('snacks')  -- 局部引入模块
    require('snacks').setup({
      terminal = { enabled = true },
    })
    
    -- 在初始化后设置键位映射
    vim.keymap.set('n', '<c-\\>', function()
      Snacks.terminal()
    end, { desc = 'open snacks terminal' })
  end,
}
