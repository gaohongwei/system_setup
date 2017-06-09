ssh-keygen -t rsa
ssh-copy-id remote_host

ssh -p port_number remote_host
ssh remote_host command_to_run

Testing your SSH connection
ssh -T git@github.com


git push origin master --usernamessh -p port_number remote_host


git clone https://gaohongwei@github.com/gaohongwei/rails_topics
git clone https://github.com/gaohongwei/rails_topics
git clone git@gitcom.com:gaohongwei/rails_topics.git
git clone wei-git:gaohongwei/rails_topics.git https://github.com/gaohongwei/rails_topics
pan-git:foo/foo.git  # logs in with account foo

Checkout specific files from another branch
git checkout development -- Gemfile
git checkout development -- Gemfile.lock


##### Create repo #####


1. Generate an SSH key
cd ~                 #Your home directory
ssh-keygen -t rsa    #Press enter for all values

2. Copy the key
pbcopy < ~/.ssh/id_rsa.pub

3. Associate the SSH key with the remote repository
GO a GitHub repository
Go to settings
Click 'add SSH key'



echo "# abc" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/gaohongwei/abc.git
#git remote add git@gitwei.com/rails_topics.git
git push -u origin master


$ git remote -v
origin  https://github.com/gaohongwei/abc.git (fetch)
origin  https://github.com/gaohongwei/abc.git (push)
$ git remote set-url origin git@github.com:gaohongwei/abc.git
$ git remote -v
origin  git@github.com:gaohongwei/abc.git (fetch)
origin  git@github.com:gaohongwei/abc.git (push)
