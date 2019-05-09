FROM nginx:stable

RUN apt-get update && apt-get install -y \
     curl \
&& rm -rf /var/lib/apt/lists/*

ADD nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]