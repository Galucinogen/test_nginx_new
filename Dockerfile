FROM test11aa/test_nginx_new

MAINTAINER Ruslan Shevchenko "galucinogen@gmail.com"

RUN cd /home/test/test_nginx && git pull
RUN cp /home/test/test_nginx/conf/nginx.conf /opt/nginx/conf/nginx.conf && cp /home/test/test_nginx/html/index.html /opt/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
