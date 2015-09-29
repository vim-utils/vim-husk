# husk.vim

Mappings that boost vim command line mode.

The goal is to have mappings similar to `bash` emacs mode.
You can read more about this idea in vim's docs
[:h tcsh-style](http://vimdoc.sourceforge.net/htmldoc/cmdline.html#tcsh-style).

Plugin killer feature are convenient `M-f` and `M-b` CLI mappings that move one
"word" right or left (notice the lowercase "word").

This is an enhancement from vanilla vim that enables only "WORD" (uppercase)
left or right with<br/>
`<S-Left>` and `<S-Right>`.

Works in NeoVim too.

### Mappings

All mappings work **only** in vim command line mode.

- `C-a` go to the beginning of the line
- `C-f` go one character right or fall back to
  [c_CTRL-F](http://vimdoc.sourceforge.net/htmldoc/cmdline.html#c_CTRL-F)
  at the end of the line
- `C-b` go one character left
- `C-d` delete character or fall back to
  [c_CTRL-D](http://vimdoc.sourceforge.net/htmldoc/cmdline.html#c_CTRL-D)
  at the end of the line
- `C-k` clear line after the cursor, overrides
  [c_CTRL-K](http://vimdoc.sourceforge.net/htmldoc/cmdline.html#c_CTRL-K)
  (if you're using `C-k` for digraphs check the docs how to disable)
- `C-x C-e` open the command-line window, same as
  [c_CTRL-f](http://vimdoc.sourceforge.net/htmldoc/cmdline.html#c_CTRL-F)
- `M-f` (Alt-f) go one "word" right
- `M-b` (Alt-b) go one "word" left
- `M-d` (Alt-d) delete "word" after the cursor
- `M-BS` (Alt-Backspace) delete "word" before the cursor, same as
  [c_CTRL-W](http://vimdoc.sourceforge.net/htmldoc/cmdline.html#c_CTRL-W)
- `M-#` (Alt-shift-3) insert comment at the beginning of the line and execute
  it. Useful for discarding the line, but still keeping it in the command-line
  history for later retrieval.

### Installation

* Vundle<br/>
`Plugin 'vim-utils/vim-husk'`

* vim-plug<br/>
`Plug 'vim-utils/vim-husk'`

* Pathogen<br/>
`git clone git://github.com/vim-utils/vim-husk.git ~/.vim/bundle/vim-husk`

*Note*: In order to enable alt mappings (`M-f`, `M-b` etc) Mac OS users using
Terminal.app may need to go to Preferences > Profiles > Keyboard and tick
"Use Option as Meta key".

### About

`vim-husk` grew out from Tim Pope's [vim-rsi](https://github.com/tpope/vim-rsi)
plugin. `C-f`, `C-d` and `M-BS` mappings are directly copied.

Differences:

- `vim-husk` has proper `M-f`, `M-b` and `M-d`  mapping implementation
- with `vim-husk` there's no risk of breaking vim's macros. Link to related
  [vim-rsi issue](https://github.com/tpope/vim-rsi/issues/13).
- `vim-rsi` has a broader scope and provides `insert` and `normal` mode
  mappings while `vim-husk` focuses only on vim's CLI.

### Licence

[MIT](LICENSE.md)
