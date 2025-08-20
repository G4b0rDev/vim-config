-- Plugin: CopilotChat
-- See: https://github.com/CopilotC-Nvim/CopilotChat.nvim
return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    build = "make tiktoken",
    opts = {
      debug = false,
      mappings = {
        complete = {
          detail = "Use @<Tab> or /<Tab> for options.",
          insert = "<Tab>",
        },
      },
      window = {
        layout = "float",
        width = 80,
        height = 20,
        border = "rounded", -- 'single', 'double', 'rounded', 'solid'
        title = "🤖 AI Assistant",
        zindex = 100,
      },
      headers = {
        user = "👤 You: ",
        assistant = "🤖 Copilot: ",
        tool = "🔧 Tool: ",
      },
      separator = "━━",
    },
    config = function(_, opts)
      local chat = require("CopilotChat")

      chat.setup(opts)

      vim.keymap.set("n", "<leader>cc", function()
        chat.toggle()
      end, { noremap = true })

      vim.keymap.set("v", "<leader>cc", function()
        chat.toggle()
      end, { noremap = true })

      -- Apply AI changes directly to buffer
      vim.keymap.set("n", "<leader>ca", "<cmd>CopilotChatCommit<cr>", { noremap = true, desc = "Apply AI change" })

      vim.api.nvim_create_autocmd("BufEnter", {
        pattern = "copilot-*",
        callback = function()
          vim.opt_local.relativenumber = true
          vim.api.nvim_buf_set_keymap(0, "i", "<Tab>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
        end,
      })

      vim.api.nvim_set_hl(0, "CopilotChatHeader", { fg = "#7C3AED", bold = true })
      vim.api.nvim_set_hl(0, "CopilotChatSeparator", { fg = "#374151" })

      -- Automatically select the buffer when CopilotChat is opened
      vim.api.nvim_create_autocmd("User", {
        pattern = "CopilotChatOpened",
        callback = function()
          require("CopilotChat.select").buffer()
        end,
      })

      -- Automatically select the buffer when CopilotChat is opened
      vim.api.nvim_create_autocmd("User", {
        pattern = "CopilotChatOpened",
        callback = function()
          require("CopilotChat.select").buffer()
        end,
      })
    end,
  },
}
