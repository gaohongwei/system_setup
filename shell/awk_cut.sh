Cut samples

cut -d':' -f2 a.out
awk '{print $2}'
awk '{print $NF}'
awk '{print $(NF-1)}'

awk -F: '{ print $1 }'     /etc/passwd
awk -F: '{ print $1,$3 }'  /etc/passwd
awk -F: '{ print $1,$NF }' /etc/passwd
awk -F: '{ print $1, $(NF-1) }' /etc/passwd

$(NF-2) seems not work
For more coulmns, a loop can be used inside the expression
