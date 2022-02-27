# jspwiki in Docker via Tomcat

__build docker-image__
```
docker build -t demo_image .
```

__run container__
```
docker run -d --restart always -p 8089:8080 --name tomcat_8089  --volume="/home/yourHostName/volumenWiki:/usr/local/tomcat/tomcatShare" demo_image
```

__inspect container__
```
docker exec -it jspwiki_8089 /bin/bash
```

__test tomcat__
```
http://localhost:8089/Sample
```

__test jsp-wiki__
```
http://localhost:8089/Demo_git
```

__Live on server__ ->  [https://www.wiki-sw-testen.de:8089/Demo_git/](https://www.wiki-sw-testen.de:8089/Demo_git/)
