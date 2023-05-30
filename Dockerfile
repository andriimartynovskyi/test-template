FROM nginx:latest AS BUILD_IMAGE
RUN apt update && apt install maven -y

cd /var/lib/jenkins/workspace/pipeline

RUN mvn install

RUN ./* /var/www/html
EXPOSE 80

