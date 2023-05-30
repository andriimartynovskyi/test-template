FROM nginx:latest AS BUILD_IMAGE
RUN apt update && apt install maven -y

RUN git clone https://github.com/andriimartynovskyi/test-template.git

RUN cd test-template

RUN mvn install

RUN ./* /var/www/html
EXPOSE 80

