FROM alpine:latest 
LABEL maintainer="Petrik" 
#ENV http_proxy 'http://10.14.38.3:3128'
#ENV https_proxy 'http://10.14.38.3:3128' 
RUN apk add apache2 && sed -i 's/Listen 80/Listen 8080/g' /etc/apache2/httpd.conf 
RUN echo "ServerName localhost" >> /etc/apache2/httpd.conf 
COPY src/index.html /var/www/localhost/htdocs 
EXPOSE 8080 
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
