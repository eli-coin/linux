#!/bin/bash

# 查看 sda 硬盘机械硬盘还是固态硬盘
# 查看数值:
# 1表示旋转就是机械硬盘(SSD,Solid State Disk).
# 0非旋转就是固态硬盘(HDD,Hard Disk Drive).

is=`cat /sys/block/sda/queue/rotational`
if [[ ${is} -eq 1 ]];then
echo "机械硬盘(SSD,Solid State Disk)."
else
echo "固态硬盘(HDD,Hard Disk Drive)."
fi

