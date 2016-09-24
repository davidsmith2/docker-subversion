FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
	subversion \
	apache2 \
	libapache2-svn \
	apache2-utils \
	nano

RUN addgroup subversion
RUN adduser www-data subversion

RUN mkdir -p /home/svn/ && cd /home/svn && mkdir myproject && svnadmin create /home/svn/myproject

RUN chown -R www-data:subversion /home/svn/myproject && \
	chmod -R g+rws /home/svn/myproject && \
	chmod -R g+rws /home/svn/myproject

COPY ./myproject.conf /etc/apache2/sites-available/

RUN a2ensite myproject

EXPOSE 80

ENTRYPOINT service apache2 start && bash
