docker run -i -d \
--restart=always --privileged=true \
--name mysql \
--net dnm --ip 172.172.0.31 \
-v /Users/gloomypan/docker_files/mysql0/data:/var/lib/mysql \
-v /Users/gloomypan/docker_files/mysql0/logs:/var/log/mysql \
-v /Users/gloomypan/docker_files/mysql0/conf:/etc/mysql/conf.d \
-e MYSQL_ROOT_PASSWORD="1" \
-p 3361:3306 \
-d mysql:8.0.22
# --default-authentication-plugin=mysql_native_password
