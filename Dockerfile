FROM ubuntu:latest
RUN apt-get update && apt-get install -y -q nginx
EXPOSE 80
ONBUILD ADD website.tar /var/www/html/
CMD ["nginx", "-g", "daemon off;"]
