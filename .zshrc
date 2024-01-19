#pass for perlbrew
source ~/perl5/perlbrew/etc/bashrc

# pass for java version
# export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# hyper config
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
alias ls='ls -G -F -l'
alias rl='exec $SHELL -l'
alias cl='clear'
alias rm='rm -r'
alias md='mkdir'
alias ai='askai'
alias tedvit='cd ~/study/tedvit'
alias h='history -30'
alias hg='history -1000 | grep'

# expand history
HISTSIZE=1000

# starship config
eval "$(starship init zsh)"
