return {
  "which-key.nvim",
  event = "DeferredUIEnter",
  load = function (name)
      vim.cmd.packadd(name)
      vim.cmd.packadd("which-key")
  end,
  after = function ()
    local wk = require("which-key")
    wk.add({
      { "<leader>s", group="Search" },
      { "<leader>sf", "<cmd>FzfLua files<cr>", desc = "Find Files", mode = "n" },
      { "<leader>sp", "<cmd>FzfLua live_grep_resume<cr>", desc = "Live Grep Project", mode = "n" },
      { "<leader>sb", "<cmd>FzfLua lgrep_curbuf<cr>", desc = "Live Grep CurBuf", mode = "n" },
      { "<leader>sw", "<cmd>FzfLua cword<cr>", desc = "Search Word", mode = "n" },
      { "<leader>b", group="Buffer" },
      { "<leader>bb", "<cmd>FzfLua buffers<cr>", desc = "Select Buffer", mode = "n" },
    })
  end
}

