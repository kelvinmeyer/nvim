local popup = require("plenary.popup")

local Win_id

-- TODO need to be able to dectect when we open as a folder and as a file

local file = io.open("~/projects", "w") -- TODO need a better file location
local projects = {}

if file then
    for line in file:lines() do
        table.insert(projects, line)
    end
end

function AddProject(path)
    table.remove(projects, path)
    table.insert(projects, 1, path)
    -- write table
    -- possibly truncate table
end

function ShowMenu(opts, cb)
    local height = 20
    local width = 30
    local borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }

    Win_id = popup.create(opts, {
        title = "MyProjects",
        highlight = "MyProjectWindow",
        line = math.floor(((vim.o.lines - height) / 2) - 1),
        col = math.floor((vim.o.columns - width) / 2),
        minwidth = width,
        minheight = height,
        borderchars = borderchars,
        callback = cb,
    })
    local bufnr = vim.api.nvim_win_get_buf(Win_id)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "q", "<cmd>lua CloseMenu()<CR>", { silent = false })
end

function CloseMenu()
    vim.api.nvim_win_close(Win_id, true)
end

function MyMenu()
    local cb = function(_, sel)
        vim.cmd("cd " .. sel)
        -- push new file to the top of the priority queue
    end
    ShowMenu(projects, cb)
end
