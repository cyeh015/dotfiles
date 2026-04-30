# Homebrew, this will set PATH, HOMEBREW_PREFIX, MANPATH, etc.
#   /opt/homebrew for macOS on Apple Silicon
#   /usr/local for macOS on Intel
#   /home/linuxbrew/.linuxbrew for Linux
eval "$(/opt/homebrew/bin/brew shellenv)"

# bin
PATH="$HOME/bin:$HOME/work/software/bin:${PATH}"
export PATH

