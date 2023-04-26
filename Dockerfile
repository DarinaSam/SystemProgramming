FROM rockylinux:9
COPY lab.sh .
RUN chmod ugo+x lab.sh
RUN yum install tree -y
CMD ./lab.sh
