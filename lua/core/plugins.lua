-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
-- Syntax highlighting
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
    },
-- NeoTree
    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    -- Optional image support for file preview: See `# Preview Mode` for more information.
    -- {"3rd/image.nvim", opts = {}},
    -- OR use snacks.nvim's image module:
    -- "folke/snacks.nvim",
                     },
    lazy = false, -- neo-tree will lazily load itself
    ---@module "neo-tree"
    ---@type neotree.Config?
    opts = {
      -- add options here
           }
    },
--LSP:
{'neovim/nvim-lspconfig'},
-- LSP: Snippets
{"L3MON4D3/LuaSnip","saadparwaiz1/cmp_luasnip",},
{ 
"hrsh7th/nvim-cmp",
"hrsh7th/vim-vsnip",
"hrsh7th/vim-vsnip-integ",
"hrsh7th/cmp-vsnip",
"hrsh7th/cmp-nvim-lsp",
"hrsh7th/cmp-buffer",
"hrsh7th/cmp-path",
"hrsh7th/cmp-cmdline",
},
--Theme
{'joshdick/onedark.vim'}, 
--Mason
-- LSP Package Manager
		{
			"williamboman/mason.nvim",
			Build = ":MasonUpdate",
		},
		{
			"jay-babu/mason-null-ls.nvim",
			event = { "BufReadPre", "BufNewFile" },
			dependencies = {
				"williamboman/mason.nvim",
				"nvimtools/none-ls.nvim",
			},
		},

		{
			"williamboman/mason-lspconfig.nvim",
		},  
--Telescope
    {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
    },
--Autopairs
 {'windwp/nvim-autopairs'},
--Autotag
 {'windwp/nvim-ts-autotag'},
--Buffline
{"akinsho/bufferline.nvim", dependencies = {'nvim-tree/nvim-web-devicons'}},
--Comments
{'terrortylor/nvim-comment'},
--LuaLine
{
'nvim-lualine/lualine.nvim',
dependencies = {
'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim'
}},
--Outline
{"hedyhli/outline.nvim"},
--Toggleterm
{'akinsho/toggleterm.nvim', version = "*", config = true},
--





},
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  -- install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

