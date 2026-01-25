return {
  "uhs-robert/oasis.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("oasis").setup()
    vim.cmd.colorscheme("oasis-lagoon")  -- After setup, apply theme (or any style like "oasis-night")
  end
}
