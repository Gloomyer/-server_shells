docker run -i -d \
--restart=always --privileged=true \
--name es_head \
--net dnm --ip 172.172.0.71 \
mobz/elasticsearch-head:5