FROM openjdk:8

EXPOSE 8087
ADD /var/lib/jenkins/workspace/docker-test/shopping-0.0.1-SNAPSHOT.jar /home/seed/thanh/workspace/shopping-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","shopping-0.0.1-SNAPSHOT.jar"]