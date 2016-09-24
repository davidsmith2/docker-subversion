# docker-subversion

Creates a Subversion server on Ubuntu with Docker.

To create the machine:
```
docker-machine create --driver virtualbox subversion
docker-machine env subversion
eval $(docker-machine env subversion)
```

To build the image:
```
sh ./build.sh
```

To run the container:
```
sh ./run.sh
```

To add a user:
```
docker exec -it [CONTAINER_ID] bash
htpasswd -c /etc/subversion/passwd user
```

To checkout the project:
```
svn co http://localhost:8081/svn/myproject myproject --username user
```
