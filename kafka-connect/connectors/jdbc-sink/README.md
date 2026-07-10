# Kafka Connect JDBC Sink

This Docker Compose environment includes:

- KRaft broker, with ACLs and SCRAM-SHA-512 authentication
- Control Center
- Schema Registry
- Kafka Connect, built from a Dockerfile that downloads the JDBC connector
- PostgreSQL, used as the sink database

## Prerequisites

- Docker

## Running the Environment

```bash
docker-compose up -d --build
```

Behind an SSL-inspecting proxy, place your corporate CA certificate at `dockerfile/corporate-ca.pem` before building.

