export EDITOR=vim

alias gc.="git checkout ."
alias gcm="git checkout master"
alias gcb="git checkout -b"
alias gpo="git push origin -f"
alias gaa="git add -A"
alias grm="git rebase master"
alias rs="rails s"
alias rc="rails c"
alias rcs="rails c -s"
alias migrate="bundle exec rake db:migrate"
alias vimplugin="vim +PluginInstall +qall"
alias v="vim"
alias gcane="git commit --amend --no-edit"
alias gpfm="git pull framgia master"
alias gc="git commit"
alias gco="git checkout"
alias gd="git diff"
alias gst="git status"
if [[ $TERM == xterm ]]; then
  export TERM=xterm-256color
fi
