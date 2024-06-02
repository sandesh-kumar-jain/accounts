# Getting Started

### Reference Documentation
For further reference, please consider the following sections:

### Swagger
	http://localhost:9080/swagger-ui/index.html
	http://localhost:9080/v3/api-docs
### Curl
	Get :- curl -X GET http://localhost:9080/api/fetch?mobileNumber=1234567890 -H accept: application/json

### H2-Console url 
	http://localhost:9080/h2-console
	http://localhost:9080/h2-console/login.jsp
		JDBC URL:- jdbc:h2:mem:testdb

### Actuator
	http://localhost:9080/actuator
	http://localhost:9080/actuator/health

## Pre-requisite for the course
- Good understanding on Java and Spring concepts
- Basic understanding on SpringBoot & REST services is a bonus but not mandatory
- Interest to learn and explore about Microservices

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/3.2.6/maven-plugin/reference/html/)
* [Create an OCI image](https://docs.spring.io/spring-boot/docs/3.2.6/maven-plugin/reference/html/#build-image)
* [Spring Reactive Web](https://docs.spring.io/spring-boot/docs/3.2.6/reference/htmlsingle/index.html#web.reactive)
* [Azure Cosmos DB](https://microsoft.github.io/spring-cloud-azure/current/reference/html/index.html#spring-data-support)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a Reactive RESTful Web Service](https://spring.io/guides/gs/reactive-rest-service/)
* [How to use Spring Boot Starter with Azure Cosmos DB SQL API](https://aka.ms/spring/msdocs/cosmos)

### Additional Links
These additional references should also help you:

* [Azure Cosmos DB Sample](https://aka.ms/spring/samples/latest/cosmos)


# Important Links
- Spring Boot - https://spring.io/projects/spring-boot
- Create SpringBoot project - https://start.spring.io
- DTO pattern blog - https://martinfowler.com/eaaCatalog/dataTransferObject.html
- Model Mapper - http://modelmapper.org/
- Map Struct - https://mapstruct.org/
- Spring Doc - https://springdoc.org/
- Open API - https://www.openapis.org/
- Lucidchart Blog - https://www.lucidchart.com/blog/ddd-event-storming
- Docker website - https://www.docker.com
- Docker hub website - https://hub.docker.com
- Buildpacks website - https://buildpacks.io
- Google Jib website - https://github.com/GoogleContainerTools/jib
- Docker compose website - https://docs.docker.com/compose/
- Twelve-Factor methodology - https://12factor.net
- Beyond the Twelve-Factor App book - https://www.oreilly.com/library/view/beyond-the-twelve-factor/9781492042631/
- Spring Cloud website - https://spring.io/projects/spring-cloud
- Spring Cloud Config website - https://spring.io/projects/spring-cloud-config
- Spring Cloud Bus website - https://spring.io/projects/spring-cloud-bus
- RabbitMQ website - https://www.rabbitmq.com
- Hookdeck website- https://hookdeck.com
- Spring Cloud Netflix website - https://spring.io/projects/spring-cloud-netflix
- Spring Cloud OpenFeign - https://spring.io/projects/spring-cloud-openfeign
- Netflix Blog - https://netflixtechblog.com/netflix-oss-and-spring-boot-coming-full-circle-4855947713a0
- Resilience4j website - https://resilience4j.readme.io
- Spring Cloud Gateway website - https://spring.io/projects/spring-cloud-gateway
- Stripe RateLimitter pattern blog - https://stripe.com/blog/rate-limiters
- Apache Benchmark website - https://httpd.apache.org
- Grafana website - https://grafana.com
- Grafana Loki setup - https://grafana.com/docs/loki/latest/get-started/quick-start/
- Micrometer website - https://micrometer.io
- Prometheus website - https://prometheus.io/
- Grafana Dashboards - https://grafana.com/grafana/dashboards/
- OpenTelemetry website - https://opentelemetry.io/
- OpenTelemetry automatic instrumentation - https://opentelemetry.io/docs/instrumentation/java/automatic/
- Keycloak website - https://www.keycloak.org/
- Apache Kafka website - https://kafka.apache.org
- Docker compose file for Kafka - https://github.com/bitnami/containers/blob/main/bitnami/kafka/docker-compose.yml
- Local Kubernetes Cluster with Docker Desktop - https://docs.docker.com/desktop/kubernetes/
- Kubernetes Dashboard - https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/
- Helm website - https://helm.sh
- Chocolatey website - https://chocolatey.org/
- Bitnami Helm charts GitHub repo - https://github.com/bitnami/charts
- Spring Cloud Kubernetes website - https://spring.io/projects/spring-cloud-kubernetes
- Spring Cloud Kubernetes Blog - https://spring.io/blog/2021/10/26/new-features-for-spring-cloud-kubernetes-in-spring-cloud-2021-0-0-m3
- GCP website - https://cloud.google.com
- GCP SDK installation - https://cloud.google.com/sdk/docs/install
- Kubernetes Ingress - https://kubernetes.io/docs/concepts/services-networking/ingress/
- Ingress Controllers - https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/
- Istio (Service mesh) - https://istio.io


## Maven Commands used in the course

| Maven Command                              | Description                                                        |
|--------------------------------------------|--------------------------------------------------------------------|
| "mvn clean install -Dmaven.test.skip=true" | To generate a jar inside target folder                             |
| "mvn spring-boot:run"                      | To start a springboot maven project                                |
| "mvn spring-boot:build-image"              | To generate a docker image using Buildpacks. No need of Dockerfile |
| "mvn compile jib:dockerBuild"              | To generate a docker image using Google Jib. No need of Dockerfile |

## Docker Commands used in the course

| Docker Command                                                                                                                | Description                                                       |
|-------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
| "docker build . -t sandesh/accounts:s4"                                                                                       | To generate a docker image based on a Dockerfile                  |
| "docker run  -p 8080:8080 sandesh/accounts:s4"                                                                                | To start a docker container based on a given image                |
| "docker images"                                                                                                               | To list all the docker images present in the Docker server        |
| "docker image inspect image-id"                                                                                               | To display detailed image information for a given image id        |
| "docker image rm image-id"                                                                                                    | To remove one or more images for a given image ids                |
| "docker image push docker.io/sandesh/accounts:s4"                                                                             | To push an image or a repository to a registry                    |
| "docker image pull docker.io/sandesh/accounts:s4"                                                                             | To pull an image or a repository from a registry                  |
| "docker ps"                                                                                                                   | To show all running containers                                    |
| "docker ps -a"                                                                                                                | To show all containers including running and stopped              |
| "docker container start container-id"                                                                                         | To start one or more stopped containers                           |
| "docker container pause container-id"                                                                                         | To pause all processes within one or more containers              |
| "docker container unpause container-id"                                                                                       | To unpause all processes within one or more containers            |
| "docker container stop container-id"                                                                                          | To stop one or more running containers                            |
| "docker container kill container-id"                                                                                          | To kill one or more running containers instantly                  |
| "docker container restart container-id"                                                                                       | To restart one or more containers                                 |
| "docker container inspect container-id"                                                                                       | To inspect all the details for a given container id               |
| "docker container logs container-id"                                                                                          | To fetch the logs of a given container id                         |
| "docker container logs -f container-id"                                                                                       | To follow log output of a given container id                      |
| "docker container rm container-id"                                                                                            | To remove one or more containers based on container ids           |
| "docker container prune"                                                                                                      | To remove all stopped containers                                  |
| "docker compose up"                                                                                                           | To create and start containers based on given docker compose file |
| "docker compose down"                                                                                                         | To stop and remove containers                                     |
| "docker compose start"                                                                                                        | To start containers based on given docker compose file            |
| "docker compose down"                                                                                                         | To stop the running containers                                    |
| "docker run -p 3306:3306 --name accountsdb -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=accountsdb -d mysql"                 | To create a MySQL DB container                                    |
| "docker run -p 6379:6379 --name sandeshredis -d redis"                                                                        | To create a Redis Container                                       |
| "docker run -p 8080:8080 -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=admin quay.io/keycloak/keycloak:22.0.3 start-dev" | To create Keycloak Container                                      |



### Reference Documentation
For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/3.2.5/maven-plugin/reference/html/)
* [Create an OCI image](https://docs.spring.io/spring-boot/docs/3.2.5/maven-plugin/reference/html/#build-image)
* [Spring Boot DevTools](https://docs.spring.io/spring-boot/docs/3.2.5/reference/htmlsingle/index.html#using.devtools)
* [Spring Web](https://docs.spring.io/spring-boot/docs/3.2.5/reference/htmlsingle/index.html#web)
* [Spring Data JPA](https://docs.spring.io/spring-boot/docs/3.2.5/reference/htmlsingle/index.html#data.sql.jpa-and-spring-data)
* [Spring Boot Actuator](https://docs.spring.io/spring-boot/docs/3.2.5/reference/htmlsingle/index.html#actuator)
* [Validation](https://docs.spring.io/spring-boot/docs/3.2.5/reference/htmlsingle/index.html#io.validation)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/rest/)
* [Accessing Data with JPA](https://spring.io/guides/gs/accessing-data-jpa/)
* [Building a RESTful Web Service with Spring Boot Actuator](https://spring.io/guides/gs/actuator-service/)
* [Validation](https://spring.io/guides/gs/validating-form-input/)
