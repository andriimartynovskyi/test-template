FROM nginx:latest AS BUILD_IMAGE
RUN apt update && apt install maven -y

RUN ls
RUN pwd

RUN mvn install

RUN ./* /var/www/html
EXPOSE 80

