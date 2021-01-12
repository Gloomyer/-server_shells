docker run -d --restart=always --net dnm --ip 172.172.0.80 \
--log-driver json-file --log-opt max-size=100m \
--log-opt max-file=2 \
--privileged=true \
--name kafka \
-e KAFKA_BROKER_ID=0 \
-e KAFKA_ZOOKEEPER_CONNECT=172.172.0.50:2181/kafka \
-e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://172.172.0.80:9092 \
-e KAFKA_LISTENERS=PLAINTEXT://0.0.0.0:9092 \
-v /etc/localtime:/etc/localtime \
wurstmeister/kafka:2.13-2.6.0

# docker run -d --restart=always --log-driver json-file --log-opt max-size=100m 
# --log-opt max-file=2 --name kafka -p 9092:9092 
# -e KAFKA_BROKER_ID=0 -e KAFKA_ZOOKEEPER_CONNECT=172.16.0.13:2181/kafka 
# -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://172.16.0.13:9092 
# -e KAFKA_LISTENERS=PLAINTEXT://0.0.0.0:9092 -v /etc/localtime:/etc/localtime wurstmeister/kafka
