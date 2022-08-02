#Download base image ubuntu 20.04
FROM openjdk:16-jdk-alpine
MAINTAINER saprosonto <https://github.com/saprosontorontomento>

# Update Ubuntu Software repository
RUN apk update
RUN apk add git


RUN git clone https://saprosonto:testpassword@github.com/saprosontorontomento/stub-jolokia.git
RUN cd stub-jolokia

EXPOSE 8008

CMD ["java" , "-javaagent:/stub-jolokia/jolokia-jvm-1.7.1-agent.jar=port=8778,host=0.0.0.0" , "-jar" , "/stub-jolokia/mock11java.jar"]
