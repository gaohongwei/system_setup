view .exrc
set ts=2
set tabstop=2

sudo passwd root
apt-get install openssh-server

# enable login as root 
#otherwise, su after login
/etc/ssh/sshd_config
sudo /etc/init.d/ssh restart


export DEBIAN_FRONTEND=noninteractive
list="openssh-server vim git mysql-server libmysqlclient-dev curl"
apt-get -y install $list

# mysql
#sudo -E apt-get -q -y install mysql-server
mysqladmin -u root password dbroot

user=www
adduser --disabled-password --gecos "" $user
adduser  $user rvm
#deluser  $user rvm

\curl -L https://get.rvm.io | bash -s stable
#source /etc/profile.d/rvm.sh
RVM='/usr/local/rvm/bin/rvm'
$RVM install ruby -v 2.1.1
#install ruby -v 2.1.1
gem install --no-rdoc --no-ri rails -v 4.0.3
gem install heroku

cmds="rvm install ruby -v 2.1.1"
su  -c $cmds - www
su  -c "$cmds" - kwei


# 14.04 LTS not 12.04
apt-get install libmagick++-dev
gem install rmagick

#postgres
list="postgresql postgresql-contrib libpq-dev"
apt-get -y install $list
sudo su postgres -c  "createuser root --pwprompt"  
sudo -u postgres dropdb   $dbname
sudo -u postgres createdb $dbname


#postgresql 
 /etc/init.d/postgresql status
 psql -l
 psql TCM_production
SELECT version();
\
\dt
\q

#mysql
  mysql -uroot -p$DBPWD -e "drop database $DBNAME"
  sql="create database $DBNAME CHARACTER SET utf8 COLLATE utf8_general_ci"
  mysql -uroot -p$DBPWD -e "$sql"
