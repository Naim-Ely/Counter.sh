# Counter.sh

Write a Bash script, count.sh, which builds a table of counters for the commands under /bin in alphabetical order. For example, there are 9 commands starting with "a" (a2p addftinfo addr2line apropos ar arch as ash awk) while there are 11 commands starting with "z" (zcat zcmp zdiff zegrep zfgrep zforce zgrep zless zmore znew zsoelim). Exclude commands starting with non-alphabets such as "[." Your script will print
a 9
...
...
...
z 11
The above list is a sample, just one example. You Linux distro can give you a totally different number of commands.
Use loop and array to design and implement this script.
