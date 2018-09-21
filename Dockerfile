FROM ubuntu:18.04

LABEL 	author="Diego Fernandez" \
		maintainer="di3g0bs0n@gmail.com" \
		version="1.0" \
		description="Ubuntu:18.04 based image with docxfactory libraries and python3 wrapper."


RUN apt-get update && apt-get install -y python3 \
	python3-dev build-essential libfontconfig1 libfontconfig1-dev libxt6 libxtst6 \
	&& ln /usr/bin/python3 /usr/bin/python

COPY opt/DocxFactoryLinux64.tar.gz /opt/DocxFactoryLinux64.tar.gz

RUN cd /opt/ && tar -zxf /opt/DocxFactoryLinux64.tar.gz && \
	echo /opt/DocxFactory/lib/ > /etc/ld.so.conf.d/DocxFactory.conf && \
	chmod 666 /etc/ld.so.conf.d/DocxFactory.conf && \
	ldconfig && \
	cd /opt/DocxFactory/python && python setup.py install && \
	rm -rf /opt/DocxFactory/ && rm /opt/DocxFactoryLinux64.tar.gz && cd -




ENTRYPOINT ["/bin/bash"]


