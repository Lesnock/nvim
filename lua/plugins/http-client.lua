return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
    opts = {
      rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" },
    },
  },
  -- I was just able to make this plugin work building the luarocks manually and installing the dependencies manually:
  -- cd $HOME
  -- luarocks --local --lua-version=5.1 install xml2lua
  -- luarocks --local --lua-version=5.1 install lua-curl
  -- luarocks --local --lua-version=5.1 install mimetypes
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("rest-nvim").setup {
        keybinds = {
          {
            "<leader>R",
            "<cmd>Rest run<cr>",
            "Run request under the cursor",
          },
        },
      }
    end,
  },
}
