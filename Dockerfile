#docker image build -t microservice-user-management-spring .
FROM openjdk:15
EXPOSE 8000
ADD build/libs/microservice-user-management-0.0.1-SNAPSHOT.jar microservice-user-management-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=prod","/microservice-user-management-0.0.1-SNAPSHOT.jar"]
#ENTRYPOINT ["java","-jar","-Dspring.profiles.active=prod","/microservice-user-management-0.0.1-SNAPSHOT.jar"]