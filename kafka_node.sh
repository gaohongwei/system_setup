pkgs="default-jre zookeeperd nodejs npm"
for pkg in $pkgs;do
  dpkg -s $pkg 2>/dev/null >/dev/null || apt-get install $pkg -y

done
#apt-get install $pkgs -y
npm install kafka-node


useradd kafka -m
#passwd kafka
adduser kafka sudo # add to sudo group
