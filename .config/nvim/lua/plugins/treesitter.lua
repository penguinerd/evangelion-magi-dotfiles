return {
	require("lazy").setup({
		{
			"nvim-treesitter/nvim-treesitter", 
			branch = 'master', 
			lazy = false, 
			build = ":TSUpdate",
			highlight = { enable = true },
			indent = { endable = true },
		}
	})
}
