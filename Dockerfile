FROM tomcat:9.0.34
ADD gameoflife.war ${CATALINA_HOME}/webapps/
CMD ["catalina.sh","run"]
RUN sed -i 's/8080/9090/' /usr/local/tomcat/conf/server.xml
EXPOSE 9090
