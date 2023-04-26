FROM rockylinux:9
COPY labc.sh .
RUN chmod ugo+x lab.sh
RUN yum install tree -y
CMD ./lab.sh
