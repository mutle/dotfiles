let g:copilot_filetypes = {
  \ '*': v:false,
  \ 'html': v:true,
  \ 'ruby': v:true,
  \ 'swift': v:true,
  \ 'typescript': v:true,
  \ 'typescriptreact': v:true,
  \ 'python': v:true,
\}

autocmd BufReadPre *
  \ let f=getfsize(expand("<afile>"))
  \ | if f > 100000 || f == -2
  \ | let b:copilot_enabled = v:false
  \ | endif
