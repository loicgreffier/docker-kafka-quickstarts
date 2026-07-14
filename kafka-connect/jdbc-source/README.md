# Kafka Connect JDBC Source

This Docker Compose environment includes:

- KRaft broker, with ACLs and SCRAM-SHA-512 authentication
- Control Center
- Schema Registry
- Kafka Connect, built from a Dockerfile that downloads the JDBC connector
- PostgreSQL, seeded with a `kafka_user` table
- pgAdmin

## Prerequisites

- Docker

## Running the Environment

```bash
docker-compose up -d --build
```

Behind an SSL-inspecting proxy, place your corporate CA certificate at `dockerfile/corporate-ca.pem` before building.

## Creating the Connector

Send a `POST` request to `http://localhost:8083/connectors` with one of the following bodies.

### Incrementing

Tracks the `id` column to produce newly inserted rows.

```json
{
  "name": "jdbc-source-user",
  "config": {
    "connector.class": "io.confluent.connect.jdbc.JdbcSourceConnector",
    "tasks.max": "1",
    "connection.url": "jdbc:postgresql://postgres:5432/postgres",
    "connection.user": "postgres",
    "connection.password": "changeme",
    "table.whitelist": "kafka_user",
    "mode": "incrementing",
    "incrementing.column.name": "id",
    "topic.prefix": "abc-",
    "transforms": "createKey,extractKey",
    "transforms.createKey.type": "org.apache.kafka.connect.transforms.ValueToKey",
    "transforms.createKey.fields": "id",
    "transforms.extractKey.type": "org.apache.kafka.connect.transforms.ExtractField$Key",
    "transforms.extractKey.field": "id",
    "key.converter": "org.apache.kafka.connect.storage.StringConverter",
    "value.converter": "io.confluent.connect.avro.AvroConverter",
    "value.converter.schema.registry.url": "http://schema-registry:8081"
  }
}
```

## Populating the Table

Insert rows into the `kafka_user` table to produce them to the topic.

```sql
INSERT INTO kafka_user ("firstName", "lastName", "birthDate") VALUES ('Homer', 'Simpson', '1956-05-12 00:00:00');
INSERT INTO kafka_user ("firstName", "lastName", "birthDate") VALUES ('Marge', 'Simpson', '1959-10-01 00:00:00');
INSERT INTO kafka_user ("firstName", "lastName", "birthDate") VALUES ('Bart', 'Simpson', '1979-02-23 00:00:00');
INSERT INTO kafka_user ("firstName", "lastName", "birthDate") VALUES ('Lisa', 'Simpson', '1981-05-09 00:00:00');
INSERT INTO kafka_user ("firstName", "lastName", "birthDate") VALUES ('Maggie', 'Simpson', '1988-01-12 00:00:00');
```
