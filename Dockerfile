FROM nginx

MAINTAINER Ruslan Shevchenko "galucinogen@gmail.com"

RUN cd /home/test && git clone http://github.com/Galucinogen/test_nginx.git
RUN cp /home/test/test_nginx/conf/nginx.conf /opt/nginx/conf/nginx.conf && cp /home/test/test_nginx/html/index.html /opt/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
