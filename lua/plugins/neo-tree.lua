return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},
	lazy = false, -- neo-tree will lazily load itself
	opts = {
		filesystem = {
			filtered_items = {
				hide_dotfiles = false;
				hide_gitignored = false;
			}
		},
		window = {
			width = 27
		}
	},
	config = function (_, opts)
		require("neo-tree").setup(opts);

		local map_opts = {noremap = true, silent = true}
		-- space nt => open Neo-tree
		vim.keymap.set('n', '<leader>nt', ':Neotree<CR>', map_opts)
	end
}
