
Install heroku
gem install heroku
heroku --version


git init
git add .
git commit -m "add root routes"
git remote -v
gem install heroku
heroku git:remote -a iask
heroku keys:add
git push heroku master --force
heroku run rake db:migrate
heroku run rake db:seed
heroku restart

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
