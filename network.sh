
#forward port 80 to 3000 ubuntu
#sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000

[root@stghttpd001 ~]# telnet github.com 443
Trying 192.30.252.130...
telnet: connect to address 192.30.252.130: Connection refused


#Forward port 80 to 3000
# Rub it on rails server
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000
