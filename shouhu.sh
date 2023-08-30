#!/bin/bash
#判断一个进程是否存在，不存在则执行启动该进程

# 进程名
process_name="prowatch"
# 进程号
process_id=`ps -ef | grep $process_name | grep -v grep | awk '{print $2}'|wc -l`
# 判断执行成功
if [[ $process_id -gt 0 ]]; then
    echo "process is running"
else    
    echo "process is not running"
    # 执行启动进程  
    `cd /transformer/tools/watch;./prowatch`
fi
