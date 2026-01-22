return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Put compiled parsers somewhere that reliably overrides the built-in ones
      local install_dir = vim.fn.stdpath("data") .. "/ts-parsers"
      vim.fn.mkdir(install_dir, "p")

      opts.parser_install_dir = install_dir
      vim.opt.runtimepath:prepend(install_dir)

      -- keep/merge ensure_installed
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "vim",
        "vimdoc",
        "verilog",
        "systemverilog",
      })

      return opts
    end,
  },
}
