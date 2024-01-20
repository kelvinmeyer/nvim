print("scheme file detected")

local chan
local enter

-- open a new term and load the current file
vim.keymap.set("n", "<Leader>rn", function()
    local name = vim.api.nvim_buf_get_name(0)
    vim.cmd("vsplit | term csi")
    vim.cmd("wincmd L")
    chan = vim.bo.channel
    enter = vim.api.nvim_replace_termcodes("<CR>", true, true, true)
    vim.api.nvim_chan_send(chan, ",l " .. name .. enter)
    vim.api.nvim_feedkeys("a", "t", false)
end)

-- reload the current file in the runnign term
vim.keymap.set("n", "<Leader>rr", function()
    local name = vim.api.nvim_buf_get_name(0)
    vim.cmd.write()
    vim.api.nvim_chan_send(chan, ",l " .. name .. enter)
    vim.api.nvim_feedkeys("a", "t", false)
    vim.cmd("wincmd l")
end)
