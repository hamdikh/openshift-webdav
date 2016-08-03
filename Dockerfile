FROM openshift/base-centos7

RUN yum install -y centos-release-scl.noarch \
 && yum install -y httpd24 \
 && yum clean all

ADD dav.conf /opt/rh/httpd24/root/etc/httpd/conf/
USER 1000
CMD ["scl", "enable", "httpd24", "httpd -D FOREGROUND -f /opt/rh/httpd24/root/etc/httpd/conf/dav.conf"]

