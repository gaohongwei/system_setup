touch README.md
git init
git add README.md
git reset HEAD file1 # unstage
git checkout f1 #discard changes
git commit -m "first commit"
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
  
fatal: unable to auto-detect email address (got 'kwei@ubuntu.(none)')
git config --global user.email "kwei@five9.com"
git config --global user.name "kevin-five9"  
  
403 Forbidden while accessing https://github.com/Five9/CorpWebCMS.git/info/refs
git clone https://github.com/Five9/CorpWebCMS.git
Initialized empty Git repository in /var/www/five9/releases/kwei/CorpWebCMS/.git/
error: The requested URL returned error: 403 Forbidden while accessing https://github.com/Five9/CorpWebCMS.git/info/refs

The solution is
Upgrade Git version >= 1.7.10 on CentOS 6
http://tecadmin.net/how-to-upgrade-git-version-1-7-10-on-centos-6/

git clone https://username:password@github.com/username/repository.git
