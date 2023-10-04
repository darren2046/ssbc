FROM centos:7

WORKDIR /app

RUN yum install curl git -y; \
    git clone https://github.com/darren2046/ssbc; 

WORKDIR /app/ssbc 

RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash - ;\
    yum install -y nodejs gcc-c++ make -y ;\
    npm install -g pm2 ;

RUN cd spider && npm install && cd .. ;

COPY entrypoint.sh /app/entrypoint.sh

CMD ["bash", "/app/entrypoint.sh"]