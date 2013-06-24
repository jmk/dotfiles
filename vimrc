" Configuration file for vim

" Load pathogen
call pathogen#infect()

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start	" more powerful backspacing


" Now we set some defaults for the editor 
set autoindent		" always set autoindenting on
set textwidth=78	" wrap words at 80 chars
set nobackup		" Don't keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more than
			" 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" We know xterm-debian is a color terminal
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" Debian uses compressed helpfiles. We must inform vim that the main
" helpfiles is compressed. Other helpfiles are stated in the tags-file.
"set helpfile=$VIMRUNTIME/doc/help.txt.gz

if has("autocmd")
 " Enabled file type detection
 " Use the default filetype settings. If you also want to load indent files
 " to automatically do language-dependent indenting add 'indent' as well.
filetype plugin on
filetype indent on

endif " has ("autocmd")

" The following are commented out as they cause vim to behave a lot
" different from regular vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set noignorecase	" Do case sensitive matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim customizations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hidden
set nowrap
set ruler
set backspace=2
set nocp
set wildmode=longest,list
set nosi
set ai
set wrap
set nu
set nohlsearch
set lbr
set shiftwidth=4
set incsearch

" Show fancy status bar, including buffer number
set laststatus=2
set statusline=%<[%n]\ %f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Nice folding settings
"set foldmethod=syntax
"highlight Folded term=none cterm=none ctermfg=4 ctermbg=0
"highlight FoldColumn term=none cterm=none ctermfg=4 ctermbg=0
"nnoremap <silent> <space> :exe 'silent! normal! za'.(foldlevel('.')?'':'l')<cr>

map <up> gk
map <down> gj

au BufEnter   *.c,*.h,*.m,*.cpp :set cindent shiftwidth=4
au BufEnter   *.m,*.mm :set ft=objc
au BufEnter   *.menva*  :set ft=menva
au BufEnter   *.ypp  :set ft=lex
au BufEnter   *.as :set ft=javascript
au BufEnter   *.fs :set ft=glsl
au BufEnter   *.sl :set ft=sl
au BufEnter   *.pde :set ft=c   " for arduino
au BufEnter   *.markdown,*.md :set ft=markdown tw=0
au BufReadPre *.m,*.mm :set ft=objc

if (has("mac"))
    au BufEnter   *.h,*.m,*.mm,*.pch :set ft=objcpp
endif

" For some reason, we use this extension for python modules?
au BufEnter   *.pym :set ft=python

" Certain files want tabs
au BufEnter   tmp.* :set noexpandtab sts=8    " perforce change spec
au BufEnter   *.pbxproj :set noexpandtab sts=8
au BufEnter   Makefile :set noexpandtab sts=8

" Super hack for some files
au BufEnter   *Proto_h,*Proto_cpp :set ft=cpp    " Gf proto files
au BufEnter   *.sip :set ft=cpp                  " sip

" Set some format options
"   c: auto-wrap commens
"   r: auto-insert comment leader
"   o: auto-insert comment leader (when hitting 'o')
"   q: allow formatting of comments with "gq"
"   l: don't break pre-existing long lines
"   t: auto-wrap text with tw
" XXX: do this on BufEnter *after* setting filetype, because something keeps
" resetting?
au BufEnter   * :set fo=crqlt

syntax on

" Make tab characters visible
set list
set lcs=tab:,.,trail:.

" Use spaces instead of tab characters
set expandtab
set tabstop=8
set softtabstop=4

" XXX: move to colorscheme?
" Make comments really easy to read
hi Comment ctermfg=Cyan ctermbg=Blue cterm=NONE

hi Directory ctermfg=Cyan cterm=none

" Make line numbers a little more sutble
hi LineNr cterm=NONE

" Make matching parens stick out
hi MatchParen ctermfg=Magenta ctermbg=Blue

" Other colors to match style
hi PreProc ctermfg=Magenta cterm=NONE
hi Constant ctermfg=Red cterm=NONE
hi Todo ctermfg=red ctermbg=yellow cterm=bold

" Make visible whitespace bold
hi SpecialKey ctermfg=blue cterm=bold

" Shortcuts for tabs
map <C-N> :tabn <CR>
map <C-P> :tabp <CR>

" Nice tab titles (gtl is only for GUIs)
set tabline=%n\ %t\ %m

" File browser dialogs default to the buffer location
set bsdir=buffer

" Cdpaths because I'm lazy
let &cdpath = ". " . $cdpath

" Automatically switch cwd to follow buffers
if exists('+autochdir')
    set autochdir
else
    autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif

" ctrl-H switches between *.cpp and *.h (in the same dir)
if has("python")
    " a fancier version implemented in python
    source ~/.vimpython
    map <C-H> :python switchHeader() <CR>
else
    map <C-H> :e %:p:s/.h$/.__EXTN__/:s/.cpp$/.h/:s/.__EXTN__$/.cpp/<CR>
endif

" Support doxygen three-slash comments
au FileType c,cpp set comments^=:///

" Quick comment/uncomment (shift-c and shift-u)
au FileType vim let b:comment_leader = '"'
au FileType c,cpp,java,objc,javascript,sl let b:comment_leader = '//'
au FileType sh,make,python,rib let b:comment_leader = '#'
au FileType tex let b:comment_leader = '%'
au FileType lua let b:comment_leader = '--'
au BufEnter SConscript let b:comment_leader = '#'
noremap <silent> <S-C> :<C-B>sil <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:noh<CR> 
noremap <silent> <S-U> :<C-B>sil <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:noh<CR> 

" Quick toggle hlsearch on tab key
map <C-I> :set hlsearch! hlsearch? <CR>

" Quick fix mode
" XXX: how to change this dynamically?
set makeprg=nice\ scons\ -u\ install
map <C-B> :make <CR>

" Setup C indentation optionss (cinoptions) as follows:
"     - Wrap arguments to match location of opening parens: (0
"     - Indent argument lists that start on a separate line: Ws (shiftwidth)
"     - Don't indent C++ class scope declarations: g0
set cino=(0,Ws,g0

" Automatically insert closing parens/brackets
"inoremap { {<CR>}<ESC>O
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
"autocmd Syntax html,vim inoremap < <lt>><ESC>i| inoremap > <c-r>=ClosePair('>')<CR>
"inoremap ) <c-r>=ClosePair(')')<CR>
"inoremap ] <c-r>=ClosePair(']')<CR>

"function ClosePair(char) 
"  if getline('.')[col('.') - 1] == a:char 
"    return "\<Right>" 
"  else 
"    return a:char 
"endf 
