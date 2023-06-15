FROM maven:3.5-jdk-8  

WORKDIR /app

COPY . .

RUN mvn package


ENTRYPOINT java -cp target/deps/pngtastic-1.0.jar -jar target/image-web-optimizer-0.0.2-SNAPSHOT.jar in/ out/ 

