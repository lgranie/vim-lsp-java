# vim-lsp-javascript

Sets up [vim-lsp](https://github.com/prabirshrestha/vim-lsp) for JavaScript.

## Installing

### Dependencies

This vim plugin depends on the TypeScript Language Server and TypeScript. As TypeScript is a super-set of JavaScript, the TypeScript Language Server has the ability to give intelligent editor capabilities while developing JavaScript.

Install typescript language server using [npm](https://www.npmjs.com) or [yarn](https://yarnpkg.com/):

**NPM**
```
npm install -g typescript typescript-language-server
```

**Yarn**
```
yarn global add typescript typescript-language-server
```

Install the vim plugins:

```viml
" Dependencies
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

Plug 'ryanolsonx/vim-lsp-javascript'
```

## Usage

1. Open file in project that has package.json at root: you must have a package.json file at the root of your project. All JavaScript projects should have one anyway. If you have a use case where your project doesn't have a package.json at the root, please create an issue and I'll add a configuration option.

2. Enjoy!


## Have an Issue?

Try to reproduce with a minimal vimrc configuration. You can use the one included in this project to create a temp vim setup.

```
curl https://raw.githubusercontent.com/ryanolsonx/vim-lsp-javascript/master/minimal.vimrc -o /tmp/minimal.vimrc
vim -u /tmp/minimal.vimrc +PlugInstall
```

## License

MIT
