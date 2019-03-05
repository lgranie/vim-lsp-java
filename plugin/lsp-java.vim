if isdirectory(vim_lsp_java.eclipsejdtls.repository)
  au User lsp_setup call lsp#register_server({
    \ 'name': 'java support using eclipse.jdt.ls',
    \ 'cmd': {server_info->['cd ' . vim_lsp_java.eclipsejdtls.repository . ' && 
                          \ java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1045 
                               \ -Declipse.application=org.eclipse.jdt.ls.core.id1 
                               \ -Dosgi.bundles.defaultStartLevel=4 
                               \ -Declipse.product=org.eclipse.jdt.ls.core.product 
                               \ -Dlog.level=ALL 
                               \ -noverify 
                               \ -Xmx1G 
                               \ -jar ./plugins/org.eclipse.equinox.launcher_' . vim_lsp_java.eclipsejdtls.version . '.jar 
                               \ -configuration ' . vim_lsp_java.eclipsejdtls.config . ' 
                               \ -data ' . vim_lsp_java.eclipsejdtls.workspace]},
    \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'pom.xml'))},
    \ 'whitelist': ['java'],
    \ })
else
  echohl ErrorMsg
  echom 'Sorry, `java-language-server` is not installed. See `:help vim-lsp-java` for more details on setup.'
  echohl NONE
endif
