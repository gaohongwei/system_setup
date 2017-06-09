######## Use 2 accounts ########
# https://gist.github.com/jexchan/2351996
######## Create 2 different public key ########
$ ssh-keygen -t rsa -C "your_email@youremail.com"
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
  
######## Add pub key to git ######## 

######## Testing your SSH connection ########
ssh -T git@github.com

######## Set user and email globally ########
git init
git config --global user.name "Gaohong Wei"
git config --global user.name
git config --global user.email "gaohongwei@gmail.com"
git config --global user.email

# Set user and email for single  project
git init
git config user.name "Gaohong Wei"
git config user.name
git config user.email "gaohongwei@gmail.com"
git config user.email
######## .git/config ########
