# perlbrew
source ~/perl5/perlbrew/etc/bashrc

# openjdk
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# nvm (node version manager)
source /opt/homebrew/opt/nvm/nvm.sh

# cargo
source "$HOME/.cargo/env"

# latexmk
export PATH=$PATH:/usr/local/texlive/2024/bin/universal-darwin

# path aliases
alias ss='cd ~/Pictures/ss'
alias tedvit='cd ~/study/merged_tedvit/'
alias assets='cd ~/study/merged_tedvit/dist/assets'
alias submit='cd ~/study/seminar/submit'
alias jsise='cd ~/study/seminar/jsise'
