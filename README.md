# Docker container for Ghost - Blog Content Management System


## Build
```
docker build -t seb/ghost-bcms .
```


## Run
```
docker run --name ghost-bcms -p 80:80 -p 443:443 -p 3001:2368 --restart=always -m 150m --log-driver=json-file --log-opt max-size=40m -d seb/ghost-bcms
```
    
## Run once
add: --rm
remove: --restart -d


## References 
https://hub.docker.com/_/ghost/
https://github.com/docker-library/ghost