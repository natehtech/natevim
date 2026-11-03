return {
  {
    "mfussenegger/nvim-dap",
    opts = function()
      local dap = require("dap")

      dap.adapters.gdb = {
        type = "executable",
        command = "/usr/bin/gdb",
        args = { "-i", "dap" },
      }

      dap.configurations.c = {
        {
          name = "STM32L476 - OpenOCD",
          type = "gdb",
          request = "attach",
          program = function()
            return vim.fn.getcwd() .. "/build/cpe3160-a4.elf"
          end,
          cwd = "${workspaceFolder}",
          target = "localhost:3333",
          stopAtBeginningOfMainSubprogram = false,
        },
      }
    end,
  },
}
