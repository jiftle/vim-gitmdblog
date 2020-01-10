" ===========================================
" File: gitmdblog.vim
" Author: yourname
" Description: 
" Last Modified: 一月 11, 2020
" ===========================================
" 同步笔记到印象笔记，需要调用nodejs程序
function! GitMdBlogServ_Start()
    redraw
    " -------- 调用同步工具 -----------
    execute "! ". 'bash /root/.vim/plugged/vim-gitmdblog/gitmdblog-serv.sh'

    " 清空控制台
    echo "GitMdBlogServer is started, URL: http://0.0.0.0:8001 .  ^_^" 
endfunction   

" --------- 绑定命令
command! -nargs=0 GMBServStart call GitMdBlogServ_Start()
