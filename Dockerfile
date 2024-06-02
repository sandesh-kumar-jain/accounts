#Start with a base image containing Java runtime
FROM openjdk:21-jdk-slim

#Information around who maintains the image
MAINTAINER sandesh-jain.com

# Add the application's jar to the image
#COPY target/accounts-0.0.1-SNAPSHOT.jar accounts-0.0.1-SNAPSHOT.jar

ADD target/*.jar accounts.jar

EXPOSE 9080

#RUN mkdir /data
#VOLUME [ "/data" ]
# TODO - "Pre-" Create the database
# Database "/data/h2.test" not found, either pre-create it or allow remote
# database creation (not recommended in secure environments) [90149-200] 90149/90149 (Help)
# https://h2database.com/javadoc/org/h2/api/ErrorCode.html#c90149

# The -ifNotExists switch is not applicable to the console.
# http://www.h2database.com/html/tutorial.html?highlight=ifNotExists&search=ifnotexists#firstFound

# RUN "java -cp h2.jar org.h2.tools.Shell -url jdbc:h2:~/data/h2.test -user sa -password test"

#CMD [ "org.h2.tools.GUIConsole", "-webAllowOthers" ]

# execute the application
ENTRYPOINT ["java","-jar","accounts.jar","-web -webAllowOthers -tcp -tcpAllowOthers -browser"]