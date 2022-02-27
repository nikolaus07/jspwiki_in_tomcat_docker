# jspwiki in Docker via Tomcat

__build docker-image__
```
docker build -t demo_git_image .
```

__run__
```
docker run -d --restart always -p 8081:8080 --name tomcat_http_8081  --volume="/home/yourHostName/volumenWiki:/usr/local/tomcat/tomcatShare" demo_git_image
```

__inspect container__
```
docker exec -it jspwiki_8081 /bin/bash
```

__test tomcat__
```
http://localhost:8081/Sample
```

__test jsp-wiki__
```
http://localhost:8081/Demo_git
```

__Live on server__
```
https://www.wiki-sw-testen.de:8089/Demo_git/
```

