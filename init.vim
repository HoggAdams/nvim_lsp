" 配置文件导入 "{{{
" ---------------------------------------------------------------------
" 基础使用习惯配置
runtime ./vimrc.vim
" 插件管理
"./lua/plugins.lua
lua require('plugins')
" 按键映射
runtime ./maps.vim
" runtime ./maps.lua

source ~/.config/nvim/after/plugin/defx-icons.rc.vim
" source ~/.config/nvim/colors/gruvbox_material.rc.vim
" source ~/.config/nvim/colors/tokyonight.rc.vim
source ~/.config/nvim/after/plugin/rainbow.rc.vim
source ~/.config/nvim/colors/tokyonight.rc.vim
source ~/.config/nvim/after/plugin/vim-startify.rc.vim
source ~/.config/nvim/after/plugin/vim-visual-multi.rc.vim
source ~/.config/nvim/after/plugin/MarkdownPreview.rc.vim
" ---------------------------------------------------------------------
"}}}
