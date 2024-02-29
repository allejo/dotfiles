# Custom PATH locations that are device specific
[[ -s "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"

# Custom Aliases
[[ -s "$HOME/.zsh_aliases.local" ]] && source "$HOME/.zsh_aliases.local"
[[ -s "$HOME/.zsh_aliases" ]] && source "$HOME/.zsh_aliases"

# Custom environment variables that should be available
export ZSH="$HOME/.oh-my-zsh"

# Setup terminal tools
source ~/.zsh-autopair/autopair.zsh
autopair-init

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="allejo"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source "$ZSH/oh-my-zsh.sh"
