
#!/bin/bash
#spark-manager.sh
#status) ssh -t $slave "source ~/.bash_profile;zkServer.sh status" ;;
#restart)ssh -t $slave "source ~/.bash_profile;zkServer.sh restart" 1>/dev/null;;
# MASTERS=$(cat masters)

# start_time=`date +%s`
# for master in $MASTERS
# do
#         case $1 in
#                 start)  ssh -t $master "/usr/local/spark-2.4.5-bin-hadoop2.7/sbin/start-master.sh" 1>/dev/null;;
#                 stop)   ssh -t $master "/usr/local/spark-2.4.5-bin-hadoop2.7/sbin/stop-master.sh" 1>/dev/null ;;
#                 *)      echo -e "Usage: sh spark-manager.sh {start|stop|restart} ^_^\n" && exit ;;
#         esac
# done
# end_time=`date +%s`
# elapse_time=$((${end_time}-${start_time}))
# echo -e "\n$1 ZooKeeper Server takes ${elapse_time} seconds\n"

case $1 in
                start)  ssh -t h01 "/usr/local/spark-2.4.5-bin-hadoop2.7/sbin/start-all.sh" 1>/dev/null;
                        ssh -t h02 "/usr/local/spark-2.4.5-bin-hadoop2.7/sbin/start-master.sh" 1>/dev/null;
                        ;;
                stop)   ssh -t h01 "/usr/local/spark-2.4.5-bin-hadoop2.7/sbin/stop-all.sh" 1>/dev/null;
                        ssh -t h02 "/usr/local/spark-2.4.5-bin-hadoop2.7/sbin/stop-master.sh" 1>/dev/null;
                        ;;
                *)      echo -e "Usage: sh spark-manager.sh {start|stop|restart} ^_^\n" && exit ;;
esac
