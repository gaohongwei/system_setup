http://nonfunctionaltestingtools.blogspot.com/2013/03/vmstat-output-explained.html

Procs
    r: #processes waiting for CPU, ready, CPU bottleneck
    b: #processes waiting for IO, blocked by io

Memory
    swpd: the amount of virtual memory used, shows how many blocks are swapped out to disk (paged)
    free: the amount of idle memory.
    buff: the amount of memory used as buffers.
    cache: the amount of memory used as cache.
    inact: the amount of inactive memory. (-a option)
    active: the amount of active memory. (-a option)
    
    If value of swpd under swap is too high and it keeps changing, the it means that system is running short of memory.
Swap
    si: Amount of memory swapped in from disk (/s). This shows page-ins
    so: Amount of memory swapped to disk (/s). This shows page-outs. 
    The so column is zero consistently, indicating there are no page-outs.

    si and so should be at 0 most of the time,
    don’t like to see more than 10 blocks per second.
IO
    bi: Blocks received from block device - Read (like a hard disk)
    bo: Blocks sent to a block device – Write

    These show how much disk activity is going on, 
    does not necessarily indicate some problem(obviously data has to go to disk in order to be persistent). If we see some large number under “proc” and then “b” column (processes being blocked) and high I/O, the issue could be a I/O contention.

System
    in: #interrupts per second, including the clock.
    cs: #context switches per second. Expensive

    (A context switch occurs when the currently running thread is different from the previously running thread, so it is taken off of the CPU.)

    It is not uncommon to see the context switch rate be approximately the same as device interrupt rate (in column)

    If cs is high, it may indicate too much process switching is occurring, thus using memory inefficiently.

    If cs is higher then sy, system is doing more context switching than actual work.

    High r with high cs -> possible lock contention
    Lock contention occurs whenever one process or thread attempts to acquire a lock held by another process or thread. The more granular the available locks, the less likely one process/thread will request a lock held by the other. (For example, locking a row rather than the entire table, or locking a cell rather than the entire row.)

    When you are seeing blocked processes or high values on waiting on I/O (wa), it usually signifies either real I/O issues where you are waiting for file accesses or an I/O condition associated with paging due to a lack of memory on your system.
CPU
    These are percentages of total CPU time.
    us: CPU for user process
    sy: CPU for system/kernel process
    id: CPU for idle. 
    wa: CPU for waiting for IO. 
    st: Time stolen from a virtual machine.???

    To measure true idle time measure id+wa together:
    - if id=0%, it does not mean all CPU is consumed, because "wait" (wa) can be 100% and waiting for an I/O to complete

    - if wait=0%, it does not mean I have no I/O waiting issues, because as long I have threads which keep the CPU busy I could have additional threads waiting for I/O, but this will be masked by the running threads

    If process A is running and process B is waiting on I/O, the wait% still would have a 0 number.

    A 0 number doesn't mean I/O is not occurring, it means that the system is not waiting on I/O.

    If process A and process B are both waiting on I/O, and there is nothing that can use the CPU, then you would see that column increase.

    - if wait% is high, it does not mean I have io performance problem, it can be an indication that I am doing some IO but the cpu is not kept busy at all

    - if id% is high then likely there is no CPU or I/O problem


    To measure cpu utilization measure us+sy together (and compare it to physc):
    - if us+sy is always greater than 80%, then CPU is approaching its limits
     
    - if us+sy = 100% -> possible CPU bottleneck

    - if sy is high, your appl. is issuing many system calls to the kernel and asking the kernel to work. It measures how heavily the appl. is using kernel services.

    - if sy  is higher than us, this means your system is spending less time on real work (not good)
