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
