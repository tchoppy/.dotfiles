# ls
alias ls="eza"
alias ll="eza -alh"
alias tree="eza --tree"

alias ssh="assh wrapper ssh --"
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias cat="bat"

# git
alias gp='git pull'
alias gs='git status'
alias lg='lazygit'

# starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml

eval "$(starship init bash)"

# fzf
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--walker-skip .git,node_modules,target --preview 'tree -C {}'"

if [[ "$OSTYPE" == "darwin"* ]]; then
	source ~/.fzf.bash

	[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
else
	[ -f ~/.fzf.bash ] && source ~/.fzf.bash
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
