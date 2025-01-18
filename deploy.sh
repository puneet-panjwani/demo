./mvnw clean package -DskipTests
docker stop springboot-app
docker rm springboot-app
docker build -t demo .
docker run --name springboot-app -p 8080:8081 -d demo