#!/bin/bash
set -e
mem_total=$(free -m | grep Mem | awk '{print $2}')
echo -e "Mem Total: ${mem_total}m"
mem_limit=$(( $(cat /sys/fs/cgroup/memory/memory.limit_in_bytes) / 1024 / 1024 ))
echo -e "Mem Limit: ${mem_limit}m"

if (( mem_limit < mem_total )); then
    jvm_mem_max=$(( mem_limit / 100 * 80 ))
else
    jvm_mem_max=$(( mem_total / 100 * 80 ))
fi
echo -e "Suggest JVM Mem Max: ${jvm_mem_max}m"

if (( jvm_mem_max > 8196 )); then
    jvm_mem_min=4096
else
    jvm_mem_min=$(( jvm_mem_max / 2 ))
fi
echo -e "Suggest JVM Mem Min: ${jvm_mem_min}m"

setenv_file="/opt/atlassian/jira/bin/setenv.sh"
echo -en "Set JVM_MINIMUM_MEMORY ... "
sed -i "s/JVM_MINIMUM_MEMORY:=.*/JVM_MINIMUM_MEMORY:=${jvm_mem_min}m}/" ${setenv_file}
echo -e "Done"
echo -en "Set JVM_MAXIMUM_MEMORY ... "
sed -i "s/JVM_MAXIMUM_MEMORY:=.*/JVM_MAXIMUM_MEMORY:=${jvm_mem_max}m}/" ${setenv_file}
echo -e "Done"
