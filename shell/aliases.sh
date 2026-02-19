# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -l"
alias la="ls -la"
alias ~="cd ~"
alias dotfiles='cd $DOTFILES_PATH'

# Git
alias gaa="git add -A"
alias gc='$DOTLY_PATH/bin/dot git commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gd='$DOTLY_PATH/bin/dot git pretty-diff'
alias gs="git status -sb"
alias gps="git push"
alias gpsf="git push --force"
alias gl='$DOTLY_PATH/bin/dot git pretty-log'
alias glg='git log --all --graph --pretty="%C(green) %d %C(bold white) %s %C(blue) %an" --date=human'
alias gpl="git pull --rebase --autostash"
alias grm='git rebase origin/main'
alias gf="git fetch --all -p"
alias gb='git checkout -b'
alias gp='git push --set-upstream origin'
alias gr='git restore .'
alias gchr='git checkout release'
alias gchb='git checkout -b'
alias gch='git checkout'
alias gchm='git checkout main'
alias gst='git stash'
alias gstp='git stash pop'
alias cat='bat'

# Utils
alias k='kill -9'
alias i.='(idea $PWD &>/dev/null &)'
alias ws.='(webstorm $PWD &>/dev/null &)'
alias pc.='(pycharm $PWD &>/dev/null &)'
alias c.='(cursor $PWD &>/dev/null &)'
alias cu.='(cursor $PWD &>/dev/null &)'
alias o.='open .'
alias asd='cd ~/Code'
alias asdf='cd ~/Code/syft'
alias cdc='cd ~/Code/personal'
alias clera='clear'
alias up='dot package update_all'
alias ls='ls -l'
