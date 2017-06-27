
find / -type f -size +20000k |xargs ls -al


sudo swapoff -a
sudo swapon -a

tune2fs -m 0 /dev/xvda1 
