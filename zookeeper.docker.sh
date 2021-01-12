docker run -d --restart=always --net dnm --ip 172.172.0.50 \
--privileged=true \
-p 2181:2181 \
--name zookeeper \
zookeeper:3.6.2
