##### Install pg for heroku #####
sudo apt-get install postgresql postgresql-contrib  libpq-dev
##### Install heroku #####
  gem install heroku
  heroku --version
##### heroku create
  git remote -v
  heroku git:remote -a ml-tool
  # It will ask for user and password

##### heroku check in
  git remote -v
  git init
  git add .
  git commit -m "first checkin"
  git push heroku master
  #####
  git push heroku master --force

##### Permission denied (publickey).
  heroku keys:add
  heroku keys:add ~/.ssh/id_rsa.pub
##### Tasks
  heroku run rake db:migrate
  heroku run rake db:seed
  heroku restart

#####  Rerun some sql #####
rake db:migrate:redo VERSION=20141012220250

To drop the database, if you are using SHARED_DATABASE_URL:
  heroku pg:reset DATABASE
db/migrate might have been loaded multiple times
You need drop it
  git rm db/migrate
then commit and push

#####  Rails log #####
  heroku run rails console
  heroku logs
  heroku ps:scale web=1
  heroku pg:reset TCM_productionheroku restart

##### clone code from heroku
  heroku git:clone -a myapp
##### Remove existing one
  git remote rm heroku

#####  Restart apache #####
sudo service httpd restart
sudo a2enmod passenger
sudo service apache2 restart
