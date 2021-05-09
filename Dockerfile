FROM tomcat:8
LABEL author="surya"
USER devops
ARG url=https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war
ADD $url /usr/local/tomcat/webapps/
EXPOSE 8080
WORKDIR /home/devops/
ENV tomcatversion=8
CMD [ "catalina.sh", "run" ]
