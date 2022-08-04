# Docker_Settings

# Dockerfile
```
spring + maven restful webservice + jolokia 
port:8008

FROM openjdk:16-jdk-alpine

MAINTAINER saprosonto <https://github.com/saprosontorontomento>

RUN apk update
RUN apk add git


RUN git clone https://github.com/saprosontorontomento/stub-jolokia.git
RUN cd stub-jolokia

EXPOSE 8008

CMD ["java" , "-jar" , "/stub-jolokia/mock11java.jar"]
CMD ["nohup" , "java" , "-jar" , "/stub-jolokia/mock11java.jar" , "&"]
CMD ["java" , "-javaagent:/stub-jolokia/jolokia-jvm-1.7.1-agent.jar=port=8778,host=0.0.0.0" , "-jar" , "/stub-jolokia/mock11java.jar"] 
```
# docker-compose
```
PostgreSQL + postgres-exporter + prometheus + grafana
```
# prometheus settings
```
prometheus port:9090
postgres-exporter port:9187
```
