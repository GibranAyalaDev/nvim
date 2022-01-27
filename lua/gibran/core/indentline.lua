vim.opt.list = true
vim.g.indent_blankline_filetype_exclude = {"lspinfo", "packer", "checkhealth", "alpha", "telescope", "help", ""}

require("indent_blankline").setup({
	show_end_of_line = false,
	space_char_blankline = " ",
})
