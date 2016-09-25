# docker-subversion

Creates an Apache Subversion server on Ubuntu with Docker.

To build the Docker image:
```
sh ./build.sh
```

To run the Docker container:
```
sh ./run.sh
```

To enter the Docker container:
```
docker exec -it [CONTAINER_ID] bash
```

To add the first Subversion user:
```
htpasswd -c /etc/subversion/passwd user1
```

To add subsequent Subversion users:
```
htpasswd /etc/subversion/passwd user2
htpasswd /etc/subversion/passwd user3
```

To checkout the project with an SVN client:
```
svn checkout http://localhost:8081/svn/myproject myproject --username [USER]
```

To checkout the project with a Git client:
```
git svn clone http://localhost:8081/svn/myproject/trunk myproject --username [USER]
```
