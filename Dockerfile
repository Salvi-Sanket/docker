FROM centos:latest
MAINTAINER sanket.r.salvi@gmail.com
RUN yum install -y httpd \
	zip \
	unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page272/infinite-loop.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip infinite-loop.zip
RUN cp -rvf 2117_infinite_loop/* .
RUN rm -rf 2117_infinite_loop infinite-loop.zip
CMD ["/usr/sbin/httpd",	"-D", "FOREGROUND"]
EXPOSE 80
