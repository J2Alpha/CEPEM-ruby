let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
cnoremap <C-F4> c
inoremap <C-F4> c
cnoremap <C-Tab> w
inoremap <C-Tab> w
cmap <S-Insert> +
imap <S-Insert> 
xnoremap  ggVG
snoremap  gggHG
onoremap  gggHG
nnoremap  gggHG
vnoremap  "+y
noremap  
nnoremap  :update
vnoremap  :update
onoremap  :update
nmap  "+gP
omap  "+gP
vnoremap  "+x
noremap  
noremap  u
cnoremap   :simalt ~
inoremap   :simalt ~
map Q gq
nmap gx <Plug>NetrwBrowseX
nnoremap <C-F4> c
nnoremap <C-Tab> w
nmap <S-Insert> "+gP
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
onoremap <C-F4> c
vnoremap <C-F4> c
onoremap <C-Tab> w
vnoremap <C-Tab> w
vmap <S-Insert> 
vnoremap <BS> d
vmap <C-Del> "*d
vnoremap <S-Del> "+x
vnoremap <C-Insert> "+y
omap <S-Insert> "+gP
cnoremap  gggHG
inoremap  gggHG
inoremap  :update
inoremap  u
cmap  +
inoremap  
inoremap  u
noremap   :simalt ~
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set backup
set balloonexpr=SyntasticErrorBalloonExpr()
set cmdheight=4
set diffexpr=MyDiff()
set guifont=Consolas:h9:cANSI
set helplang=nl
set history=50
set hlsearch
set incsearch
set keymodel=startsel,stopsel
set ruler
set runtimepath=~/vimfiles,C:\\Program\ Files\\Vim/vimfiles,C:\\Program\ Files\\Vim\\vimfiles\\bundle\\syntastic,C:\\Program\ Files\\Vim\\vim73,C:\\Program\ Files\\Vim/vimfiles/after,~/vimfiles/after
set selection=exclusive
set selectmode=mouse,key
set softtabstop=4
set updatecount=10000
set whichwrap=b,s,<,>,[,]
set window=47
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd C:\Program\ Files\Vim\vim73
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +112 README.txt
badd +24 \Users\J2Alpha\code\ruby\HVUI\frontend.rb
badd +186 \Users\J2Alpha\code\ruby\HVUI\EMcore.rb
badd +33 \Users\J2Alpha\code\ruby\HVUI\plasmacore.rb
badd +26 \Users\J2Alpha\Documents\GitHub\CEPEM-ruby\Circuitcore.rb
badd +1 \Users\J2Alpha\Documents\GitHub\CEPEM-ruby\frontend.rb
badd +1 \Users\J2Alpha\Documents\GitHub\CEPEM-ruby\EMcore.rb
badd +1 \Users\J2Alpha\Documents\GitHub\CEPEM-ruby\plasmacore.rb
silent! argdel *
edit \Users\J2Alpha\Documents\GitHub\CEPEM-ruby\plasmacore.rb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 11 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 77 + 84) / 168)
exe '2resize ' . ((&lines * 31 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 77 + 84) / 168)
exe 'vert 3resize ' . ((&columns * 90 + 84) / 168)
argglobal
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,C:/RailsInstaller/Ruby1.9.3/lib/ruby/site_ruby/1.9.1,C:/RailsInstaller/Ruby1.9.3/lib/ruby/site_ruby/1.9.1/i386-msvcrt,C:/RailsInstaller/Ruby1.9.3/lib/ruby/site_ruby,C:/RailsInstaller/Ruby1.9.3/lib/ruby/vendor_ruby/1.9.1,C:/RailsInstaller/Ruby1.9.3/lib/ruby/vendor_ruby/1.9.1/i386-msvcrt,C:/RailsInstaller/Ruby1.9.3/lib/ruby/vendor_ruby,C:/RailsInstaller/Ruby1.9.3/lib/ruby/1.9.1,C:/RailsInstaller/Ruby1.9.3/lib/ruby/1.9.1/i386-mingw32,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/RSRuby-0.4.0/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/actionmailer-3.2.1/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/actionmailer-3.2.11/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/actionpack-3.2.1/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/actionpack-3.2.11/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/activemodel-3.2.1/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/activemodel-3.2.11/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/activereco
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 68 - ((5 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
68
normal! 02l
wincmd w
argglobal
edit \Users\J2Alpha\Documents\GitHub\CEPEM-ruby\frontend.rb
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=RubyBalloonexpr()
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,C:/RailsInstaller/Ruby1.9.3/lib/ruby/site_ruby/1.9.1,C:/RailsInstaller/Ruby1.9.3/lib/ruby/site_ruby/1.9.1/i386-msvcrt,C:/RailsInstaller/Ruby1.9.3/lib/ruby/site_ruby,C:/RailsInstaller/Ruby1.9.3/lib/ruby/vendor_ruby/1.9.1,C:/RailsInstaller/Ruby1.9.3/lib/ruby/vendor_ruby/1.9.1/i386-msvcrt,C:/RailsInstaller/Ruby1.9.3/lib/ruby/vendor_ruby,C:/RailsInstaller/Ruby1.9.3/lib/ruby/1.9.1,C:/RailsInstaller/Ruby1.9.3/lib/ruby/1.9.1/i386-mingw32,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/RSRuby-0.4.0/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/actionmailer-3.2.1/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/actionmailer-3.2.11/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/actionpack-3.2.1/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/actionpack-3.2.11/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/activemodel-3.2.1/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/activemodel-3.2.11/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/activereco
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 32 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 0
wincmd w
argglobal
edit \Users\J2Alpha\Documents\GitHub\CEPEM-ruby\EMcore.rb
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,C:/RailsInstaller/Ruby1.9.3/lib/ruby/site_ruby/1.9.1,C:/RailsInstaller/Ruby1.9.3/lib/ruby/site_ruby/1.9.1/i386-msvcrt,C:/RailsInstaller/Ruby1.9.3/lib/ruby/site_ruby,C:/RailsInstaller/Ruby1.9.3/lib/ruby/vendor_ruby/1.9.1,C:/RailsInstaller/Ruby1.9.3/lib/ruby/vendor_ruby/1.9.1/i386-msvcrt,C:/RailsInstaller/Ruby1.9.3/lib/ruby/vendor_ruby,C:/RailsInstaller/Ruby1.9.3/lib/ruby/1.9.1,C:/RailsInstaller/Ruby1.9.3/lib/ruby/1.9.1/i386-mingw32,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/RSRuby-0.4.0/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/actionmailer-3.2.1/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/actionmailer-3.2.11/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/actionpack-3.2.1/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/actionpack-3.2.11/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/activemodel-3.2.1/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/activemodel-3.2.11/lib,C:/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/activereco
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ON'
setlocal syntax=ON
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 185 - ((16 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
185
normal! 03l
wincmd w
exe '1resize ' . ((&lines * 11 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 77 + 84) / 168)
exe '2resize ' . ((&lines * 31 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 77 + 84) / 168)
exe 'vert 3resize ' . ((&columns * 90 + 84) / 168)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
