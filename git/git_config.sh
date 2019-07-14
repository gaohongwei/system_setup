######## install git ########
  sudo apt-get install git
######## Create ssh pub key  ########
  ssh-keygen -t rsa -C "kwei@gmail.com"
  copy key and add to git
  Copy the key
  pbcopy < ~/.ssh/id_rsa.pub
  cat ~/.ssh/id_rsa.pub
######## Add the SSH key to git repository ########  
  GO a GitHub repository
  Go to settings
  Click 'add SSH key'
######## Testing your SSH connection ########
  ssh -T git@github.com
  
  ssh-keygen -t rsa
  ssh-copy-id remote_host

  ssh -p port_number remote_host
  ssh remote_host command_to_run 
######## Set user and email globally ########
  git init
  git config --global core.editor "vim"
  git config --global user.name "Gaohong Wei"
  git config --global user.name
  git config --global user.email "xxx@gmail.com"
  git config --global user.email


  # Set user and email for single  project
  git init
  git config user.name "Gaohong Wei"
  git config user.name
  git config user.email "xxx@gmail.com"
  git config user.email

######## Check & Set remote ########
  git remote -v
  Get the new url from git repo
  git remote set-url origin git@github.com:gaohongwei/ror.git
  git remote -v

######## .git/config ########
######## Modify the ssh config ########
#eval "$(ssh-agent -s)"
$ cat ~/.ssh/config
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa1

Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_rsa2
######## Use 2 accounts ########
# https://gist.github.com/jexchan/2351996
# https://confluence.atlassian.com/bitbucket/configure-multiple-ssh-identities-for-gitbash-mac-osx-linux-271943168.html
######## Create 2 different public key ########
$ ssh-keygen -t rsa -C "xxx@gmail.com"
~/.ssh/id_rsa1
~/.ssh/id_rsa2

######## Add these two keys ########
$ ssh-add ~/.ssh/id_rsa1
$ ssh-add ~/.ssh/id_rsa2
#ssh-add -K ~/.ssh/gwei_rsa

######## Delete all cached keys ########
######## Check saved keys ########
$ ssh-add -D
$ ssh-add -l
