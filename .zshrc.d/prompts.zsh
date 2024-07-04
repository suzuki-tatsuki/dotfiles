
# Functions
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


# Prompt configuration
PROMPT=`left-prompt`
RPROMPT=`right-prompt`
unset -f left-prompt
unset -f right-prompt
