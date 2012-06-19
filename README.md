# My personal dotfile collection

Central collection of my dotfiles.

## Screenshot
![Result](http://i.imgur.com/cyqvg.png)

## Installation
### Requirements
* git
* tmux
* vim
* zsh
* exuberant ctags (not the ctags that ships with OSX)
* The terminal emulator has to use a patched font. Otherwise the vim-powerline and the tmux status line will not work properly. Get one from [here](https://github.com/Lokaltog/vim-powerline/wiki/Patched-fonts).
* [Solarized color scheme](http://ethanschoonover.com/solarized) for the terminal emulator.
* For Python syntax checking: flake8 (`pip install flake8`)

### Actual installation

Should be a simple case of cloning the repo and

    sh symlink_dotfiles.sh
    chsh -s `which zsh`

which will symlink everything in the home directory so it should be ready to use. It __WILL__ currently overwrite the following files, so please back them up!

    ~/.zshenv, ~/.zshrc, ~/.zlogout, ~/.vimrc, ~/.vim, ~/.tmux, ~/.pylintrc, ~/.gitignore_global

## Vim configuration

### General shortcuts

    ,vs       | (Vim Source) source (aka reload) the vimrc
    vap       | (Visual Around Paragraph) visually select this paragraph.
    ci"       | (Change Inside ") change inside the double quotes
    ci'       | (Change Inside ') change inside the single quotes
    cib       | (Change Inside Bracket) change inside brackets
    diw       | (Delete Inside Word) delete the current word

### EasyMotion plugin
Incredibly useful! Hard to describe how it works. Just try it and you will see.

    ;;w       | Beginning of word forward
    ;;W       | Beginning of WORD forward
    ;;f{char} | Find {char} to the right
    ;;F{char} | Find {char} to the left
    ;;t{char} | Till before the {char} to the right
    ;;T{char} | Till after the {char} to the left
    ;;w       | Beginning of word forward
    ;;W       | Beginning of WORD forward
    ;;b       | Beginning of word backward
    ;;B       | Beginning of WORD backward
    ;;e       | End of word forward
    ;;E       | End of WORD forward
    ;;ge      | End of word backward
    ;;gE      | End of WORD backward
    ;;j       | Line downward
    ;;k       | Line upward
    ;;n       | Jump to latest "/" or "?" forward
    ;;N       | Jump to latest "/" or "?" backward

### vim-surround
Selecting something in visual mode and then pressing __S__ and a char wraps the selection with the char.

    cs"'      | (Changes Surrounding " to ')
    ds'       | (Delete Surrounding ')
    ysiwb     | (Yank Surround Inside Word Bracket) Surround the current word with brackets.
    ysiw[     | (Yank Surround Inside Word [) Wrap word with square brackets and one space.
    ysiw]     | (Yank Surround Inside Word [) Wrap word with square brackets without spaces.
    ysiw<em>  | Surround word with <em>word</em>. Correctly closes the ending tag.

Special __ss__ always wraps the whole line ignoring leading whitespaces.

    yssb      | (Yank Surround Brackets) Surround the current line with brackets.

### NERDCommenter

    ,c<space> | Toggle commenting of line/visual selection
    ,cA       | Add comment at the end of the current line

### Syntastic

    ,er       | Toggle the Syntax error window. Off by default.

### vim-indent-guides

    ,ig       | Toggle indent guides. Off by default.


### Profiling vim's startup process

    vim --startuptime vim.log
