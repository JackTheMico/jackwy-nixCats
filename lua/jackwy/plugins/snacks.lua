return {
  "snacks.nvim",
  event = "DeferredUIEnter",
  -- 将键位映射移到 after 回调中
  after = function(_)
    local Snacks = require("snacks")  -- 局部引入模块
    Snacks.setup({
      terminal = { enabled = true },
      explorer = { enabled = true },
      picker = { enabled = true },
      dashboard = { enabled = true },
      indent = { enabled = true },
    })
    -- 在初始化后设置键位映射
    vim.keymap.set("n", "<c-\\>", function()
      Snacks.terminal()
    end, { desc = "Toggle Terminal" })
    vim.keymap.set("n", "<leader>gg", function()
      Snacks.lazygit()
    end, { desc = "Lazygit" })
  end,
}

