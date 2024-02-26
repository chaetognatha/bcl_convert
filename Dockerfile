FROM centos:7

WORKDIR /app

LABEL maintainer="Mattis Knulst @chaetognatha" \
        description="Docker image for bcl-convert" \
        version="4.2.7-2.el7"

RUN yum update -y && yum install -y wget

ENV RPM="https://s3.amazonaws.com/webdata.illumina.com/downloads/software/bcl-convert/bcl-convert-4.2.7-2.el7.x86_64.rpm"

RUN wget ${RPM} && \
    yum localinstall -y bcl-convert-4.2.7-2.el7.x86_64.rpm && \
    rm -f bcl-convert-4.2.7-2.el7.x86_64.rpm

CMD ["/bin/bash"]