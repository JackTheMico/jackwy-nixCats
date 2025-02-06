return {
  "which-key.nvim",
  event = "DeferredUIEnter",
  load = function (name)
      vim.cmd.packadd(name)
      vim.cmd.packadd("which-key")
  end,
  after = function ()
    require("which-key").setup({})
  end
}

