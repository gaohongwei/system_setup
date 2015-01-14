
#forward port 80 to 3000 ubuntu
#sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000
