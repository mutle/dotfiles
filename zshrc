if [ "$(uname -s)" = "Darwin" ]; then
  if [ "$(uname -m)" != "arm64" ]; then
    export PATH="/usr/local/bin:$PATH"
  else
    export PATH="/opt/homebrew/bin:$PATH"
  fi
  alias ctags="`brew --prefix`/bin/ctags"
fi

export EDITOR="vim"

if [ -n "${TERM_PROGRAM}" -a "${TERM_PROGRAM}" = 'tmux' ]; then
  bindkey -e
  bindkey -v
  bindkey '^R' history-incremental-search-backward
fi
