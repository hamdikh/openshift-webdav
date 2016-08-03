FROM openshift/base-centos7

RUN yum install -y httpd && yum clean all
ADD dav.conf /etc/httpd/conf
USER 1000
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND", "-f", "/etc/httpd/conf/dav.conf"]

