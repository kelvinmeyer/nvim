
vim.keymap.set("n", "<Leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<Leader>gp", function () vim.cmd.Git("pull") end)
vim.keymap.set("n", "<Leader>gf", function () vim.cmd.Git("fetch") end)
