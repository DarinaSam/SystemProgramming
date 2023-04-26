FROM rockylinux
COPY labc.sh .
RUN chmod ugo+x lab.sh
RUN yum install tree -y
CMD ./lab.sh
