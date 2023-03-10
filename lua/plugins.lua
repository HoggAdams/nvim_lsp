-- This file can be loaded by calling `lua require('plugins')` from your init.vim Only required if you have packer configured as `opt` vim.cmd [[packadd packer.nvim]]
return require("packer").startup(
  function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Color Theme
    use "folke/tokyonight.nvim"
    --[[ use "olimorris/onedarkpro.nvim"
		use "sainnhe/gruvbox-material" ]]
    -- Label & Status Bar
    use {
      "nvim-lualine/lualine.nvim",
      requires = {"kyazdani42/nvim-web-devicons", opt = true}
    }
    use {"akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons"}

    -- Files Tree
    use "kevinhwang91/rnvimr"

    use {
      "Shougo/defx.nvim",
      requires = {
        "kristijanhusak/defx-icons", -- dexf文件管理图标支持
        "t9md/vim-choosewin" -- 窗口选择器,可以让defx使用i打开文件
      }
    }
    use "simrat39/symbols-outline.nvim"
    use(
      {
        "kyazdani42/nvim-web-devicons",
        module = "nvim-web-devicons",
        opt = true
      }
    )
    use {
      "kyazdani42/nvim-tree.lua",
      requires = "kyazdani42/nvim-web-devicons"
    }

    -- Ui
    use "Yggdroot/indentLine"
    use "mhinz/vim-startify"
    use {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate"
    }
    use "tmhedberg/simpylfold"
    use "luochen1990/rainbow"
    use(
      {
        "gelguy/wilder.nvim",
        opt = true,
        setup = function()
          require("kide.core.layz_load").async_load("wilder.nvim")
        end,
        config = function()
          require("kide.plugins.config.wilder")
        end
      }
    )

    -- lsp
    use "neovim/nvim-lspconfig"
    use {
      "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/cmp-nvim-lsp", --neovim 内置 LSP 客户端的 nvim-cmp 源
        --以下插件可选，可以根据个人喜好删减
        "onsails/lspkind-nvim", --美化自动完成提示信息
        "hrsh7th/cmp-buffer", --从buffer中智能提示
        "hrsh7th/cmp-nvim-lua", --nvim-cmp source for neovim Lua API.
        "octaltree/cmp-look", --用于完成英语单词
        "hrsh7th/cmp-path", --自动提示硬盘上的文件
        "hrsh7th/cmp-calc", --输入数学算式（如1+1=）自动计算
        "f3fora/cmp-spell", --nvim-cmp 的拼写源基于 vim 的拼写建议
        "hrsh7th/cmp-emoji" --输入: 可以显示表情
      }
    }
    -- 代码段提示
    use {
      "L3MON4D3/LuaSnip",
      requires = {
        "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
        "rafamadriz/friendly-snippets" --代码段合集
      }
    }
    use "rafamadriz/friendly-snippets"

    -- 自动为尚不支持 Neovim 0.5 内置 lsp 客户端的配色方案创建缺少的 LSP 诊断突出显示组。
    use "folke/lsp-colors.nvim"
    -- 基于neovim 内置lsp 的轻量级lsp 插件，具有高性能UI。非常酷
    use "rinx/lspsaga.nvim"

    use "williamboman/nvim-lsp-installer"

    -- 显示css的颜色代码的颜色
    use "ap/vim-css-color"
    -- 符号自动匹配，比如：输入(自动闭合）
    use "windwp/nvim-autopairs"

    -- Editor
    --注释插件
    use "b3nj5m1n/kommentary"
    --jsx注释
    use "JoosepAlviste/nvim-ts-context-commentstring"
    -- 翻译插件
    use "voldikss/vim-translator"
    use "mhartington/formatter.nvim"

    use "liuchengxu/vista.vim"
    use {
      "ggandor/leap.nvim",
      requires = {"tpope/vim-repeat", opt = true}
    }
    use "mg979/vim-visual-multi"

    use {
      "nvim-telescope/telescope.nvim",
      requires = {
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons"
        -- "ryanoasis/vim-devicons",
      }
    }
    use "MattesGroeger/vim-bookmarks"
    use "tom-anders/telescope-vim-bookmarks.nvim"
    -- 加速文件搜索速度,如果安装失败需要到插件目录执行make命令手动编译
    -- 用了这个插件以后，貌似更快了(感觉输入更跟手了，可能是心理作用)。但是对于我的小项目感受不是很明显
    use {
      "nvim-telescope/telescope-fzf-native.nvim",
      run = "make",
      requires = {
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons"
      }
    }

    -- Markdown
    use(
      {
        "iamcco/markdown-preview.nvim",
        run = function()
          vim.fn["mkdp#util#install"]()
        end
      }
    )
    use "ferrine/md-img-paste.vim"
  end
)
