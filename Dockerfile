FROM openjdk:8
RUN mkdir /rsdata && yum upgrade -y && yum clean all -y && echo "America/Sao_Paulo" > /etc/timezone
WORKDIR /opt
COPY /target/form-service-0.0.1-SNAPSHOT.jar /opt/app.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-Xmx2G", "-Xms512M", "-jar", "/opt/app.jar", "-D", "FOREGROUND" ]
EXPOSE 8183
