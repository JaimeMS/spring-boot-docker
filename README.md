# spring-boot-docker
Configurações do docker com SpringBoot


EXEMPLO COM APLICAÇÃO SPRNG BOOT - MAVEN

Obs. necessário criar uma conta no repositório do docker
https://hub.docker.com/

DOCKER
- criar o build da aplicação - ./mvnw clean package 
- criar um arquivo Dockerfile sem extensão na raiz do projeto
- dentro do DockerHub procurar openjdk:11 | OBS. fazer o comando java -version para checar se é a mesma versão
- definir o diretório de trabalho do container - eu defini  /app 
- COPY . /target/springdocker-0.0.1-SNAPSHOT.jar ou COPY ./target/*.jar ./application.jar
- informar uma porta EXPOSE 8080
- ENTRYPOINT java -jar springdocker-0.0.1-SNAPSHOT.jar ou java -jar application.jar

- no CMD usar o comando docker build para criar o bild da aplicação
- docker build -t jaimemendes/springdocker . | OBS. esse ponto (.) logo após jaimemendes/springdocker é necessário 
- docker images | para ver as imangens criadas
- docker run --name springdockercontainer -p 8081:8080 jaimemendes/springdocker  |executar imagens
- docker ps | ver os processos do container rodando
- docker stop NOME DO CONTAINER
- docker start NOME DO CONTAINER

SUBINDO A IMAGE PARA DOCKERHUB
- docker login
- docker push NOME DA IMAGEM

DOCKER LABS
https://labs.play-with-docker.com/
- criar uma nova instância de máquina virtual
- docker run  --name mydockerimage -p 5000:8080 jaimemendes/springdocker

Dica profissional
Você pode enviar uma nova imagem por push para esse repositório usando a CLI

docker tag local-image:tagname new-repo:tagname docker push new-repo:tagname


https://hub.docker.com/_/openjdk

link para documentação do docker:  https://docs.docker.com/
