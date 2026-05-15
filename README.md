<div align="center">

<img src=".readme/kafka.svg" alt="Apache Kafka"/>
<img src=".readme/docker.svg" alt="Docker"/>

# Docker and Kafka Quickstarts

[![GitHub Stars](https://img.shields.io/github/stars/loicgreffier/docker-kafka-quickstarts?logo=github&style=for-the-badge)](https://github.com/loicgreffier/docker-kafka-quickstarts)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg?logo=apache&style=for-the-badge)](https://opensource.org/licenses/Apache-2.0)

[Base](#base) • [Kafka Connect](#kafka-connect) • [Schema Registry](#schema-registry)

Set of Docker Compose environments around Kafka.

</div>

## Prerequisites

- Docker

## Quickstarts

### AKHQ

| Module                                         | Description                                                                                   |
|------------------------------------------------|-----------------------------------------------------------------------------------------------|
| [Base](/akhq/base)                             | KRaft broker, AKHQ                                                                            |
| [Connect](/akhq/connect)                       | KRaft broker, AKHQ, Schema Registry, Kafka Connect                                            |
| [Schema Registry](/akhq/schema-registry)       | KRaft broker, AKHQ, Schema Registry                                                           |
| [ACLs SCRAM-SHA-512](/akhq/acls-scram-sha-512) | KRaft broker with ACLs and SCRAM-SHA-512 authentication, AKHQ, Schema Registry, Kafka Connect |

### Base

| Module        | Description                  |
|---------------|------------------------------|
| [Base](/base) | KRaft broker, Control Center |

### Kafka Connect

| Module                                    | Description                                                                                             |
|-------------------------------------------|---------------------------------------------------------------------------------------------------------|
| [ACLs SCRAM-SHA-512](/kafka-connect/base) | KRaft broker with ACLs and SCRAM-SHA-512 authentication, Schema Registry, Kafka Connect, Control Center |
| [Base](/kafka-connect/base)               | KRaft broker, Schema Registry, Kafka Connect, Control Center                                            |

### Schema Registry

| Module                                      | Description                                                                              |
|---------------------------------------------|------------------------------------------------------------------------------------------|
| [ACLs SCRAM-SHA-512](/schema-registry/base) | KRaft broker with ACLs and SCRAM-SHA-512 authentication, Schema Registry, Control Center |
| [Base](/schema-registry/base)               | KRaft broker, Schema Registry, Control Center                                            |