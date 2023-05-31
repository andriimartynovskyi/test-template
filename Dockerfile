FROM nginx:latest AS BUILD_IMAGE
RUN apt update && apt install maven -y
RUN apt install git -y 
RUN git clone https://github.com/andriimartynovskyi/test-template

RUN cd test-template
RUN ls
RUN mvn install

RUN ./* /var/www/html
EXPOSE 80

