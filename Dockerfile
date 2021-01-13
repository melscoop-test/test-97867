FROM centos:centos7
MAINTAINER whoknows

RUN yum update -q -y

# Download and install wkhtmltopdf
RUN yum install -y https://www.itzgeek.com/msttcore-fonts-2.0-3.noarch.rpm
RUN yum install -y https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.2.1/wkhtmltox-0.12.2.1_linux-centos6-amd64.rpm
RUN yum clean all

CMD [ "wkhtmltopdf" ]
