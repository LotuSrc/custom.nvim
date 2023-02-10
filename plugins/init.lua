local overrides = require "custom.plugins.overrides"

return {

  ----------------------------------------- default plugins ------------------------------------------
  
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- override default configs
  ["williamboman/mason.nvim"] = { override_options = overrides.mason },

  --------------------------------------------- custom plugins ----------------------------------------------

  -- format & linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  
  -- coding time record
  ["wakatime/vim-wakatime"] = {},
}
