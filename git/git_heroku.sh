touch README.md
git init
git add README.md
git reset  # Untag all files
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

# Checkin histroy
git log
git log -p -2
git log -U1 --word-diff
git log --stat
git log --pretty=oneline
  
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

git clone https://username@github.com/username/repository.git
git clone https://username:password@github.com/username/repository.git

#######################################
clone master/branch
git clone -b v10102014 https://github.com/five9/CorpWebCMS
git clone  https://github.com/five9/CorpWebCMS
git commit -m "first commit"
git push -u origin v10102014
git push origin --delete production_0 # delete branch
git push origin --delete production_1 # delete branch



#################### Rerun some sql ####################
rake db:migrate:redo VERSION=20141012220250
#################### Restart apache ####################
sudo service httpd restart

sudo a2enmod passenger
sudo service apache2 restart



Install heroku
gem install heroku
heroku --version


git init
git add .
git commit -m "first checkin"
gem install heroku
heroku git:remote -a iask
git remote -v
# Remove existing one
# git remote rm heroku
heroku keys:add
git push heroku master --force
git commit -m "first checkin";git push heroku master --force
heroku run rake db:migrate
heroku run rake db:seed
heroku restart




To drop the database, if you are using SHARED_DATABASE_URL:
heroku pg:reset DATABASE
db/migrate might have been loaded multiple times
You need drop it
git rm db/migrate
then commit and push

heroku run rails console
heroku logs
heroku ps:scale web=1
heroku pg:reset TCM_productionheroku restart


git reset --soft HEAD~3
git rm -rf directory
git add directoryname

clone code from heroku
heroku git:clone -a myapp

Permission denied (publickey).
heroku keys:add ~/.ssh/id_rsa.pub
heroku git:clone -a myapp

#################### checkout again ####################
git pull origin master
#################### checkout one file without fetch ####################
git checkout master -- Gemfile
#################### checkout one file with    fetch ####################
git fetch
git checkout origin/master -- file_path_name
git checkout origin/master -- config/routes.rb
