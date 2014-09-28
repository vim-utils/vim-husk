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

### Mappings

All mappings work **only** in vim command line mode.

- `C-a` go to the beginning of the line
- `C-f` go one character right
- `C-b` go one character left
- `C-d` delete character or fall back to
  [c_CTRL-D](http://vimdoc.sourceforge.net/htmldoc/cmdline.html#c_CTRL-D)
  at the end of the line
- `M-f` (Alt-f) go one "word" right
- `M-b` (Alt-b) go one "word" left
- `M-d` (Alt-d) delete "word" after the cursor

### Installation

* Vundle<br/>
`Plugin 'bruno-/vim-husk'`

* Pathogen<br/>
`git clone git://github.com/bruno-/vim-husk.git ~/.vim/bundle/vim-husk`

### About

`vim-husk` grew out from Tim Pope's [vim-rsi](https://github.com/tpope/vim-rsi)
plugin. `C-d` mapping is directly copied.

Differences:

- `vim-husk` has proper `M-f`, `M-b` and `M-d`  mapping implementation
- with `vim-husk` there's no risk of breaking vim's macros. Link to related
  [vim-rsi issue](https://github.com/tpope/vim-rsi/issues/13).
- `vim-rsi` has a broader scope and provides `insert` and `normal` mode
  mappings while `vim-husk` focuses only on vim's CLI.

### Licence

[MIT](LICENSE.md)
