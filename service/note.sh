
sudo update-rc.d apache2 disable
sudo update-rc.d apache2 enable


Upstart systemd Supervisord

Upstart
Used as the default init replacement on Ubuntu, Upstart is very good at starting things up. 

systemd
used as the default init on a fair number of Linuxes, most notably the Redhat/Fedora family of distributions.

Supervisord 
convenient to set up, and seems to get a fair amount of use in Pythonland. 
Its main advantage over Upstart, Runit, and systemd is that Supervisord can easily start pools of several instances of a program. 
This is useful if you want a pool of worker processes, e.g. as FastCGI workers. 
