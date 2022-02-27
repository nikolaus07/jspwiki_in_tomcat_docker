FROM tomcat:9.0.58

# my_e_mail
MAINTAINER "lern77@eclipso.de"

# update linux
RUN apt-get update -y
RUN apt-get install -y apt-utils
RUN apt-get upgrade -y

# copy applications
COPY *.war /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat
# share-Folder
RUN mkdir tomcatShare

# copy wiki-data
COPY *.tar.gz /usr/local/tomcat/
RUN tar xvfz Demo_*.tar.gz -C /usr/local/tomcat/
RUN rm *.tar.gz
RUN cd webapps.dist && cp -R * ../webapps

CMD ["catalina.sh", "run"]
