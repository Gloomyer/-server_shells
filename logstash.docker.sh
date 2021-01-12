docker run -i -d \
--restart=always --privileged=true \
--name logstash \
--net dnm --ip 172.172.0.73 \
-e xpack.monitoring.elasticsearch.hosts=http://172.172.0.70:9200 \
logstash:7.10.1