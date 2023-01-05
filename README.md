# Spring Boot com Docker

Configurações básicas do SpringBoot com Docker

![spring](https://github.com/JaimeDevS/spring-boot-docker/blob/master/sd.png) 

## Pré-requisitos

* [Docker](https://hub.docker.com/ "Docker hub")  - É necessário criar uma conta no repositório do docker 
* [Docker](https://www.docker.com/products/docker-desktop/ "Docker hub")  - Docker desktop para criação dos serviços docker 
* [JDK](https://www.oracle.com/br/java/technologies/downloads/#java17) - JDK necessário para executar a aplicação
* [Spring Tools](https://spring.io/tools) - Ferramenta para o desenvolvimento

## Começando
- criar o build da aplicação
```
./mvnw clean package 
```
- criar um arquivo [Dockerfile](https://github.com/JaimeDevS/spring-boot-docker) sem extensão na raiz do projeto
- dentro do DockerHub procurar openjdk:11 
##### OBS. fazer o comando para checar se é a mesma versão
```
java -version 
```
- definir o diretório de trabalho do container - eu defini  /app 
```
  COPY . /target/springdocker-0.0.1-SNAPSHOT.jar ou COPY ./target/*.jar ./application.jar
```
- informar uma porta 
```
EXPOSE 8080
ENTRYPOINT java -jar springdocker-0.0.1-SNAPSHOT.jar ou java -jar application.jar
```
- no CMD usar o comando docker build para criar o bild da aplicação
##### OBS. esse ponto (.) logo após jaimemendes/springdocker é necessário 
```
docker build -t jaimemendes/springdocker . 
```
```
docker images | para ver as imangens criadas
```
```
docker run --name springdockercontainer -p 8081:8080 jaimemendes/springdocker  
```
```
docker ps | ver os processos do container rodando
```
```
docker stop NOME DO CONTAINER
```
```
docker start NOME DO CONTAINER
```

## SUBINDO A IMAGE PARA DOCKERHUB
```
docker login
```
```
docker push NOME DA IMAGEM
```
