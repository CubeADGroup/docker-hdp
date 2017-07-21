FROM centos:6
ADD ambari.repo /etc/yum.repos.d/ambari.repo
ADD hdp.repo /etc/yum.repos.d/hdp.repo
ADD CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo
RUN yum clean all && yum makecache fast
RUN yum install -y sudo wget openssl-devel postgresql-jdbc mysql-connector-java unzip
RUN yum install -y ambari-agent
RUN yum install -y ambari-metrics-*
RUN yum install -y ambari-logsearch-*
RUN yum install -y hadoop*
RUN yum install -y zookeeper*
RUN yum install -y hive*
RUN yum install -y phoenix_*
RUN yum install -y ranger*
RUN yum install -y storm_*
RUN yum install -y kafka_*
RUN yum install -y pig_*
RUN yum install -y datafu_*
RUN yum install -y spark* livy*
RUN yum install -y zeppelin*
RUN yum install -y falcon_*
RUN yum install -y oozie_*
RUN yum install -y smartsense*
RUN yum install -y druid*
ADD OLD_PACKAGE_GPG_KEY /tmp/OLD_PACKAGE_GPG_KEY
RUN rpm --import /tmp/OLD_PACKAGE_GPG_KEY
RUN yum install -y superset*
RUN yum install -y lzo snappy-devel rpcbind
RUN rm /etc/yum.repos.d/hdp*.repo
ADD scripts/start.sh /start.sh
CMD /start.sh
