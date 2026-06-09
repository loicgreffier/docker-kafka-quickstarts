# Kafka Connect Datagen

This Docker Compose environment includes:

- KRaft broker, with ACLs and SCRAM-SHA-512 authentication
- Control Center
- Schema Registry
- Kafka Connect with the Datagen connector

## Prerequisites

- Docker

## Running the Environment

To start the environment, run:

```bash
docker-compose up -d
```