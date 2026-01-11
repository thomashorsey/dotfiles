if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"

export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
export EDITOR="nvim"
export VISUAL="nvim"
set -o vi

export PATH="/Applications/Firefox.app/Contents/MacOS:$PATH"
export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"

plugins=(git)
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias gitconf='nvim ~/.gitconfig'
alias gitmess='nvim ~/.gitmessage'
alias initlua='nvim ~/.config/nvim/init.lua'
alias pyserver='python3 -m http.server 8000'
alias tmuxconf='nvim ~/.tmux.conf && tmux source-file ~/.tmux.conf'
alias zshrc='nvim ~/.zshrc && source ~/.zshrc'
alias zshrcl='nvim ~/.zshrc.local && source ~/.zshrc.local'

if [ -f ~/.zshrc.local ]; then
    source ~/.zshrc.local
fi

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"
