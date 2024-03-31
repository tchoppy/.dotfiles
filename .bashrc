export GREP_OPTIONS=' — color=auto'

alias ssh="assh wrapper ssh --"
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias ls="eza"
alias ll="eza -alh"
alias tree="eza --tree"
alias cat="bat"
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

# PROMPT
eval "$(starship init bash)"

if [[ "$OSTYPE" == "darwin"* ]]; then
	source ~/.fzf.bash

	[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
else
	[ -f ~/.fzf.bash ] && source ~/.fzf.bash
fi
