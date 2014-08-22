# husk.vim

Mappings that boost vim command line mode.

The goal is to have mappings similar to `bash` emacs mode.
You can read more about this idea in vim's docs
[:h tcsh-style](http://vimdoc.sourceforge.net/htmldoc/cmdline.html#tcsh-style).

Plugin killer feature are `M-f` and `M-b` CLI mappings that move one "word"
right or left (notice the lowercase "word").

This is an enhancement from vanilla vim that enables only "WORD" (uppercase)
left or right with<br/>
`<S-Left>` and `<S-Right>`.

### Mappings

All mappings work **only** in vim command line mode.

- `C-a` go to the beginning of the line
- `C-f` go one character right
- `C-b` go one character left
- `M-f` (Alt-f) go one "word" right
- `M-b` (Alt-b) go one "word" left

### Installation

* Vundle<br/>
`Plugin 'bruno-/vim-husk'`

* Pathogen<br/>
`git clone git://github.com/bruno-/vim-husk.git ~/.vim/bundle/vim-husk`

### About

This plugin grew out from Tim Pope's [vim-rsi](https://github.com/tpope/vim-rsi).
`vim-rsi` has a bit broader focus and does not provide proper `M-f` and `M-b`
mappings.

### Licence

[MIT](LICENSE.md)
