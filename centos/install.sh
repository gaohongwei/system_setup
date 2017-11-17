rpm --query centos-release
centos-release-7-4.1708.el7.centos.x86_64

sudo yum update
sudo yum install curl
sudo yum install git
sudo yum install file-devel # libmagic

curl --help
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -L get.rvm.io | bash -s stable

rvm requirements

rvm install 2.1.2
rvm 2.1.2
gem install rails -v 4.1.0
gem install bundler
rvm gemset create rails410
rvm gemset create office
