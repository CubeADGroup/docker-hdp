cd $KYLIN_HOME && ./bin/kylin.sh start
while true; do
  sleep 3
  tail -f /usr/apache-kylin-2.0.0-bin/logs/kylin.log
done
