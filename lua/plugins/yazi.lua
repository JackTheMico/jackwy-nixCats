
return {
  "yazi.nvim",
  event = "DeferredUIEnter",
  load = function (name)
      vim.cmd.packadd(name)
      vim.cmd.packadd("yazi")
  end,
  after = function ()
    require("yazi").setup({})
  end
}


