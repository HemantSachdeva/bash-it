#!/bin/sh

echo " hello"
echo -e "\033[93m╭───"
echo -e "\033[93m│ \033[1m\033[95m$USER@$(uname -n)\033[0m"
echo -e "\033[93m│ \033[1m\033[93mKernel                  \033[0m$(uname -s) $(uname -r)"
echo -e "\033[93m│ \033[1m\033[93mOS                      \033[0m$(cat /etc/*release | grep -i pretty_name | awk -F "=" '{print $2}' | sed 's/"//g')"
echo -e "\033[93m│ \033[1m\033[93mHost                    \033[0m$(uname -m)"
echo -e "\033[93m│ \033[1m\033[93mProcessor               \033[0m$(cat /proc/cpuinfo | grep 'model name' | uniq | cut -d' ' -f3-)"
echo -e "\033[93m│ \033[1m\033[93mMemory                  \033[0m$(cat /proc/meminfo | grep 'MemTotal' | uniq | cut -d' ' -f3- | xargs)"
echo -e "\033[93m│ \033[1m\033[93mUptime                  \033[0m$(uptime | awk '{print $3}' | awk -F "," '{print $1}')"
echo -e "\033[93m│ \033[1m\033[93mBattery                 \033[0m$(upower -i `upower -e|grep 'BAT'` | grep -i percentage | awk '{print $2}')"
echo -e "\033[93m╰───"


