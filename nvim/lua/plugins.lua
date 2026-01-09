-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = { theme = "auto" },
      })
    end,
  },


  -- Autopairs
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },


  -- Colorizer
  { 
    "NvChad/nvim-colorizer.lua" 
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({})
    end,
  },

  -- Formatting
{
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- Python
      python = { "ruff_format" },

      -- Nix
      nix = { "alejandra" },

      -- Shell
      sh = { "shfmt" },
      bash = { "shfmt" },

      -- Lua
      lua = { "stylua" },

      -- JSON / JSONC
      json = { "prettier" },
      jsonc = { "prettier" },

      -- YAML
      yaml = { "prettier" },

      -- TOML
      toml = { "taplo" },

      -- Markdown
      markdown = { "prettier" },

      -- HTML / XML
      html = { "prettier" },
      xml = { "tidy" },

      -- JavaScript / TypeScript
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },

      -- Rust
      rust = { "rustfmt" },

      -- Go
      go = { "gofmt" },

      -- C / C++ / Java / ObjC
      c = { "clang_format" },
      cpp = { "clang_format" },
      java = { "clang_format" },

      -- Docker
      dockerfile = { "dockfmt" },

      -- Terraform / HCL
      terraform = { "terraform_fmt" },
      hcl = { "terraform_fmt" },

      -- SQL
      sql = { "sqlfluff", },

      -- Protobuf
      proto = { "buf" },
    },

    format_on_save = {
      timeout_ms = 800,
      lsp_fallback = true,
    },
  },
}

},
{ 
  lockfile = vim.fn.stdpath("data") .. "/lazy-lock.json",
})

