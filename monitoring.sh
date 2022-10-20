#!bin/bash

ARCH=$(uname -a)
PCPU=$(grep 'physical id' /proc/cpuinfo | uniq | wc -l)
VCPU=$(grep 'processor' /proc/cpuinfo | uniq | wc -l)
FULLRAM=$(free -h | grep Mem | awk '{print $3}')
USEDRAM=$(free -h | grep Mem | awk '{print $2}')
PCTRAM=$(free -k | grep Mem | awk '{printf("%.2f"), $3/$2100}')
FULLDISK=$(df -Bg | grep /dev/ | grep -v /boot | awk '{fd += $2} END {print fd}>
USEDDISK=$(df -Bm | grep /dev/ | grep -v /boot | awk '{ud += $3} END {print ud}>
PCTDISK=$(df -Bm | grep /dev/ | grep -v /boot | awk '{ud += $3} {fd += $2} END >
CPU=$(top -bn1 | awk 'NR == 3 {printf "%d%%", $2 + $4}')
LASTBOOT=$(who -b | awk '{print $3,$4}')
LVM=$(if [ $(lsblk | grep "lvm" | wc -l) -eq 0 ]; then echo no; else echo yes; >
TCP=$(ss -s | awk '$1 == "TCP:" {gsub(/,/,""); print $4 " ESTABLISHED"}')
USERLOG=$(users | wc -l)
IP_ADDR=$(hostname -I)
MAC=$(ip link show | awk '$1 == "link/ether" {print $2}')
SUDO=$(grep -c 'COMMAND' /var/log/sudo/logfilesudo)

echo "#Architecture: ${ARCH}"
echo "#CPU physical: ${PCPU}"
echo "#vCPU: ${VCPU}"
echo "#Memory Usage: ${USEDRAM}/${FULLRAM}MB (${PCTRAM}%)"
echo "#Disk Usage: ${USEDDISK}/${FULLDISK}Gb (${PCTDISK}%)"
echo "#CPU load: ${CPU}"
echo "#Last boot: ${LASTBOOT}"
echo "#LVM use: ${LVM}"
echo "#Connections TCP: ${TCP} ${TCPMSSG}"
echo "#User log: ${USERLOG}"
echo "#Network: IP ${IP_ADDR} (${MAC})"
echo "#Sudo: ${SUDO} cmd"
