return {
  {
    "coder/claudecode.nvim",
    opts = {
      split_width_percentage = 0.25, -- 1/4 of screen width
      split_side = "right", -- or "left"
    },
    keys = {
      { "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
      { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
      { "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
      { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
      { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
      { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
      {
        "<leader>as",
        "<cmd>ClaudeCodeTreeAdd<cr>",
        desc = "Add file",
        ft = { "NvimTree", "neo-tree", "oil" },
      },
      -- Diff management
      { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
      { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
    },
  },
  {
    "pittcat/claude-fzf.nvim",
    dependencies = {
      "ibhagwan/fzf-lua",
      "coder/claudecode.nvim",
    },
    build = "rm -f doc/claude-fzf-zh.txt",
    opts = {
      auto_context = true,
      batch_size = 10,
      show_progress = true,
    },
    keys = {
      { "<leader>aF", "", desc = "+fzf" },
      { "<leader>aFf", "<cmd>ClaudeFzfFiles<cr>", desc = "Add files" },
      { "<leader>aFg", "<cmd>ClaudeFzfGrep<cr>", desc = "Add via grep" },
      { "<leader>aFb", "<cmd>ClaudeFzfBuffers<cr>", desc = "Add buffers" },
      { "<leader>aFG", "<cmd>ClaudeFzfGitFiles<cr>", desc = "Add git files" },
    },
  },
}
