docker run -i -d --net dnm --ip 172.172.0.20 \
--privileged=true \
--restart=always \
--name nexus3 \
-m 1.5G \
sonatype/nexus3:3.29.0