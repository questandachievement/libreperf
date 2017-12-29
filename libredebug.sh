#!/bin/bash
#Logcollector
echo Collecting logs
system_profiler >> $"{debugcache}"
echo initializing
debugcache=/Volumes/libreperfruntime/debug
sysbridge=/Volumes/libreperfruntime/sys/bridge
syscpu=/Volumes/libreperfruntime/sys/cpu
sysenergy=/Volumes/libreperfruntime/sys/energy
syshwmorph=/Volumes/libreperfruntime/sys/hwmorph
sysIOstats=/Volumes/libreperfruntime/sys/IOstats
sysmem=/Volumes/libreperfruntime/sys/mem
systemp=/Volumes/libreperfruntime/sys/temp
root=/volumes/libreperfruntime
while true; do
echo compiling all logs
date >> $debugcache
echo Kernel Logs >> $debugcache
dmesg >> $debugcache
echo Full system general logs >> $debugcache
cat /var/log/system.log >> $debugcache
cat
echo libreperf plugin status >> $debugcache
echo app interconnect module >> $debugcache
cat $sysbridge/heavyLMKline >> $debugcache
cat $sysbridge/lightLMKline >> $debugcache
cat $sysbridge/lineselectengine1 >> $debugcache
cat $sysbridge/lineselectengine2 >> $debugcache
cat $sysbridge/lineselectengine3 >> $debugcache
cat $sysbridge/lineselectengine4 >> $debugcache
echo processor resource management unit >> $debugcache
echo enginesuspender >> $debugcache
cat $syscpu/enginesuspender1/Pcpuusage >> $debugcache
cat $syscpu/enginesuspender1/PID >> $debugcache
cat $syscpu/enginesuspender1/Pname >> $debugcache
cat $syscpu/enginesuspender2/Pcpuusage >> $debugcache
cat $syscpu/enginesuspender2/PID >> $debugcache
cat $syscpu/enginesuspender2/Pname >> $debugcache
cat $syscpu/enginesuspender3/Pcpuusage >> $debugcache
cat $syscpu/enginesuspender3/PID >> $debugcache
cat $syscpu/enginesuspender3/Pname >> $debugcache
cat $syscpu/enginesuspender4/Pcpuusage >> $debugcache
cat $syscpu/enginesuspender4/PID >> $debugcache
cat $syscpu/enginesuspender4/Pname >> $debugcache
echo cpuusage >> $debugcache
cat $syscpu/cpuusage >> $debugcache
echo energymon >> $debugcache
cat $sysenergy/batt >> $debugcache
echo hardwarestatus >> $debugcache
cat $syshwmorph/clamshellinfo >> $debugcache
echo IOstats >> $debugcache
cat $sysIOstats/IOPROC >> $debugcache
cat $sysIOstats/IOTOPPROCESSPID >> $debugcache
cat $sysIOstats/TOPPROCESS >> $debugcache
cat $sysIOstats/TOPPROCESSCPUUSAGE >> $debugcache
echo Rammanage >> $debugcache
cat $sysmem/heavyLMK/Pcpuusage >> $debugcache
cat $sysmem/heavyLMK/PID >> $debugcache
cat $sysmem/heavyLMK/Pmemusage >> $debugcache
cat $sysmem/heavyLMK/Pname >> $debugcache
cat $sysmem/lightLMK/Pcpuusage >> $debugcache
cat $sysmem/lightLMK/PID >> $debugcache
cat $sysmem/lightLMK/Pmemusage >> $debugcache
cat $sysmem/lightLMK/Pname >> $debugcache
cat $sysmem/free >> $debugcache
cat $sysmem/inactive >> $debugcache
cat $sysmem/total >> $debugcache
echo Temp >> $debugcache
cat $systemp/cputherm >> $debugcache
echo misc >> $debugcache
cat $root/idleindicate >> $debugcache
cat $root/killconfirm >> $debugcache
cat $root/uptimecycle >> $debugcache
cat $debugcache
date >> $debugcache
sleep 60
done