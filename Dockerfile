FROM centos:latest

RUN yum -y install epel-release && \
    yum -y install git \
    	python-pip \
	python-gevent && \
    pip install telnetsrv

RUN git clone https://github.com/CymmetriaResearch/MTPot.git

EXPOSE 21

ENTRYPOINT ["/MTPot/MTPot.py", "/MTPot/mirai_conf.json"]