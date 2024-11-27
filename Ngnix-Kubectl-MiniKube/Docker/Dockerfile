FROM nginx:1.21

RUN apt-get update && apt-get install -y wget unzip && apt-get clean

RUN wget https://www.tooplate.com/zip-templates/2134_gotto_job.zip -O /tmp/site.zip

RUN unzip /tmp/site.zip -d /tmp/ && mv /tmp/2134_gotto_job/* /usr/share/nginx/html/ && rm -rf /tmp/site.zip /tmp/2134_gotto_job


WORKDIR /usr/share/nginx/html


EXPOSE 80
