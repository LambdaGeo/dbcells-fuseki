FROM stain/jena-fuseki

USER root

ENV PORT 3030

WORKDIR /fuseki


RUN mkdir -p configuration
COPY data/cells.ttl configuration/

# comento quando preciso fazer o backup dos dados
RUN mkdir -p databases  

#descompacta 
ADD data/cells.tar.gz databases  


#ENV FUSEKI_HOME /jena-fuseki

COPY shiro.ini $FUSEKI_HOME/shiro.ini
COPY entrypoint.sh /
RUN chmod 755 /entrypoint.sh




#WORKDIR $FUSEKI_HOME
EXPOSE $PORT
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/jena-fuseki/fuseki-server"]


