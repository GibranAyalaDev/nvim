local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- keymap('n', '', '', opts)

-- Normal mode
-- Telescope
keymap("n", "<space>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<space>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<space>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<space>fh", ":Telescope help_tags<CR>", opts)

-- Nvim Tree
keymap("n", "<space>to", ":NvimTreeOpen<CR>", opts)
keymap("n", "<space>tf", ":NvimTreeFocus<CR>", opts)
keymap("n", "<space>tc", ":NvimTreeClose<CR>", opts)

-- hlsearch
keymap("n", "<space>h", ":set hlsearch!<CR>", opts)

-- Treesitter
keymap("n", "<space>ptu", ":TSUpdate<CR>", opts)
keymap("n", "<space>ptt", ":TSToggleAll<CR>", opts)
keymap("n", "<space>pte", ":TSEnableAll<CR>", opts)

-- Format
keymap("n", "<space>pf", ":lua vim.lsp.buf.formatting()<CR>", opts)

-- Quick save and quit
keymap("n", "<space>w", ":w<CR>", opts)
keymap("n", "<space>q", ":q<CR>", opts)
keymap("n", "<space>a", ":wq<CR>", opts)

-- Cycle through buffers
keymap("n", "<space>sh", ":split<CR>", opts)
keymap("n", "<space>sv", ":vsplit<CR>", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<space>rh", "<C-w><", opts)
keymap("n", "<space>rj", "<C-w>-", opts)
keymap("n", "<space>rk", "<C-w>+", opts)
keymap("n", "<space>rl", "<C-w>>", opts)
