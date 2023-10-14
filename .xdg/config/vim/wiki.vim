let g:wikidir = $XDG_DATA_HOME."/vimwiki"
let g:diarydir = g:wikidir."/diary"

let g:vimwiki_list = [{'path': g:wikidir, 'syntax': 'markdown', 'ext': '.md'}]

execute 'au BufNewFile ' . g:diarydir .'/*.md :silent 0r !<sfile>:h/bin/vimwiki-diary-template "%"'
