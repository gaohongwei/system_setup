1.   curl -L https://get.rvm.io | bash -s stable --ruby=1.9.3 (for some reason it didn't install Ruby for me in full, so I had to do the next line too)
2.   rvm install ruby-1.9.3-p194
3.   sudo port install git-core +svn +doc +bash_completion +gitweb
4.   git clone https://github.com/generalthings/five9cms
	 git clone https://github.com/Five9/CorpWebCMS.git

5.   ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
	 ruby -e "$(wget -O- https://raw.github.com/Homebrew/linuxbrew/go/install)"
	 git clone https://github.com/Homebrew/linuxbrew.git ~/.linuxbrew

6.   brew install mysql
7.   ssh-keygen -t rsa -C "your@mail"(input your email)
8.   pbcopy /Users/<yourusername>/.ssh/id_rsa.pub (it will copy your public key into clipboard)
9.   go to www.github.com and paste your public key to GitHub (paste it from clipboard)
10.  ssh -T git@github.com (check connection OK)
11.  gem install bundler
12.  bundle install (it will fail at some step)

13.  brew install imagemagick
sudo apt-get install imagemagick --fix-missing
apt-get install libmagickwand-dev

14.  cd /usr/local/Cellar/imagemagick/6.8.6-3/lib/
15.  ln -s libMagick++-Q16.1.dylib  libMagick++.dylib
16.  ln -s libMagickCore-6.Q16.1.dylib libMagickCore.dylib
17.  ln -s libMagickWand-6.Q16.1.dylib libMagickWand.dylib
18.  export PATH=$PATH:/opt/local/bin
19.  PKG_CONFIG_PATH=/usr/local/Cellar/imagemagick/6.8.6-3/lib/pkgconfig C_INCLUDE_PATH=/usr/local/Cellar/imagemagick/6.8.6-3/include/ImageMagick-6/ gem install rmagick -v '2.13.1'


20.  bundle install (again, this time should be OK)
21.  cd config
22.  mv database.yml.example database.yml
23.  cd ..
24.  mysqld
25.  (mysqld will remain running, so open a separate console)
26.  rake db:create && rake db:migrate or
27.  rake db:setup
28.  mysql -uroot five9_development < db/dumps/five9cms_qa.sql
29.  brew install elasticsearch 
30.  elasticsearch -f -D es.config=/usr/local/Cellar/elasticsearch/0.90.3/config/elasticsearch.yml (it will ask you to install Java, so agree and install it)
31.  elasticsearch -f -D es.config=/usr/local/Cellar/elasticsearch/0.90.3/config/elasticsearch.yml (now it should start OK)
32.  (elasticsearch remains running, so open a new console)
33.  guard -P livereload
34.  (guard remains running, so open a new console)
35.  unzip media_library archive into five9cms/public/media_library/...

     rm javascripts/application.js
     rm stylesheets/application.css

36.  scripts/rails server
37.  (ruby server remains running)

Select some attributes from data model
Widget.select("name,id").all
