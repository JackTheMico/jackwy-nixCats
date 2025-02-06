require("nixCatsUtils").setup {
  non_nix_value = true;
}

local lze = require("lze")

lze.load("plugins")
lze.load("keymaps")
