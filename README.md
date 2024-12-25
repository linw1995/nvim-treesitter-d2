# nvim-treesitter-d2

A nvim-treesitter plugin for [d2](https://github.com/terrastruct/d2) lang.

```lua
LazyVim.on_very_lazy(function()
	vim.filetype.add({
		extension = { d2 = "d2" },
	})
end)

return {
	{
		"linw1995/nvim-treesitter-d2",
		ft = "d2",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {},
	},
}
```
