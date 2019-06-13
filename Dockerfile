FROM openjdk:8
COPY target/my-app-1.0-SNAPSHOT.jar  /usr/src/my-app-1.0-SNAPSHOT.jar

CMD java -cp /usr/src/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App
