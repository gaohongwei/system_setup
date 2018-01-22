Install
  $ sudo apt install strace #Debian/Ubuntu 
  # yum install strace    #RHEL/CentOS
  # dnf install strace    #Fedora 22+
debugging and trouble shooting programs 
It captures and records all system calls made by a process and the signals received by the process.

$ sudo strace -p pid
$ sudo strace df -h

$ sudo strace -c -p pid
-c generate a report of total time, calls, and errors for each system call

-t print the time of day for each line in the trace output

-T shows the time difference between the starting and the end of each system call made by a program

-o write the trace messages sent to standard error to a file
$ sudo strace -o df_debug.txt df -h

-i option displays the instruction pointer at the time of each system call made by the program.
-d show debugging information for strace tool
$ strace -d df -h

strace -e open ls
strace -e open -t ls
strace -e trace=open ls

-e trace=xxx
Trace Only Specific System Calls
xxx signal, abbrev, verbose, raw, read, or write
  $ sudo strace -e trace=write df -h
  $ sudo strace -e trace=open,close df -h
  $ sudo strace -e trace=open,close,read,write df -h
  $ sudo strace -e trace=all df -h  

  $ sudo strace -q -e trace=process df -h 
  trace all system calls involving process management.

  $ sudo strace -q -e trace=file df -h
  trace all system calls that take a filename as an argument

  $ sudo strace -q -e trace=memory df -h  
  trace all system calls involving memory mapping,


  You can trace all network and signals related system calls.

  $ sudo strace -e trace=network df -h
  trace all network system calls.

  $ sudo strace -e trace=signal df -h
  trace all signals related system calls.
