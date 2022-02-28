# jspwiki in Docker via Tomcat

__build docker-image__
```
docker build -t demo_image .
```

__run container__
```
docker run -d -p 8089:8080 --name wiki_8089  --volume="/home/nikolaus07/volumenWiki:/usr/local/tomcat/tomcatShare" demo_image
```

__inspect container__
```
docker exec -it wiki_8089 /bin/bash
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
