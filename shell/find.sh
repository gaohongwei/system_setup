https://alvinalexander.com/unix/edu/examples/find.shtml
find . -type f -empty
find . -user kevin.wei -mtime 7 -iname ".rb"

##### find by name, type
find . -name foo.txt
find . -name "foo.*"
find . -name "*.txt"
find . -type d
find . -type f
find . -iname foo # find foo, Foo, FOo, FOO, etc.

##### find by size
find . -type f -size +2M 
find . -type f -size -1k

##### find by size by modification/access time
find . -mtime 1               # 24 hours
find . -mtime -7              # last 7 days
-mtime, modification time
-atime, access. time

##### exec other command
find . -type f -size +1k -exec ls -al {} \; 
find . -type f -size +1k -exec ls -al {} +; 
# {} is the placeholder, 
# {} \; {} +; mean commands ended

##### xargs other command
find . -type f -size +1k |xargs ls -al

##### search multiple dirs
find /opt /usr /var -name foo.scala -type f  

##### find files that don't match a pattern (-not)
# find all files not ending in ".html"
find . -type f -not -name "*.html" 

##### find files with different extensions
find . -type f \( -name "*.c" -o -name "*.sh" \)

##### Reference
    -maxdepth levels
    -mindepth levels
    -type c
          File is of type c:
          b      block (buffered) special
          c      character (unbuffered) special
          d      directory
          p      named pipe (FIFO)
          f      regular file
          l      symbolic link; this is never true if the -L option or
                 the -follow option is in effect, unless the symbolic
                 link is broken.  If you want to search for symbolic
                 links when -L is in effect, use -xtype.
          s      socket
          D      door (Solaris)
    -size n[cwbkMG]
          File uses n units of space, rounding up.  The following
          suffixes can be used:
          `b'    for 512-byte blocks (this is the default if no suffix
                 is used)
          `c'    for bytes
          `w'    for two-byte words
          `k'    for Kibibytes (KiB, units of 1024 bytes)
          `M'    for Mebibytes (MiB, units of 1024 * 1024 = 1048576
                 bytes)
          `G'    for Gibibytes (GiB, units of 1024 * 1024 * 1024 =
                 1073741824 bytes)              
    -amin n
          File was last accessed n minutes ago.
    -cmin n
          File's status was last changed n minutes ago.
    -atime n
          File was last accessed n*24 hours ago.   
    -ctime n
          File's status was last changed n*24 hours ago.                                        
    -perm mode
          File's permission bits are exactly mode (octal or symbolic). 
