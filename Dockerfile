FROM mutterio/mini-java

RUN apk add  ca-certificates --update &&\
  rm -rf /var/cache/apk/*

WORKDIR /elasticmq

RUN wget https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-0.8.8.jar -O elasticmq-server.jar

ADD custom.conf /elasticmq/custom.conf
CMD ["java", "-Dconfig.file=/elasticmq/custom.conf", "-jar", "/elasticmq/elasticmq-server.jar"]
EXPOSE 80
