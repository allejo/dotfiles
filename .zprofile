# Certain tools use this file for determining the PATH for the user, so
# store PATH modifications here instead of .zshrc.

export PATH="/usr/local/sbin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="$HOME/.symfony5/bin:$PATH"
export PATH="$HOME/.mampenv/bin:$PATH"
export PATH="$HOME/.utilities:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

eval "$(anyenv init -)"
