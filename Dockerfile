FROM openshift/base-centos7

RUN yum install -y centos-release-scl.noarch \
 && yum install -y httpd24 \
 && yum clean all

ADD dav.conf /etc/httpd/conf
USER 1000
CMD ["scl", "enable", "httpd24", "httpd -D FOREGROUND -f /etc/httpd/conf/dav.conf"]

