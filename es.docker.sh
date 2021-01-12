docker run -i -d \
--restart=always --privileged=true \
--name elasticsearch \
--net dnm --ip 172.172.0.70 \
-v /Users/gloomypan/docker_files/elasticsearch/logs:/usr/share/elasticsearch/logs \
-v /Users/gloomypan/docker_files/elasticsearch/data:/usr/share/elasticsearch/data \
-e "discovery.type=single-node" \
-e ES_JAVA_OPTS="-Xms256m -Xmx256m" \
elasticsearch:7.10.1

# docker exec -it elasticsearch /bin/bash
# yum install vim 
# vim config/elasticsearch.yml
# http.cors.enabled: true
# http.cors.allow-origin: "*"
# xpack.security.enabled: true
# xpack.security.transport.ssl.enabled: true
# esc -> wq
# elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.10.1/elasticsearch-analysis-ik-7.10.1.zip