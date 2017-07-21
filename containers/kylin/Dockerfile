FROM hdp/worker
RUN cd /tmp && wget http://172.17.0.1:8000/apache-kylin-2.0.0-bin-hbase1x.tar.gz && tar xf apache-kylin-2.0.0-bin-hbase1x.tar.gz -C /usr
RUN mkdir -p /usr/jdk64 && cd /tmp && wget http://172.17.0.1:8000/jdk-8u112-linux-x64.tar.gz && tar xf jdk-8u112-linux-x64.tar.gz -C /usr/jdk64
ENV JAVA_HOME=/usr/jdk64/jdk1.8.0_112/
ENV KYLIN_HOME=/usr/apache-kylin-2.0.0-bin/
ENV HIVE_CONF=/usr/hdp/current/hive-client/conf
ENV HCAT_HOME=/usr/hdp/current/hive-webhcat/
EXPOSE 7070
ADD start.sh /start.sh
CMD /start.sh
