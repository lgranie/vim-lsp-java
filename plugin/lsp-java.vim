if isdirectory(g:vim_lsp_java.eclipse_jdtls.repository)
  au User lsp_setup call lsp#register_server({
    \ 'name': 'vim-lsp-java.eclipse-jdtls',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, expand('~/.vim/bundle/vim-lsp-java/jdtls').' '.g:vim_lsp_java.eclipse_jdtls.repository.' '.g:vim_lsp_java.eclipse_jdtls.config.' '.g:vim_lsp_java.eclipse_jdtls.workspace]},
    \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'pom.xml'))},
    \ 'whitelist': ['java'],
    \ })
else
  echohl ErrorMsg
  echom 'Sorry, `java-language-server` is not installed. See `:help vim-lsp-java` for more details on setup.'
  echohl NONE
endif
