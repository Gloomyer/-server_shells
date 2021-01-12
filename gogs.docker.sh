docker run -i -d --net dnm --ip 172.172.0.60 \
--privileged=true \
--restart=always \
--name gogs \
-p 3000:22 \
-v /root/docker/gogs/data:/data \
gogs/gogs:0.12.3