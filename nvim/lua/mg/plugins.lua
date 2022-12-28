local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
    augroup packer_user_config
      autocmd!
     autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]])

packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Dashboard is a nice start screen for nvim
	use("glepnir/dashboard-nvim")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-telescope/telescope-file-browser.nvim")

	use("nvim-treesitter/nvim-treesitter") -- Treesitter Syntax Highlighting

	-- Productivity
	--use("vimwiki/vimwiki")
	use("jreybert/vimagit")
--use("nvim-orgmode/orgmode")

	use("folke/which-key.nvim") -- Which Key
	--use("nvim-lualine/lualine.nvim") -- A better statusline

    -- Auto-pairs for ",( 
    use("jiangmiao/auto-pairs")

    --Easy complete
   --
   --use { 'jayli/vim-easycomplete' }
   -- gccuse { 'SirVer/ultisnips' }
    use("Shougo/deoplete.nvim")
    use("zchee/deoplete-jedi")

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
	-- File management --
	--use("vifm/vifm.vim")
	use("scrooloose/nerdtree")
	use("tiagofumo/vim-nerdtree-syntax-highlight")
	use("ryanoasis/vim-devicons")

    -- System clipboard
   -- use("christoomey/vim-system-copy")
	-- Tim Pope Plugins --
	use("tpope/vim-surround")

	-- Syntax Highlighting and Colors --
	use("PotatoesMaster/i3-vim-syntax")
	use("kovetskiy/sxhkd-vim")
	use("vim-python/python-syntax")
	use("ap/vim-css-color")


	-- Junegunn Choi Plugins --
	use("junegunn/goyo.vim")
	use("junegunn/limelight.vim")
	use("junegunn/vim-emoji")

	-- Colorschemes --
	use("RRethy/nvim-base16")
	use("kyazdani42/nvim-palenight.lua")

	-- Other stuff --
	--use("frazrepo/vim-rainbow")
	--Lightspeed
	use("ggandor/lightspeed.nvim")

	--Easy comment
	use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

	if packer_bootstrap then
		packer.sync()
	end
end)


