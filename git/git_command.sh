###### update description ######
git commit --amend
###### Rebase ######
git rebase -i HEAD~2
###### Apply patch ######
git apply name-of-file.patch

###### checkout again ######
git checkout development -- Gemfile

######## Check & Set remote ########
  git remote -v
  Get the new url from git repo
  git remote set-url origin git@github.com:gaohongwei/ror.git
  #git remote add origin https://github.com/gaohongwei/abc.git
  #git remote add git@gitwei.com/rails_topics.git
  git remote -v

###### push ######
git commit -m "first commit"
#git push origin master --usernamessh -p port_number remote_host
git push -u origin master
git push origin --delete production_0 # delete branch
git push origin --delete production_1 # delete branch

###### clone ######
git clone https://github.com/gaohongwei/rails_topics
git clone https://gaohongwei@github.com/gaohongwei/rails_topics

git clone git@gitcom.com:gaohongwei/rails_topics.git
git clone wei-git:gaohongwei/rails_topics.git https://github.com/gaohongwei/rails_topics
pan-git:foo/foo.git  # logs in with account foo

###### Checkin histroy ######
git log
git log -p -2
git log -U1 --word-diff
git log --stat
git log --pretty=oneline
######
git reset  # Untag all files
git reset HEAD file1 # unstage
git remote -v
git remote add origin https://github.com/gaohongwei/shell_script.git
git push -u origin master

  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)
  (use "git reset HEAD <file>..." to unstage)

Undo a commit and redo

$ git commit ...              (1)
$ git reset --soft HEAD~1     (2)
$ edit                        (3)
$ git add ....                (4)
$ git commit -c ORIG_HEAD     (5)
####
git reset --soft HEAD~3
git rm -rf directory
git add directoryname
