1. System Uptime and Load Averages:
Line 1
  the current time, 
  length of time since last boot, 
  total number of users
  the system load average over the last one, five and fifteen minutes.


2. TASK and CPU States: This consists of a minimum of two lines. 
Line 2
  the total tasks or threads (depends on the state of the Threads-mode toggle). 
  running, sleeping, stopped or zombie
  zombie processes are processes that have been terminated or are finished executing but have not been properly disposed). 

Line 3
shows CPU state percentages since the last refresh
  us, user : time spent running user processes that haven’t had their priority changed with the ‘nice’ command
  sy, system : time spent running kernel processes
  ni, nice : time spent running user processes that have been ‘niced’
  wa, IO-wait : time waiting for I/O completion
  hi : time spent on hardware interrupts
  si : time spent on software interrupts
  st : time taken from this virtual machine by the hypervisor (if your system isn’t a virtual machine, don’t worry)

Line 4,5
Line 4 shows physical memory 
line 5 shows virtual memory (swap).

Process List
The processes/tasks/threads being managed by the system is then shown as a list. Each row refers to a single task, while the columns contain task data. The columns can be reordered and edited. The default columns, with descriptions, include:
  PID – Process ID
  USER – owner of the process
  PR – Priority
  NI – Nice value
  VIRT – virtual memory size
  RES – resident memory size
  SHR – shared memory size
  S – process status (which could be one of the following: D (uninteruptible sleep), R (running), S (sleeping), T (traced or stopped) or Z (zombie)
  %CPU – the share of cpu time used by the process since last update
  %MEM – share of physical memory used
  TIME+ – total cpu time used by the task in hundredths of a second
  COMMAND – command name or command line (name + options)

h,?, help
u, U, type the user name
q, kill a process
f, shows the Fields Management screen
