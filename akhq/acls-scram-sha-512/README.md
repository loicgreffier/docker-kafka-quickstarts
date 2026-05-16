# AKHQ ACLs SCRAM-SHA-512

This Docker Compose environment includes:

- KRaft broker, with ACLs and SCRAM-SHA-512 authentication
- AKHQ, with required configuration
- Schema Registry
- Kafka Connect

## Prerequisites

- Docker

## Running the Environment

To start the environment, run:

```bash
docker-compose up -d
```