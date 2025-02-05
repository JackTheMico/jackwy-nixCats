return {
  "snacks.nvim",
  event = "DeferredUIEnter",
  after = function ()
    require("snacks").setup({})
  end
}
