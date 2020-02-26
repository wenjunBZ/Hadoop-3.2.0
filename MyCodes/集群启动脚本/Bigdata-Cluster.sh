
#!/bin/bash
#Bigdata-Cluster.sh
CLUSTER_CONF_PATH=$(cd "$(dirname "$0")"; pwd)
NameNode_1=h01
NameNode_2=h02
SLAVE_1=h03
SLAVE_2=h04
SLAVE_3=h05
start_time=`date +%s`

function showJps() {

        echo -e "\n**********************************************************************************"
        echo -e "当前 ${NameNode_1} 上的进程为:" && ssh -t ${NameNode_1} "source /etc/profile;jps"
        echo -e "\n**********************************************************************************"
        echo -e "当前 ${NameNode_2} 上的进程为:" && ssh -t ${NameNode_2} "source /etc/profile;jps"
        echo -e "\n**********************************************************************************"
        echo -e "当前 ${SLAVE_1} 上的进程为:" && ssh -t ${SLAVE_1} "source /etc/profile;jps"
        echo -e "************************************************************************************"
        echo -e "当前 ${SLAVE_2} 上的进程为:" && ssh -t ${SLAVE_1} "source /etc/profile;jps"
        echo -e "************************************************************************************"
        echo -e "当前 ${SLAVE_3} 上的进程为:" && ssh -t ${SLAVE_1} "source /etc/profile;jps"
        echo -e "************************************************************************************"
}


case $1 in

        start)  sh $CLUSTER_CONF_PATH/zk-manager.sh  start ;
                sh $CLUSTER_CONF_PATH/journal-manager.sh  start ;
                sh $CLUSTER_CONF_PATH/hadoop-manager.sh  start ;
                sh $CLUSTER_CONF_PATH/spark-manager.sh  start ;
                showJps
                ;;

        stop)   sh $CLUSTER_CONF_PATH/spark-manager.sh  stop ;
                sh $CLUSTER_CONF_PATH/hadoop-manager.sh  stop ;
                sh $CLUSTER_CONF_PATH/journal-manager.sh  stop ;
                sh $CLUSTER_CONF_PATH/zk-manager.sh  stop ;
                showJps
                ;;

        status) showJps
                ;;

        *)      echo -e "Usage: sh Bigdata-Cluster.sh {start|stop|status} ^_^\n"  ;;

esac

end_time=`date +%s`
elapse_time=$((${end_time}-${start_time}))
echo -e "\n$1 Bigdata Cluster takes ${elapse_time} seconds\n"
#(source /etc/profile)
