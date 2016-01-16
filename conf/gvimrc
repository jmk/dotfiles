colorscheme jmk

" Hide the [gtk2] toolbar.
set guioptions-=T

if (has("gui_gtk"))
    " Don't use popup window prompts because they suck on X11 :(
    set guioptions+=c
endif

" Nice tab labels
set guitablabel=%n\ %t\ %m

" Italicize comments.
hi Comment gui=italic

if (has("mac"))
    set guifont=Consolas:h14
    set anti
else
    set guifont=Consolas\ 11
endif

" This seems buggy on gvim 7.2 (gtk).
set nomousehide
