export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
shopt -s histappend     
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

#Open gem
alias open_gem='function _open_gem(){ open -a "Sublime Text" $(bundle show $1);};_open_gem'

alias pfile="view ~/.bash_profile"
alias reload=". ~/.bash_profile"
alias h="history"

alias es_list ='launchctl list | grep elastic'
alias es_stop ='launchctl stop homebrew.mxcl.elasticsearch'
alias es_start='launchctl start homebrew.mxcl.elasticsearch'
alias es_restart='launchctl restart homebrew.mxcl.elasticsearch'

#### sync locally
source=~/atry/base
dest=~/tools/creator
alias copy_me='cp -rp ${source}/* $dest;cp -rp ${source}_work/* $dest;sh $dest/redo.sh'
alias sync_me='rsync -vrazh ${source}/* $dest;rsync -vrazh ${source}_work/* $dest;sh $dest/redo.sh'

#### sync
remote=kwei@192.168.1.19
source=~/common/doit/base
alias sync_me='scp -rp $source   $remote:/www/tools;scp -rp ${source}_work/* $remote:/www/tools'
alias sync_me="scp -rp $source/* ~/creator;scp -rp ${source}_work/* ~/creator"

alias rs="bundle exec thin start -p 3001 --ssl"

# git command
alias gls='git branch'
alias gst='git status'
alias gpush='function _gpush(){ git push origin $1;};_gpush'
alias fpush='function _fpush(){ git push -f origin $1;};_fpush'
alias gco='function _gco(){ git checkout $1;};_gco'
alias gcodev="git checkout development"

alias glog="git log --abbrev-commit --decorate --date=relative --format=format:'\''%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'\'''"
alias gnew='function _gnew(){ git checkout -b $1;};_gnew'
#Created & Switched to a new branch 'KR-1963-RemoveLogo'

alias be='function _be(){ bundle exec $1;};_be'
alias be_rake='bundle exec rake'
alias be_spec='bundle exec rake spec'
alias be_bm='bundle exec rake brakeman:run'
alias be_best='bundle exec rake rails_best_practices:run'
alias be_rubocop='bundle exec rake rubocop:auto_correct'

alias rfind='function _rfind(){ find $2 -name "*.*"|xargs grep $1;};_rfind'
alias glog='git log --abbrev-commit --decorate --date=iso-strict --format=format:'\''%C(bold blue)%h%C(reset) - %C(bold green)(%ad)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'\'''


GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="git auto"
