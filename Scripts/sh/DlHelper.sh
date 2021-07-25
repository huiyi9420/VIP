#!/bin/bash

dir_sync=/root/Help/互助研究院\(1597522865\)/2021年07月
dir_git=/root/GitHub/VIP
Help=$dir_git/Scripts/sh/Helpcode2\.8

(
  echo "resolve_username DlHelper_bot"
  sleep 5

  echo "msg DlHelper /start https://t.me/update_help" 
  echo "safe_quit"
) | docker exec -i telegram-cli telegram-cli -N

cd $dir_git
git fetch --all && git reset --hard origin/main && git pull
find $dir_sync -name "*code\.sh" -exec mv {} $Help/code\.sh \;
find $dir_sync -name "*task_before\.sh" -exec mv {} $Help/task_before\.sh \;
find $dir_sync -name "*config_sample\.sh" -exec mv {} $Help/config_sample\.sh \;
