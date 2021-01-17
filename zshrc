if [ "$(uname -m)" != "arm64" ]; then
  export PATH="/usr/local/bin:$PATH"
else
  export PATH="/opt/homebrew/bin:$PATH"
fi

alias ctags="`brew --prefix`/bin/ctags"

