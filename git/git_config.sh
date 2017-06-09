######## Use 2nd account ########
ssh -T git@github.com
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/gwei_rsa
ssh -T git@github.com
ssh-add -l
git config user.name gwei
git config user.email gaohongwei@gmail.com

# Set user and email globally
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
### .git/config
[core]
        repositoryformatversion = 0
        filemode = true
        bare = false
        logallrefupdates = true
        ignorecase = true
        precomposeunicode = true
[remote "origin"]
        url = https://gaohongwei@github.com/gaohongwei/rails_topics.git
        fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
        remote = origin
        merge = refs/heads/master
[user]
        email = gaohongwei@gmail.com
        name = gaohong wei
        username = abc

ssh-add ~/.ssh/wei_rsa.pub
# ~/.ssh/config
Host github.com
    Hostname github.com
    User git
    IdentityFile ~/.ssh/id_rsa
Host gitwei.com
    Hostname github.com
    User git
    IdentityFile ~/.ssh/wei_rsa

ssh-add ~/.ssh/wei_rsa.pub
ssh-add -l
