docker run -i -d \
--restart=always --privileged=true \
--name kibana \
--net dnm --ip 172.172.0.72 \
-e I18N_LOCALE=zh-CN \
-e ELASTICSEARCH_URL=172.172.0.70:9200 \
kibana:7.10.1