#!/bin/bash
N=12
a="$(ps -aux | grep bot_old| grep python3.6 | awk -v N=$N '{print $N}')"
b="/home/python/bot_old.py"
if [[ "$a" == "$b" ]]
then
	:
else
	tmux new -d -s coindesk 'python3.6 /home/python/bot_old.py'
fi
