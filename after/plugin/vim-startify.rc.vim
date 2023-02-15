"设置书签
let g:startify_bookmarks            = [
            \ '~/Code',
			\ '~/Documents',
			\ '~/.config/nvim',
            \]
"起始页显示的列表长度
let g:startify_files_number = 20
"自动加载session
let g:startify_session_autoload = 1
"过滤列表，支持正则表达式
let g:startify_skiplist = [
       \ '^/tmp',
       \ ]
"自定义Header和Footer
" let g:startify_custom_header = [
"             \ '+------------------------------+',
"             \ '|                              |',
"             \ '|    Still waters run deep!    |',
"             \ '|                              |',
"             \ '+----------------+-------------+',
"             \]
let g:startify_custom_footer = [
			\ 'You will succeed in learning.',
            \]
