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

### Configure vim-lsp-java

Edit your .vimrc file and configure like :

```" vim-lsp-java
let g:vim_lsp_java = {
  \ 'eclipse_jdtls' : {
    \ 'repository': expand('~/opt/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository'),
    \ 'version': '1.5.300.v20190213-1655',
    \ 'config': 'config_linux',
    \ 'workspace': '/mnt/c/workspace',
  \ },
\ }
```

## Usage

1. Open a java source file in a Maven project (vim-lsp-java needs a pom.xml file).

2. Enjoy!

## License

MIT
