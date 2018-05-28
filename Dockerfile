FROM centos:7

MAINTAINER Chen Gang<372763861@qq.com>

ADD bcdn /bin/bcdn

RUN yum install -y wget; \
	ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime; \
	cd /root; \
	wget -qO- www.lu8.win/downloads/other/bcdn_docker|bash; \
	chmod 777 /bin/bcdn

CMD ["bcdn"]
