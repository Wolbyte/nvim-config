return {
  {
    "saghen/blink.cmp",

    opts = {
      cmdline = {
        keymap = { preset = "inherit" },
      },
      keymap = {
        preset = "enter",

        ["<C-y>"] = { "select_and_accept" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
      },
    },
  },
}
