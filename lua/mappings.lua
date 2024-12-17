require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "<C-l>", function()
    vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
end, { desc = "Copilot Accept", noremap = true, silent = true })

-- Copilot Chat mappings
map("n", "<leader>aa", "<cmd>CopilotChat<cr>", { desc = "Open Copilot Chat" })
map("n", "<leader>ae", "<cmd>CopilotChatExplain<cr>", { desc = "Explain code with Copilot" })
map("n", "<leader>ar", "<cmd>CopilotChatReview<cr>", { desc = "Review code with Copilot" })
map("n", "<leader>at", "<cmd>CopilotChatTests<cr>", { desc = "Generate tests with Copilot" })

-- Visual mode mappings for Copilot Chat
map("v", "<leader>ae", ":CopilotChatExplain<cr>", { desc = "Explain selected code" })
map("v", "<leader>ar", ":CopilotChatReview<cr>", { desc = "Review selected code" })
map("v", "<leader>at", ":CopilotChatTests<cr>", { desc = "Generate tests for selected code" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
