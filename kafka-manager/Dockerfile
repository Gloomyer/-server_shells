FROM centos:8

ENV ZK_HOSTS=172.172.0.50:2181
ENV KM_VERSION=3.0.0.5

RUN mkdir -p tmp && cd tmp
RUN yum -y install wget vim gcc
RUN wget https://github.com/yahoo/CMAK/archive/${KM_VERSION}.zip && unzip ${KM_VERSION}.zip
RUN cd /tmp/CMAK-${KM_VERSION}
RUN .\sbt clean dist
RUN unzip  -d / ./target/universal/CMAK-${KM_VERSION}.zip && \
    rm -fr /tmp/${KM_VERSION} /tmp/CMAK-${KM_VERSION}

WORKDIR /CMAK--${KM_VERSION}

EXPOSE 9000
ENTRYPOINT ["./bin/CMAK","-Dconfig.file=conf/application.conf"]