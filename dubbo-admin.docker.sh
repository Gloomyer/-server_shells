docker run -i -d --restart=always --privileged=true \
--net dnm --ip 172.25.0.42 \
--name dubbo-admin \
-e admin.registry.address="zookeeper://172.25.0.41:2181" \
-e admin.config-center="zookeeper://172.25.0.41:2181" \
-e admin.metadata-report.address="zookeeper://172.25.0.41:2181" \
apache/dubbo-admin:0.1.0