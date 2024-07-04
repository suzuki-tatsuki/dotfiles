# Load environment variables
if [ -f ~/dotfiles/.zshrc.d/env_vars.zsh ]; then
  source ~/dotfiles/.zshrc.d/env_vars.zsh
fi

# Load paths
if [ -f ~/dotfiles/.zshrc.d/paths.zsh ]; then
  source ~/dotfiles/.zshrc.d/paths.zsh
fi

# Load aliases
if [ -f ~/dotfiles/.zshrc.d/aliases.zsh ]; then
  source ~/dotfiles/.zshrc.d/aliases.zsh
fi

# Load prompts
# if [ -f ~/dotfiles/.zshrc.d/prompts.zsh ]; then
#   source ~/dotfiles/.zshrc.d/prompts.zsh
# fi

# starship config
eval "$(starship init zsh)"
