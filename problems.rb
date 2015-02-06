403 Forbidden while accessing https://github.com/Five9/CorpWebCMS.git/info/refs
git clone https://github.com/Five9/CorpWebCMS.git
Initialized empty Git repository in /var/www/five9/releases/kwei/CorpWebCMS/.git/
error: The requested URL returned error: 403 Forbidden while accessing https://github.com/Five9/CorpWebCMS.git/info/refs

The solution is
Upgrade Git version >= 1.7.10 on CentOS 6
http://tecadmin.net/how-to-upgrade-git-version-1-7-10-on-centos-6/

git clone https://username:password@github.com/username/repository.git

[root@stghttpd001 ~]# telnet github.com 443
Trying 192.30.252.130...
telnet: connect to address 192.30.252.130: Connection refused
