# Kafka Connect JDBC Sink

This Docker Compose environment includes:

- KRaft broker, with ACLs and SCRAM-SHA-512 authentication
- Control Center
- Schema Registry
- Kafka Connect, built from a Dockerfile that downloads the JDBC connector
- PostgreSQL
- pgAdmin
- [Producer Avro Specific](https://github.com/loicgreffier/spring-boot-kafka-quickstarts/tree/main/kafka-producer-quickstarts/kafka-producer-avro-specific), producing `<String, KafkaUser>` records to the `USER_TOPIC` topic

## Prerequisites

- Docker

## Running the Environment

```bash
docker-compose up -d --build
```

Behind an SSL-inspecting proxy, place your corporate CA certificate at `dockerfile/corporate-ca.pem` before building.

## Creating the Connector

Send a `POST` request to `http://localhost:8083/connectors` with one of the following bodies.

### Insert with Record Value

Appends every record to the table, using the `id` field from the record value as the primary key.

```json
{
  "name": "jdbc-sink-user",
  "config": {
    "connector.class": "io.confluent.connect.jdbc.JdbcSinkConnector",
    "tasks.max": "1",
    "topics": "USER_TOPIC",
    "connection.url": "jdbc:postgresql://postgres:5432/postgres",
    "connection.user": "postgres",
    "connection.password": "changeme",
    "table.name.format": "kafka_user",
    "auto.create": "true",
    "auto.evolve": "true",
    "insert.mode": "insert",
    "pk.mode": "record_value",
    "pk.fields": "id",
    "key.converter": "org.apache.kafka.connect.storage.StringConverter",
    "value.converter": "io.confluent.connect.avro.AvroConverter",
    "value.converter.schema.registry.url": "http://schema-registry:8081"
  }
}
```

### Delete with Record Key

Enables deletes on tombstone records, using the record key as the primary key.

```json
{
  "name": "jdbc-sink-user",
  "config": {
    "connector.class": "io.confluent.connect.jdbc.JdbcSinkConnector",
    "tasks.max": "1",
    "topics": "USER_TOPIC",
    "connection.url": "jdbc:postgresql://postgres:5432/postgres",
    "connection.user": "postgres",
    "connection.password": "changeme",
    "table.name.format": "kafka_user",
    "auto.create": "true",
    "auto.evolve": "true",
    "insert.mode": "upsert",
    "delete.enabled": "true",
    "pk.mode": "record_key",
    "pk.fields": "id",
    "key.converter": "org.apache.kafka.connect.storage.StringConverter",
    "value.converter": "io.confluent.connect.avro.AvroConverter",
    "value.converter.schema.registry.url": "http://schema-registry:8081"
  }
}
```



