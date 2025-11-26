return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "nix" } },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        nil_ls = false,

        nixd = {
          cmd = { "nixd", "--semantic-tokens=true" },

          settings = {
            nixd = {
              nixpkgs = { expr = "import <nixpkgs> {}" },

              formatting = { command = { "nixfmt" } },

              options = {
                nixos = {
                  expr = '(builtins.getFlake ("/home/wolbyte/dev/wix")).nixosConfigurations.raven.options',
                },

                home_manager = {
                  expr = '(builtins.getFlake ("/home/wolbyte/dev/wix")).nixosConfigurations.raven.options.home-manager.users.type.getSubOptions []',
                },
              },
            },
          },
        },
      },
    },
  },

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        nix = { "nixfmt" },
      },
    },
  },

  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        nix = { "statix" },
      },
    },
  },
}
