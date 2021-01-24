" common setting
set nocompatible
" �����ļ�������ʽ
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936
" vim �˵�������
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" vim ��ʾ��Ϣ����
language messages zh_CH.utf-8
" ������ʱ����ʾ�Ǹ�Ԯ���������ͯ����ʾ
set shortmess=atI
" ������ɫ����
colorscheme desert
" �ڵ�����ʾcmd��Ϣ
set showcmd
" �﷨����
set syntax=on
syn match cMathOperator display "[-+\*/%=]"
syn match cPointerOperator display "->\|\."
syn match cLogicalOperator display "[!<>]=\="
syn match cLogicalOperator display "=="
syn match cBinaryOperator display "\(&\||\|\^\|<<\|>>\)=\="
syn match cBinaryOperator display "\~"
syn match cBinaryOperatorError display "\~="
syn match cLogicalOperator  display "&&\|||"
syn match cLogicalOperatorError display "\(&&\|||\)="
syn match cInterpunction display "[,;]"
hi cMathOperator ctermfg=cyan
hi cPointerOperator ctermfg=cyan
hi cLogicalOperator ctermfg=cyan
hi cBinaryOperator ctermfg=cyan
hi cBinaryOperatorError ctermfg=cyan
hi cLogicalOperator ctermfg=cyan
hi cLogicalOperatorError ctermfg=cyan
hi cInterpunction ctermfg=cyan
" ȥ������������ʾ����
set noeb
" �ڴ���δ�����ֻ���ļ���ʱ�򣬵���ȷ��
set confirm
" ����tab
set tabstop=4
set expandtab
" �����к�
set number
" ���Զ�����
"set nowrap
" �Զ����õ�ǰĿ¼Ϊ���ڱ༭Ŀ¼
set autochdir
" no backup file
set nobackup
" �������ҽ������������
set nohlsearch
set incsearch
" ���۵�
set fdm=syntax
" �ÿո���������۵�
set foldenable
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" ��ʾ��ǩ��
set showtabline=2
" �﷨����
syntax enable
syntax on
" ����ƥ��ģʽ������ƥ��
set showmatch
" ���ܶ���
set smartindent
set shiftwidth=4
" �ļ��ⲿ���޸ģ��Զ����¸��ļ�
set  autoread

"[] �������
" ��������
" :PluginList       - �鿴�Ѿ���װ�Ĳ��
" :PluginInstall    - ��װ���
" :PluginUpdate     - ���²��
" :PluginSearch     - ������������� :PluginSearch xml�����ѵ�xml��صĲ��
" :PluginClean      - ɾ��������Ѱ�װ�����Ӧ��ɾ����Ȼ��ִ����������
set rtp+=D:\Tool\Vim\Vundle.vim\
call vundle#begin()
"let vundle manage Vundle, required my plugin
"named by github patch, !!!notice the .vim same with github name
Plugin 'Vundlevim/Vundle.vim' 
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'itchyny/lightline.vim'
call vundle#end()
filetype on
filetype plugin indent on

"[] nerdtree
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=25
let g:NERDTreeShowLineNumbers=1
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif
map <F2> :NERDTreeToggle<CR>

"[] nerdcommenter ע�͹��� \ca�л�ע�͸�ʽ \cc \cmע�� \cuȡ��ע��
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

"[] supertab
let g:SuperTabRetainCompletionType=2

"[] lightline
set laststatus=2
"set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'charvaluehex' ] ]
      \ },
      \ 'component': {
      \   'charvaluehex': 'Hex: 0x%B'
      \ },
      \ }

"[] Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

