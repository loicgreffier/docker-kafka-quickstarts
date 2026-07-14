FROM confluentinc/cp-kafka-connect:8.2.0

USER root

# Trust the corporate CA certificate.
COPY corporate-ca.pem /tmp/corporate-ca.pem
RUN keytool -importcert -noprompt -trustcacerts \
      -alias corporate-ca \
      -file /tmp/corporate-ca.pem \
      -keystore "/usr/lib/jvm/java-21-temurin-jre/lib/security/cacerts" \
      -storepass changeit && \
    cp /tmp/corporate-ca.pem /etc/pki/ca-trust/source/anchors/corporate-ca.pem && \
    update-ca-trust

RUN confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:10.9.6

USER appuser
