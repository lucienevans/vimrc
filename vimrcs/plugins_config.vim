"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: 
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
call pathogen#infect('~/.vim_runtime/sources/{}')
call pathogen#helptags()

" Supertab
" let g:SuperTabDefaultCompletionType = "<c-x><c-u>"

" JSON Format
map <leader>js <Esc>:%!python -m json.tool<CR>

" NERDtree
nnoremap <F3> :NERDTree <CR>

" CTags
set tags=tags;/
nnoremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"taglist
let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
let Tlist_Use_Left_Window = 1         "在右侧窗口中显示taglist
let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'  "设置ctags命令的位置
nnoremap <F4> : Tlist<CR>        "设置关闭和打开taglist窗口的快捷键

" autoformat
noremap <leader>f :Autoformat<CR>
