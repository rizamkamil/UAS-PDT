FROM redis/redis-stack-server:latest as rss

COPY create_cluster.sh /create_cluster.sh
RUN ls -R /opt/redis-stack
RUN chmod a+x /create_cluster.sh

ENTRYPOINT [ "/create_cluster.sh"]
