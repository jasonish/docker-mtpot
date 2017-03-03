FROM fedora:25

RUN dnf -y install git \
    	python-pip \
	python-gevent && \
    pip install telnetsrv

RUN git clone https://github.com/CymmetriaResearch/MTPot.git

EXPOSE 23

ENTRYPOINT ["/MTPot/MTPot.py", "/MTPot/mirai_conf.json"]