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

| Module                                         | Description                                                                                |
|------------------------------------------------|--------------------------------------------------------------------------------------------|
| [Base](/akhq/base)                             | KRaft broker, AKHQ                                                                         |
| [Schema Registry](/akhq/schema-registry)       | KRaft broker, AKHQ, Schema Registry                                                        |
| [Connect](/akhq/kafka-connect)                       | KRaft broker, AKHQ, Schema Registry, Kafka Connect                                         |
| [ACLs SCRAM-SHA-512](/akhq/acls-scram-sha-512) | KRaft broker (ACLs and SCRAM-SHA-512 authentication), AKHQ, Schema Registry, Kafka Connect |

### Base

| Module        | Description                  |
|---------------|------------------------------|
| [Base](/base) | KRaft broker, Control Center |

### Kafka Connect

| Module                                                  | Description                                                                                                                 |
|---------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| [Base](/kafka-connect/base)                             | KRaft broker, Control Center, Schema Registry, Kafka Connect                                                                |
| [ACLs SCRAM-SHA-512](/kafka-connect/acls-scram-sha-512) | KRaft broker (ACLs and SCRAM-SHA-512 authentication), Control Center, Schema Registry, Kafka Connect                        |
| [Datagen](/kafka-connect/connectors/datagen)            | KRaft broker (ACLs and SCRAM-SHA-512 authentication), Control Center, Schema Registry, Kafka Connect with Datagen connector |
| [JDBC Sink](/kafka-connect/connectors/jdbc-sink)        | KRaft broker (ACLs and SCRAM-SHA-512 authentication), Control Center, Schema Registry, Kafka Connect with JDBC connector    |

### Schema Registry

| Module                                                    | Description                                                                           |
|-----------------------------------------------------------|---------------------------------------------------------------------------------------|
| [Base](/schema-registry/base)                             | KRaft broker, Control Center, Schema Registry                                         |
| [ACLs SCRAM-SHA-512](/schema-registry/acls-scram-sha-512) | KRaft broker (ACLs and SCRAM-SHA-512 authentication), Control Center, Schema Registry |
