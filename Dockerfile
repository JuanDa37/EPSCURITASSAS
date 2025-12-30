FROM openjdk:17
VOLUME /tmp
ENV IMG_PATH=/img
EXPOSE 8094
RUN mkdir -p /img
COPY /target/proyectonu1-1.jar /appC.jar
COPY /src/main/resources/application.properties /src/main/resources/application.properties
ENTRYPOINT ["java","-jar","/appC.jar"]