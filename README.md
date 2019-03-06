# vim-lsp-java

Sets up [vim-lsp](https://github.com/prabirshrestha/vim-lsp) for Java.

## Installing

### Dependencies

** Eclipse JDT Language Server **

This vim plugin depends on Eclipse JDT Language Server.

[Install Eclipse JDT Language Server](https://github.com/eclipse/eclipse.jdt.ls#building-from-the-command-line)

### Install the vim plugins

```viml
" Dependencies
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

Plug 'lgranie/vim-lsp-java'
```

### Edit jdtls file

To launch the server, this plugin use a script you need to edit to your personnal installation
~/.vim/bundle/vim-lsp-java/jdtls

## Usage

1. Open file in project that the eclipse.jdt.ls '-data' as root.

2. Enjoy!

## License

MIT
