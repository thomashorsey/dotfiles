[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

set -o vi

alias vi='nvim'
alias vim='nvim'

alias zshrc='vim ~/.zshrc && source ~/.zshrc'
alias initlua='vim ~/.config/nvim/init.lua'
alias tmuxconf='vim ~/.tmux.conf && tmux source-file ~/.tmux.conf'
alias gitconf='vim ~/.gitconfig'
alias gitmess='vim ~/.gitmessage'
alias crpref='vim ~/.config/cr/preferences'
alias ndsconf='vim ~/.config/ninja-dev-sync.json'

alias dd="ssh [REDACTED_HOST]"
alias reversessh='ssh -N -R 4444:localhost:4444 [REDACTED_USER]@[REDACTED_HOST]'
alias sshtunnel='ssh -fN -L 2009:localhost:2009 [REDACTED_USER]@[REDACTED_HOST]'
alias pyserver='python3 -m http.server 8000'
alias mw='mwinit -o'
alias kmw='kinit -f && mw'
alias aaa='/apollo/env/AAAWorkspaceSupport/bin/register_with_aaa.py'
alias nds='ninja-dev-sync'
alias ndss='printf "\n\n\n\ny\n" | nds -setup'

alias cdw='cd ~/workplace'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias bws='brazil ws'
alias bwsc='bws create -n'
alias bwsu='bws use -p'
alias bwscu='f() { cdw && bwsc $1 -vs $2 && cd $1 && bwsu $1 }; f'
alias bwscl='bws clean'
alias bwss='bws sync'
alias bwsml='bws merge --local'

alias bsps='brazil setup platform-support'
alias bpcc='brazil-package-cache clean'
alias bbb='brazil-recursive-cmd --allPackages brazil-build'
alias bb='brazil-build'
alias bbc='bb clean'
alias bbr='bb release'
alias bbs='bb server'
alias bbaaa='bb register-with-aaa'

alias utr='node /Users/[REDACTED_USER]/.nvm/versions/node/v20.18.1/lib/node_modules/@amzn/utr-scripts/dist/index.js'

alias register_with_aaa='/apollo/env/AAAWorkspaceSupport/bin/register_with_aaa.py'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:$HOME/.toolbox/bin

export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"

export PATH="/Applications/Firefox.app/Contents/MacOS:$PATH"export PATH=$HOME/.toolbox/bin:$PATH

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"
