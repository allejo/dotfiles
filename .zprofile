# Certain tools use this file for determining the PATH for the user, so
# store PATH modifications here instead of .zshrc.

export PATH="/usr/local/sbin:/opt/homebrew/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="$HOME/.mampenv/bin:$PATH"
export PATH="$HOME/.utilities:$PATH"

eval "$(anyenv init -)"
