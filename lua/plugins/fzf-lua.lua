
return {
  "fzf-lua",
  load = function (name)
      vim.cmd.packadd(name)
      vim.cmd.packadd("fzf-lua")
  end,

  after = function ()
    require("fzf-lua").setup({})
  end
}

