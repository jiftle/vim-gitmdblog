" ===========================================
" File: gitmdblog.vim
" Author: jiftle
" Description: 提供插件指令
" Last Modified: 2020-01-11
" ===========================================
" 同步笔记到印象笔记，需要调用nodejs程序
function! GitMdBlogServ_Start()
    redraw
    " -------- 调用同步工具 -----------
    execute "silent ! ". 'bash /root/.vim/plugged/vim-jiftle-gitmdblog/gitmdblog-serv.sh'

    " 清空控制台
    echo "GitMdBlogServer is started, URL: http://0.0.0.0:8001 .  ^_^" 
endfunction   

" --------- 绑定命令
command! -nargs=0 GMBServStart call GitMdBlogServ_Start()
