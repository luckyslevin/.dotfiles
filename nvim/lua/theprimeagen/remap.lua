local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

vim.g.mapleader = " "
keymap("n", "<leader>pv", vim.cmd.Ex)


-- create and edit new buffer
keymap("n", "<leader>n", ":enew<CR>", opts)

-- quicklists
keymap("n", "<leader>co", ":copen<CR>", opts)
keymap("n", "<leader>cc", ":cclose<CR>", opts)
keymap("n", "[q", ":cprevious<CR>", opts)
keymap("n", "]q", ":cnext<CR>", opts)
keymap("n", "´", "<M-e>", opts)

-- Better window navigation
keymap("n", "<down>", "<C-w>j", opts)
keymap("n", "<left>", "<C-w>h", opts)
keymap("n", "<up>", "<C-w>k", opts)
keymap("n", "<right>", "<C-w>l", opts)

-- Insert empty blank line above/bellow
keymap("n", "]<Space>", "m`o<Esc>``", opts)
keymap("n", "[<Space>", "m`O<Esc>``", opts)

-- Resize with arrows
-- keymap("n", "<C-Up>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize -2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

keymap("n", "<leader>th", "<C-w>H", opts)
keymap("n", "<leader>tk", "<C-w>K", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv")
keymap("x", "K", ":move '<-2<CR>gv-gv")
keymap("v", "p", '"_dP', opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")


-- delete to blackhole
keymap("v", "<leader>d", '"_d', opts)
keymap("v", "<leader>D", '"_D', opts)

keymap("n", "J", "mzJ`z")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- buffer nav
keymap("n", "<S-l>", ":bnext<CR>")
keymap("n", "<S-h>", ":bprevious<CR>")

-- save and quit
keymap("n", "<leader>w", ":write<CR>")

-- keymap("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)
-- keymap("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)

-- greatest remap ever
keymap("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
keymap({ "n", "v" }, "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+Y]])

keymap({ "n", "v" }, "<leader>d", [["_d]])

-- Insert --
-- Press jk fast to exit insert mode

keymap("i", "jk", "<Esc>")
keymap("v", "ii", "<Esc>")
keymap("i", "kj", "<ESC>", opts)


-- Insert empty blank line above/bellow
keymap("n", "]<Space>", "m`o<Esc>``", opts)
keymap("n", "[<Space>", "m`O<Esc>``", opts)

-- This is going to get me cancelled
-- keymap("n", "Q", "<nop>")
keymap("n", "Q", ":q!<CR>")
keymap("n", "q", ":q<CR>", opts)
keymap("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- keymap("n", "<leader>f", vim.lsp.buf.format)

keymap("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

keymap("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
keymap("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

if vim.g.vscode then

    -- Folding
    keymap("n", "za", function() vim.fn.VSCodeNotify("editor.toggleFold") end)
    keymap("n", "zc", function() vim.fn.VSCodeNotify("editor.foldRecursively") end)
    keymap("n", "zC", function() vim.fn.VSCodeNotify("editor.foldAll") end)
    keymap("n", "zO", function() vim.fn.VSCodeNotify("editor.unfoldAll") end)
    keymap("n", "zo", function() vim.fn.VSCodeNotify("editor.unfoldRecursively") end)
    keymap("n", "zp", function() vim.fn.VSCodeNotify("editor.gotoParentFold") end)

    -- All remaps
    keymap("", "zy", function() vim.fn.VSCodeNotify("toggleTypewriter") end)

    -- Normal remaps
    keymap("n", "zh", function() vim.fn.VSCodeNotify("yo1dog.cursor-trim.lTrimCursor") end)
    keymap("n", "zl", function() vim.fn.VSCodeNotify("yo1dog.cursor-trim.rTrimCursor") end)
    keymap("n", "zi", function() vim.fn.VSCodeNotify("yo1dog.cursor-trim.trimCursor") end)
    keymap("n", "[f", function() vim.fn.VSCodeNotify("workbench.view.search.focus") end)
    keymap("n", "]f", function() vim.fn.VSCodeNotify("workbench.action.replaceInFiles") end)
    keymap("n", "gD", function() vim.fn.VSCodeNotify("editor.action.revealDefinitionAside") end)
    keymap("n", "<leader>s", function() vim.fn.VSCodeNotify("editor.action.toggleStickyScroll") end)
    keymap("n", "=<", function() vim.fn.VSCodeNotify("editor.action.trimTrailingWhitespace") end)
    keymap("n", "gl", function() vim.fn.VSCodeNotify("editor.action.openLink") end)
    keymap("n", "<C-k>", function()
        vim.fn.VSCodeCall("editor.action.insertLineBefore")
        vim.cmd("norm k")
    end)
    keymap("n", "<<", function() vim.fn.VSCodeNotify("editor.action.outdentLines") end)
    keymap("n", ">>", function() vim.fn.VSCodeNotify("editor.action.indentLines") end)
    keymap("n", "gcc", function() vim.fn.VSCodeNotify("editor.action.commentLine") end)

    -- Visual remaps
    keymap("v", "gs", function() vim.fn.VSCodeNotifyVisual("codesnap.start", true) end)
    keymap("v", "<", function() vim.fn.VSCodeNotifyVisual("editor.action.outdentLines", false) end)
    keymap("v", ">", function() vim.fn.VSCodeNotifyVisual("editor.action.indentLines", false) end)
    keymap("v", "gc", function() vim.fn.VSCodeNotifyVisual("editor.action.commentLine") end)

    -- Insert remaps
    keymap("i", "<C-k>", function() vim.fn.VSCodeNotify("editor.action.insertLineBefore") end)
else
    -- Not vscode
    keymap("n", "zp", "vaBo^<Esc>")
end
