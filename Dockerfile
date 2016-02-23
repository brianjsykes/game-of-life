FROM maven:3.2-jdk-7

RUN curl -fsSL https://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
  && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven

ENV MAVEN_HOME /usr/share/maven

VOLUME /root/.m2

CMD ["mvn"]

EXPOSE 9090

COPY . /usr/src/app
WORKDIR /usr/src/app
RUN /bin/bash -c "mvn clean install;cd gameoflife-web;nohup mvn jetty:run &"