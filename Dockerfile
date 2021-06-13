FROM jboss/keycloak:latest

ENV JAVA_OPTS="-Xmx300m -Djava.net.preferIPv4Stack=true -XX:+UseContainerSupport -Xss512k -XX:CICompilerCount=2"

COPY docker-entrypoint.sh /opt/jboss/tools

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

