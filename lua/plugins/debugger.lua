-- See: https://github.com/mfussenegger/nvim-dap
return {
  "mfussenegger/nvim-dap",
  dependencies = {
    { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
    { "theHamsta/nvim-dap-virtual-text" },
    { "jay-babu/mason-nvim-dap.nvim" },
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    require("nvim-dap-virtual-text").setup()

    dapui.setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    dap.adapters.php = {
      type = "executable",
      command = "node",
      args = {
        vim.fn.stdpath("data") .. "/mason/packages/php-debug-adapter/extension/out/phpDebug.js",
      },
    }

    dap.configurations.php = {
      {
        type = "php",
        request = "launch",
        name = "Listen for Xdebug",
        port = 9003,
        pathMappings = {
          [vim.fn.getcwd()] = vim.fn.getcwd(),
        },
      },
    }

    -- Keybindings
    vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Debug: Toggle Breakpoint" })
    vim.keymap.set("n", "<leader>duc", dapui.close, { desc = "Debug: Close ui" })
    vim.keymap.set("n", "<F1>", dap.continue, { desc = "Debug: Continue" })
    vim.keymap.set("n", "<F2>", dap.step_into, { desc = "Debug: Step Into" })
    vim.keymap.set("n", "<F3>", dap.step_over, { desc = "Debug: Step Over" })
    vim.keymap.set("n", "<F4>", dap.step_out, { desc = "Debug: Step Out" })
    vim.keymap.set("n", "<F5>", dap.step_back, { desc = "Debug: Step Back" })
    vim.keymap.set("n", "<F6>", dap.restart, { desc = "Debug: Restart" })
  end,
}
