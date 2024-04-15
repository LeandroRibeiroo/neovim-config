require("giga.core")
require("giga.lazy")

if vim.g.neovide then
	vim.g.neovide_window_blurred = true
	vim.g.neovide_cursor_animation_length = 0
	vim.g.neovide_cursor_animate_in_insert_mode = true
	vim.g.neovide_cursor_animate_command_line = true
	vim.g.neovide_cursor_smooth_blink = true
	vim.g.neovide_transparency = 0.7
	vim.g.neovide_remember_window_size = true
	vim.g.neovide_padding_top = 0
	vim.g.neovide_padding_bottom = 0
	vim.g.neovide_padding_right = 0
	vim.g.neovide_padding_left = 0
	if vim.g.neovide then
		vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
		vim.keymap.set("v", "<D-c>", '"+y') -- Copy
		vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
		vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
		vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
		vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
	end

	-- Allow clipboard copy paste in neovim
	vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
	vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
	vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
	vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
end
