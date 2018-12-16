# devops-tools
Development and operation tools for SunVibe


## nginx-vhost
It is an NGINX Reverse Proxy what enables other docker instances to be accessible on common web ports of the host machine.

create images for nginx-vhost
```
$ cd nginx-vhost
$ docker build -t nginx-vhost .
$ docker tag nginx-vhost sunvibecity/nginx-vhost
$ docker push sunvibecity/nginx-vhost
```

deploy nginx-vhost
```
DOCKER_HOST=$(ip addr list docker0 |grep "inet " |cut -d' ' -f6|cut -d/ -f1) && \
docker pull sunvibecity/nginx-vhost && \
docker stop nginx-vhost-container && \
docker rm nginx-vhost-container && \
docker run --name=nginx-vhost-container --restart=always \
  -p 80:80 -p 443:443 -e DOCKER_HOST=$DOCKER_HOST \
  -d sunvibecity/nginx-vhost
``` 
