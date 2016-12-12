pkgs="default-jre zookeeperd nodejs npm"
for pkg in $pkgs;do
  dpkg -s $pkg 2>/dev/null >/dev/null || apt-get install $pkg -y

done
#apt-get install $pkgs -y
npm install kafka-node


useradd kafka -m
#passwd kafka
adduser kafka sudo # add to sudo group

ver=0.10.1.0
www="http://mirror.cc.columbia.edu/pub/software/apache/kafka/$ver/kafka_2.11-$ver.tgz"
wget $www -O kafka.tgz

mkdir kafka
tar -vxf kafka.tgz -C ./kafka --strip-components=1
tar -xvf kafka.tgz -C ./kafka --strip 1
