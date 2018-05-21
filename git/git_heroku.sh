##### Install pg for heroku #####
sudo apt-get install postgresql postgresql-contrib  libpq-dev

##### Database config #####
  group :development, :test do
    gem 'sqlite3'
    gem 'mysql2'  
  end

  group :production do
    gem 'pg', '~> 0.21'
    gem 'rails_12factor'
  end

  bundle install --without production
##### Install heroku #####
  gem install heroku
  heroku --version
##### heroku create
  git remote -v
  heroku git:remote -a ml-tool
  # It will ask for user and password

##### heroku check in
  update code
    update gem
      add pg  in production
    update database.yml
  bundle install
  
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
  heroku pg:reset
  heroku run rake db:migrate
  heroku run rake db:load_data_file
  heroku restart
  heroku logs
#   heroku run rake db:reset
#   heroku run rake db:seed
#   heroku ps:scale web=1
#####  Rails log #####
  heroku logs
  heroku logs
  heroku logs --tail
  heroku logs -n 500  
#####  Database #####
  heroku run rails console
  heroku pg:reset TCM_productionheroku restart
#####  Rerun some sql #####
rake db:migrate:redo VERSION=20141012220250

To drop the database, if you are using SHARED_DATABASE_URL:
  heroku pg:reset DATABASE
db/migrate might have been loaded multiple times
You need drop it
  git rm db/migrate
then commit and push

heroku run console

##### clone code from heroku
  heroku git:clone -a myapp
##### Remove existing one
  git remote rm heroku

#####  Restart apache #####
sudo service httpd restart
sudo a2enmod passenger
sudo service apache2 restart

##### Push error ##### 
Gem::LoadError: cant activate pg (~> 0.18), 
already activated pg-1.0.0. 
Make sure all dependencies are added to Gemfile.

Uglifier::Error: Unexpected token: operator (>). 
To use ES6 syntax, harmony mode must be enabled with Uglifier.new(:harmony => true).
  Try replacing
  config.assets.js_compressor = :uglifier
  with
  config.assets.js_compressor = Uglifier.new(harmony: true)
  in config/environments/production.rb

  React
  ERROR in ./app/javascript/packs/hello_react.jsx
  Module build failed: SyntaxError: Unexpected token (10:2)

    8 | 
    9 | const Hello = props => (
  > 10 |   <div>Hello {props.name}!</div>
      |   ^
   11 | )
   12 | 
   13 | Hello.defaultProps = {
  Assigning variables in a class is not standard ES6, 
  it is https://babeljs.io/docs/plugins/transform-class-properties/ 
  so you would need to install and enable 
  babel-plugin-transform-class-properties 
  or install one of the presets that include that experimental syntax.
  .babelrc
    {
      "plugins": ["transform-class-properties"]
    }

  NameError: uninitialized constant Uglifier
  NameError: uninitialized constant Uglifier
  /app/config/environments/production.rb
  reproduce the issue locally  
  config.assets.js_compressor = Uglifier.new(harmony: true)

  RAILS_ENV=production rake assets:precompile --trace

Uglifier is not available in production at run-time, 
only at asset precompilation-time (hence being in the `assets` group).
  # Compress JavaScripts and CSS.
  config.assets.js_compressor = Uglifier.new(harmony: true) if defined? Uglifier  
  #onfig.assets.js_compressor = Uglifier.new(mangle: false) if defined? Uglifier  
