
#forward port 80 to 3000 ubuntu
#sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000

[root@stghttpd001 ~]# telnet github.com 443
Trying 192.30.252.130...
telnet: connect to address 192.30.252.130: Connection refused


#Forward port 80 to 3000
# Rub it on rails server
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000

login=kwei@172.16.16.136
#ssh-keygen -t rsa
#ssh-copy-id $login
cat ~/.ssh/id_rsa.pub | ssh $login 'mkdir ~/.ssh;cat >> ~/.ssh/authorized_keys;chmod 700 ~/.ssh; chmod 640 ~/.ssh/authorized_keys'
