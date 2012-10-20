"Bim filez fer me own customsations

"====For Compatibility========================================================
set nocompatible          "Fixes bug where arrow keys do not function properly on some systems

"====General==================================================================
syntax on                 "Enable syntax highlighting
set mouse=a               "Enable mouse to manipulate cursor
set mousemodel=popup      "Enable Mouse button functionality similar to Windows
set showmatch             "Enable matching bracket highlighting
set number      		  "Enable Line numbering
set backspace=2 	      "Enable typical backspace key functionality
set autochdir   		  "Enable automatic changing of directory to that of current open file.

"====Spacing, Tabbing, Indenting, and Wrapping================================
set tabstop=4   		  "Set tab length to 4 characters
set sw=4        		  "Set the shift width (>> or <<) to 4 characters (Tab)
set autoindent            "Enable indentation of new lines if already indented
set smartindent           "Enable automatic indent of lines after opening a bracket
set copyindent            "Enable copying of indent style of current line to new line
set smarttab    		  "Improves tab handing (deletion of tabs)
set nowrap                "Disable line from wrapping if longer than window width
set sidescroll=5          "Make horizontal scrolling easier for nonwrapped lines
set listchars+=precedes:<,extends:> "Make horizontal scrolling easier for nonwrapped lines



"====Dialoges, Prompts, Folding, and Menus====================================
set confirm                      "Prompts save dialogue if :q is used on an unsaved file.
set hidden                       "Hides current file when a new file is open instead of closing it.
set foldmethod=manual            "Enable collapsing of code blocks
set completeopt=longest,menuone  "Enable autocomplete menu. Menu shows the 
                                 "longest match of a list of matches.
set complete=.,w,b,u,t,i         "Enable scanning current or included files for autocomplete
                                 "Remove the 'i' option if complete is too slow


"====COLOR SCHEMING===========================================================
colorscheme darkblue  "Change color scheme to darkblue.

"====MAPPINGS=================================================================
"----MAPPING TO MAKE NAV KEYS FUNCTION NORMALLY--------------
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

"-----MAPPING TO ENHANCE AUTO-COMPLETE MENU------------------
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"====A MENU [PRESS F4 TO OPEN]================================================  
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
map <F4> :emenu <C-Z>  