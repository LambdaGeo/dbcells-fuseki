FROM stain/jena-fuseki

USER root

ENV PORT 3030

WORKDIR /fuseki


#RUN mkdir -p configuration
#COPY data/ds.ttl /fuseki/configuration/ds.ttl
#WORKDIR /fuseki/databases
#ADD data/ds.tar.gz /fuseki/databases

ENV FUSEKI_HOME /jena-fuseki

COPY shiro.ini $FUSEKI_HOME/shiro.ini
COPY entrypoint.sh /
RUN chmod 755 /entrypoint.sh




#WORKDIR $FUSEKI_HOME
EXPOSE $PORT
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/jena-fuseki/fuseki-server"]


