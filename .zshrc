# Load environment variables
if [ -f ~/.zshrc.d/env_vars.zsh ]; then
  source ~/.zshrc.d/env_vars.zsh
fi

# Load paths
if [ -f ~/.zshrc.d/paths.zsh ]; then
  source ~/.zshrc.d/paths.zsh
fi

# Load aliases
if [ -f ~/.zshrc.d/aliases.zsh ]; then
  source ~/.zshrc.d/aliases.zsh
fi

# Load prompts
# if [ -f ~/.zshrc.d/prompts.zsh ]; then
#   source ~/.zshrc.d/prompts.zsh
# fi

# starship config
eval "$(starship init zsh)"
