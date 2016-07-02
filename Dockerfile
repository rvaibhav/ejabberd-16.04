FROM ubuntu:14.04

RUN apt-get update && apt-get install -y wget
RUN wget https://www.process-one.net/downloads/ejabberd/16.04/ejabberd_16.04-0_amd64.deb

RUN dpkg -i ejabberd_16.04-0_amd64.deb

RUN apt-get install -y -f

COPY ejabberd.yml /opt/ejabberd-16.04/conf/ejabberd.yml
COPY run.sh /run.sh
RUN chmod 755 /run.sh

EXPOSE 5280

ENTRYPOINT ["/run.sh"]
