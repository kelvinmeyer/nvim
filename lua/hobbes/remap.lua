-- run and debug
-- git branch view?
-- nuget support
-- vsplit

-- open the file explorer
vim.keymap.set("n", "<Leader>e", vim.cmd.Ex)

-- Move the highlighted region around
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- keep cursor when using J
vim.keymap.set("n", "J", "mzJ`z")
-- hold page when half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- keep search terms in the middle of the page
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever <Leader>p pastes and retains
vim.keymap.set("x", "<Leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- Leader y should work with the system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<Leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<Leader>=", vim.lsp.buf.format)

vim.keymap.set("n", "<Leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- my remaps
vim.keymap.set("n", "<Leader>v", vim.cmd.vsplit)
vim.keymap.set("n", "<Leader>h", vim.cmd.split)
vim.keymap.set("n", "<Leader>q", ":q<Cr>")

-- fix esc in terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- move between windows with Alt
-- for mac reasons we get "strange" chars when we press alt but vim is smart
vim.keymap.set({"t","i"}, "<A-h>", "<C-\\><C-N><C-w>h")
vim.keymap.set({"t","i"}, "<A-Left>", "<C-\\><C-N><C-w>h")
vim.keymap.set({"t","i"}, "˙", "<C-\\><C-N><C-w>h")
vim.keymap.set({"t","i"}, "<A-j>", "<C-\\><C-N><C-w>j")
vim.keymap.set({"t","i"}, "<A-Down>", "<C-\\><C-N><C-w>j")
vim.keymap.set({"t","i"}, "∆", "<C-\\><C-N><C-w>j")
vim.keymap.set({"t","i"}, "<A-k>", "<C-\\><C-N><C-w>k")
vim.keymap.set({"t","i"}, "<A-Up>", "<C-\\><C-N><C-w>k")
vim.keymap.set({"t","i"}, "˚", "<C-\\><C-N><C-w>k")
vim.keymap.set({"t","i"}, "<A-l>", "<C-\\><C-N><C-w>l")
vim.keymap.set({"t","i"}, "<A-Right>", "<C-\\><C-N><C-w>l")
vim.keymap.set({"t","i"}, "¬", "<C-\\><C-N><C-w>l")

vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-Left>", "<C-w>h")
vim.keymap.set("n", "˙", "<C-w>h")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-Down>", "<C-w>j")
vim.keymap.set("n", "∆", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-Up>", "<C-w>k")
vim.keymap.set("n", "˚", "<C-w>k")
vim.keymap.set("n", "<A-l>", "<C-w>l")
vim.keymap.set("n", "<A-Right>", "<C-w>l")
vim.keymap.set("n", "¬", "<C-w>l")

