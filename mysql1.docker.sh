docker run -i -d \
--restart=always --privileged=true \
--name mysql1 \
--net dnm --ip 172.172.0.32 \
-v /Users/gloomypan/docker_files/mysql1/data:/var/lib/mysql \
-v /Users/gloomypan/docker_files/mysql1/logs:/var/log/mysql \
-v /Users/gloomypan/docker_files/mysql1/conf:/etc/mysql/conf.d \
-e MYSQL_ROOT_PASSWORD="1" \
-d mysql:8.0.22 --default-authentication-plugin=mysql_native_password