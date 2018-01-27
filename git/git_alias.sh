# git command
alias gst='git status'
alias gls='git branch'
alias gco='function _gco(){ git checkout $1;};_gco'
alias gcodev="git checkout development"

alias gnew='function _gnew(){ git checkout -b $1;};_gnew'

alias gpush='function _gpush(){ git push origin $1;};_gpush'
alias fpush='function _fpush(){ git push -f origin $1;};_fpush'

#git rebase -i HEAD~5

alias glog="git log --abbrev-commit --decorate --date=relative --format=format:'\''%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'\'''"

