pkgs="default-jre zookeeperd nodejs npm supervisor"
for pkg in $pkgs;do
  dpkg -s $pkg 2>/dev/null >/dev/null || apt-get install $pkg -y

done
#apt-get install $pkgs -y

useradd kafka -m
#passwd kafka
adduser kafka sudo # add to sudo group

# SHould be the project directory
npm init
npm install kafka-node
npm install optimist

cd /tmp
ver=0.10.1.0
www="http://mirror.cc.columbia.edu/pub/software/apache/kafka/$ver/kafka_2.11-$ver.tgz"
wget $www -O kafka.tgz

kafka=/opt/kafka
mkdir $kafka
tar -vxf kafka.tgz -C $kafka --strip-components=1
tar -xvf kafka.tgz -C $kafka --strip 1



##
bin/kafka-server-start.sh config/server.properties
bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning
bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic test --from-beginning

# Service
apt-get install supervisor -y
service supervisor status
systemctl enable supervisor
service supervisor start
#Fix supervisor
systemctl enable supervisor
systemctl start supervisor

# Create /etc/supervisor/conf.d/kafka.conf

service supervisor start
service supervisor status
supervisorctl update
supervisorctl reread
supervisorctl restart kafka
supervisorctl status  kafka

# supervisor not started after reboot ????? 
