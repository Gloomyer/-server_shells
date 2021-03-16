# 创建对应目录

mkdir -p \
/d/DockerMapping/data/namesrv/logs \
/d/DockerMapping/data/namesrv/store \
/d/DockerMapping/conf \
/d/DockerMapping/data/broker/logs \
/d/DockerMapping/data/broker/store

echo "brokerClusterName = DefaultCluster" > /d/DockerMapping/conf/broker.conf
echo "brokerName = broker-a" >> /d/DockerMapping/conf/broker.conf
echo "brokerId = 0" >> /d/DockerMapping/conf/broker.conf
echo "deleteWhen = 04" >> /d/DockerMapping/conf/broker.conf
echo "fileReservedTime = 48" >> /d/DockerMapping/conf/broker.conf
echo "brokerRole = ASYNC_MASTER" >> /d/DockerMapping/conf/broker.conf
echo "flushDiskType = ASYNC_FLUSH" >> /d/DockerMapping/conf/broker.conf
echo "brokerIP1 = 172.25.0.52" >> /d/DockerMapping/conf/broker.conf

# 最后这个ip 要和 rmqbroker 保持一致


docker run -d -p 9876:9876 \
--net dnm --ip 172.25.0.51 \
-v /d/DockerMapping/rocketmq/data/namesrv/logs:/root/logs \
-v /d/DockerMapping/rocketmq/data/namesrv/store:/root/store \
--name rmqnamesrv -e "MAX_POSSIBLE_HEAP=100000000" \
rocketmqinc/rocketmq:4.4.0 sh mqnamesrv

docker run -d \
--net dnm --ip 172.25.0.52 \
-v /d/DockerMapping/rocketmq/data/broker/logs:/root/logs \
-v /d/DockerMapping/rocketmq/data/broker/store:/root/store \
-v /d/DockerMapping/rocketmq/conf/broker.conf:/opt/rocketmq-4.4.0/conf/broker.conf \
--name rmqbroker \
-e "NAMESRV_ADDR=172.25.0.51:9876" \
-e "MAX_POSSIBLE_HEAP=200000000" \
rocketmqinc/rocketmq:4.4.0 sh mqbroker -c /opt/rocketmq-4.4.0/conf/broker.conf


# 最后这个web管理平台对外暴露端口是8080  
# 我这边走了nginx转发 所以没有映射出来
docker run -d --name rmqconsole \
--net dnm --ip 172.25.0.53 \
-e "JAVA_OPTS=-Drocketmq.namesrv.addr=172.25.0.51:9876 -Dcom.rocketmq.sendMessageWithVIPChannel=false" \
-t styletang/rocketmq-console-ng:1.0.0
