docker run -i -d --net dnm --ip 172.172.0.10 \
--restart=always \
--name nginx \
-v /Users/gloomypan/docker_files/nginx/conf.d:/etc/nginx/conf.d \
-v /Users/gloomypan/docker_files/nginx/www:/usr/share/nginx/html \
-v /Users/gloomypan/docker_files/nginx/logs:/var/log/nginx/ \
-p 80:80 \
-p 443:443 \
-m 200m \
nginx:1.19.6