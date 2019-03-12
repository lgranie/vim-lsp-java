let g:vim_lsp_java = get(g:, 'vim_lsp_java', [])

if isdirectory(vim_lsp_java.eclipse_jdt_ls.repository)
  au User lsp_setup call lsp#register_server({
    \ 'name': 'java support using eclipse.jdt.ls',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, expand('~/.vim/bundle/vim-lsp-java/jdtls'), g:vim_lsp_java.eclipse_jdt_ls.repository, g:vim_lsp_java.eclipse_jdt_ls.version, g:vim_lsp_java.eclipse_jdt_ls.config, g:vim_lsp_java.eclipse_jdt_ls.workspace]},
    \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'pom.xml'))},
    \ 'whitelist': ['java'],
    \ })
else
  echohl ErrorMsg
  echom 'Sorry, `java-language-server` is not installed. See `:help vim-lsp-java` for more details on setup.'
  echohl NONE
endif
