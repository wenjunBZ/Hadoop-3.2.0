#!/bin/bash
#zk--manager.sh

# SLAVES=$(cat slaves)

# start_time=`date +%s`
# for slave in $SLAVES
# do
#         case $1 in
#                 start)  ssh -t $slave "/zdata/zookeeper-3.4.14/bin/zkServer.sh start" 1>/dev/null;;
#                 stop)   ssh -t $slave "/zdata/zookeeper-3.4.14/bin/zkServer.sh stop" 1>/dev/null ;;
#                 status) ssh -t $slave "/zdata/zookeeper-3.4.14/bin/zkServer.sh status" ;;
#                 restart)ssh -t $slave "/zdata/zookeeper-3.4.14/bin/zkServer.sh restart" 1>/dev/null;;
#                 *)      echo -e "Usage: sh zk-manager.sh {start|stop|restart} ^_^\n" && exit ;;
#         esac
# done


# end_time=`date +%s`
# elapse_time=$((${end_time}-${start_time}))
# echo -e "\n$1 ZooKeeper Server takes ${elapse_time} seconds\n"

case $1 in
                 start) ssh -t h03  "/zdata/zookeeper-3.4.14/bin/zkServer.sh start";
                        ssh -t h04  "/zdata/zookeeper-3.4.14/bin/zkServer.sh start";
                        ssh -t h05  "/zdata/zookeeper-3.4.14/bin/zkServer.sh start";
                        ;;
                 stop)   ssh -t h03  "/zdata/zookeeper-3.4.14/bin/zkServer.sh stop";
                        ssh -t h04  "/zdata/zookeeper-3.4.14/bin/zkServer.sh stop";
                        ssh -t h05  "/zdata/zookeeper-3.4.14/bin/zkServer.sh stop";
                        ;;
                 *)      echo -e "Usage: sh zk-manager.sh {start|stop} ^_^\n" && exit ;;
esac
