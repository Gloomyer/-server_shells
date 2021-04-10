# sql
# create user 'nacos'@'172.25.0.41' identified by 'nacos';
# grant all privileges on nacos.* to 'nacos'@'172.25.0.41' with grant option;
# flush privileges;
docker run -i -d \
--net dnm --ip 172.25.0.43 \
--name nacos \
-e TZ="Asia/Shanghai" \
-e NACOS_SERVERS=standalone \
-e SPRING_DATASOURCE_PLATFORM=mysql \
-e MYSQL_SERVICE_HOST=172.25.0.21 \
-e MYSQL_SERVICE_DB_NAME=nacos \
-e MYSQL_SERVICE_USER=nacos \
-e MYSQL_SERVICE_PASSWORD=nacos \
-e NACOS_DEBUG=y \
-p 9555:9555 \
nacos/nacos-server:2.0.0-bugfix