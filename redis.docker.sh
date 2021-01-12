docker run -d --restart=always --net dnm --ip 172.172.0.41 \
--name redis0 \
-v /Users/gloomypan/docker_files/redis0/data:/data \
-p 6401:6379 \
redis:6.0.9 \
--requirepass '1' \
--bind 0.0.0.0 \
--appendonly yes