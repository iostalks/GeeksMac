" 主要按键重定义

" quit
nmap q :q<cr>
" nmap <silent><leader>q :q!<CR>

" save
nmap <leader>w :w!<CR>

" 关闭方向键, 强迫自己用 hjkl
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"Treat long lines as break lines (useful when moving around in them)
"se swap之后，同物理行上线直接跳
" nnoremap k gk
" nnoremap gk k
" nnoremap j gj
" nnoremap gj j

noremap H ^
noremap L $

nnoremap <silent> <Leader><CR> :nohl<CR>
" nnoremap <Leader><Space> /

" 联通 vim 寄存器和计算机剪切板
" copy line to pasteboard
vnoremap <Leader>y "*y
nnoremap <Leader>y V"*y
" paste from pasteboard
nnoremap <Leader>p "*p

" 多次 p 粘贴
xnoremap p pgvy

" 缩进 vnoremap < <gv
vnoremap > >gv

" 选中最近插入的内容
nnoremap gv `[v`]

" toggle line number
function! HideNumber()
  if(&relativenumber == &number)
    set relativenumber! number!
  elseif(&number)
    set number!
  else
    set relativenumber!
  endif
  set number?
endfunc
nnoremap <Leader>l :call HideNumber()<CR>

noremap <Leader>fm :PrettierAsync<CR>
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" =============================
" Insert model mappings
" =============================

" imap ( ()<esc>i
" inoremap [ []<Esc>i
" inoremap { {}<Esc>i
" inoremap {<CR> {<CR>}<Esc>ko

inoremap ` ``<Esc>i

inoremap <C-f> <Esc>la
inoremap <C-a> <Esc>^i
inoremap <C-e> <Esc>$a

nnoremap <Leader>. A;<ESC>

" redo
nnoremap U <C-r>
