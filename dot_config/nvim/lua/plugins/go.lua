return {
  {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup({
            goimports = 'gopls', -- if set to 'gopls' will use golsp format
            gofmt = 'gopls', -- if set to gopls will use golsp format
            lsp_cfg = true, -- false: use your own lspconfig
            lsp_gofumpt = true, -- true: set default gofmt in gopls format to gofumpt
            lsp_on_attach = true, -- use on_attach from go.nvim
            lsp_keymaps = false,
      })
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
    init = function ()
      local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
        vim.api.nvim_create_autocmd("BufWritePre", {
          pattern = "*.go",
          callback = function()
          require('go.format').goimports()
          end,
          group = format_sync_grp,
        })
    end
  },
}
