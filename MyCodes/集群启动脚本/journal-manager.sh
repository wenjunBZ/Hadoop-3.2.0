#!/bin/bash
#journal-manager.sh 
# start_time=`date +%s`

# SLAVES=$(cat slaves)

# for slave in $SLAVES
# do
#         case $1 in
#                 start)  ssh -t $slave "/usr/local/hadoop/hadoop-3.2.0/sbin/hadoop-daemon.sh start journalnode" ;;
#                 stop)   ssh -t $slave "/usr/local/hadoop/hadoop-3.2.0/sbin/hadoop-daemon.sh stop journalnode" ;;
#                 *)      echo -e "Usage: sh journal-manager.sh {start|stop} ^_^\n" && exit ;;
#         esac
# done

# end_time=`date +%s`
# elapse_time=$((${end_time}-${start_time}))
# echo -e "\n$1 JournalNode Server takes ${elapse_time} seconds\n"
start_time=`date +%s`
case $1 in
                 start) ssh -t h03  "/usr/local/hadoop/hadoop-3.2.0/sbin/hadoop-daemon.sh start journalnode";
                        ssh -t h04  "/usr/local/hadoop/hadoop-3.2.0/sbin/hadoop-daemon.sh start journalnode";
                        ssh -t h05  "/usr/local/hadoop/hadoop-3.2.0/sbin/hadoop-daemon.sh start journalnode";
                        ;;
                 stop)   ssh -t h03  "/usr/local/hadoop/hadoop-3.2.0/sbin/hadoop-daemon.sh stop journalnode";
                        ssh -t h04  "/usr/local/hadoop/hadoop-3.2.0/sbin/hadoop-daemon.sh stop journalnode";
                        ssh -t h05  "/usr/local/hadoop/hadoop-3.2.0/sbin/hadoop-daemon.sh stop journalnode";
                        ;;
                *)      echo -e "Usage: sh zk-manager.sh {start|stop} ^_^\n" && exit ;;
esac
end_time=`date +%s`
elapse_time=$((${end_time}-${start_time}))
echo -e "\n$1 JournalNode Server takes ${elapse_time} seconds\n"