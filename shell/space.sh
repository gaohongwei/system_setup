
show space for each directory
du -sh * #mac

find / -type f -size +20000k |xargs ls -al

du -cha --max-depth=1 . | grep -E "M|G"

sudo swapoff -a
sudo swapon -a

tune2fs -m 0 /dev/xvda1 
