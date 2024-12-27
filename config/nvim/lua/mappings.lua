require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- code action fix with tiny preview
map("n", "<leader>u", function()
  require("tiny-code-action").code_action()
end, { noremap = true, silent = true })
