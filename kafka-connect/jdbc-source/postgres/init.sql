CREATE TABLE IF NOT EXISTS kafka_user (
    id BIGSERIAL PRIMARY KEY,
    "firstName" VARCHAR(255),
    "lastName" VARCHAR(255),
    "birthDate" TIMESTAMP
);
