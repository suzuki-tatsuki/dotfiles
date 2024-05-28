#pass for perlbrew
source ~/perl5/perlbrew/etc/bashrc

# pass for java version
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# pass for nvm
source /opt/homebrew/opt/nvm/nvm.sh

# env of python3
export PYTHON="/opt/homebrew/bin/python3"

# rust
source "$HOME/.cargo/env"

# prompt config (this may overwrap by starship)
export LANG=ja_JP.UTF-8
left-prompt() {
	local dir="%F{14}%C%f"
	local next="%F{11}$ %f"
	echo -e "${dir}\n${next}"
}
right-prompt() {
	local dir="%F{11}%~%f"
	local time="%F{255}%T%f"
	echo -e "${dir} ${time}"
}
PROMPT=`left-prompt`
RPROMPT=`right-prompt`
unset -f left-prompt
unset -f right-prompt

# alias
alias ls='ls -G'
alias ll='ls -n'
alias lsa='ls -A'
alias lla='ll -A'
alias rl='exec $SHELL -l'
alias cl='clear'
alias h='history -30'
alias hg='history -1000 | grep'
alias dsstore="find . -name '*.DS_Store' -type f -ls -delete"
alias rm='rm -r -i'
alias md='mkdir'
alias dot='cd ~/dotfiles'
alias ss='cd ~/Pictures/ss'
alias tedvit='cd ~/study/tedvit/'
alias assets='cd ~/study/tedvit/dist/assets'
alias submit='cd ~/study/seminar/submit'
alias jsise='cd ~/study/seminar/jsise'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ga='git add .'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias gst='git status'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit --allow-empty-message'
alias gcl='git clean -i'
alias python='python3'
alias code='nvim'
alias atom='nvim'
alias emacs='nvim'
alias edit='nvim'

# global alias
alias -g G='| grep --color=auto'
alias -g H='| head'
alias -g T='| tail'

# expand history
HISTSIZE=1000

# starship config
eval "$(starship init zsh)"
