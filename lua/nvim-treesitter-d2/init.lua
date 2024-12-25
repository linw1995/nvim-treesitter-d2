local M = {}

M.did_setup = false

function M.setup(opts)
	opts = opts or {}

	if M.did_setup then
		return
	end

	local parsers = require("nvim-treesitter.parsers")
	local installer = require("nvim-treesitter.install")

	parsers.get_parser_configs().d2 = {
		install_info = {
			url = "https://git.pleshevski.ru/pleshevskiy/tree-sitter-d2",
			revision = "main",
			files = { "src/parser.c", "src/scanner.c" },
		},
		filetype = "d2",
	}
	if not parsers.has_parser("d2") then
		installer.update("d2")
	end

	M.did_setup = true
end

return M
