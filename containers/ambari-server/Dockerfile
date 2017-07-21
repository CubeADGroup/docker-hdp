FROM centos:6
ADD ambari.repo /etc/yum.repos.d/ambari.repo
ADD CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo
RUN yum clean all && yum makecache fast
RUN yum install -y wget sudo net-tools
RUN yum install -y ambari-server postgresql-jdbc
RUN wget -O /var/lib/ambari-server/resources/jdk-8u112-linux-x64.tar.gz http://172.17.0.1:8000/jdk-8u112-linux-x64.tar.gz
RUN ambari-server setup --database=postgres --databasehost=postgres.dev --databaseport=5432 --databasename=ambari --postgresschema=ambari  --databaseusername=ambari --databasepassword=dev --silent
RUN ambari-server setup --jdbc-db postgres --jdbc-driver=/usr/share/java/postgresql-jdbc.jar
ADD scripts/start.sh /start.sh
CMD /start.sh
