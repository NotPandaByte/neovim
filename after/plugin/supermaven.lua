use {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
        accept_key = "<Tab>",
        disable_default_mappings = true,
    })
  end,
}
