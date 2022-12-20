CREATE TABLE "states" (
"id" SERIAL NOT NULL PRIMARY KEY,
"name" VARCHAR(30) UNIQUE
)

CREATE TABLE "cities" (
"id" SERIAL NOT NULL PRIMARY KEY,
"name" VARCHAR(30) UNIQUE, 
"stateId" INTEGER references states(id)
)

CREATE TABLE "customers" (
"id" SERIAL NOT NULL PRIMARY KEY, 
"fullName" VARCHAR(200) NOT NULL,
"cpf" VARCHAR(11) NOT NULL UNIQUE,
"email" VARCHAR(100) NOT NULL UNIQUE,
"password" VARCHAR(20) NOT NULL,
)

CREATE TABLE "customerAddresses" (
"id" SERIAL NOT NULL PRIMARY KEY,
"customerId" INTEGER UNIQUE NOT NULL REFERENCES customers(id),
"street" VARCHAR(50) NOT NULL,
"number" VARCHAR(8) NOT NULL,
"complement" VARCHAR(50) NOT NULL, 
"postalCode" VARCHAR(8) NOT NULL,
"cityId" INTEGER NOT NULL REFERENCES cities(id)
)

CREATE TYPE phoneTypes AS ENUM ('landline', 'mobile')

CREATE TABLE "customerPhones" (
"id" SERIAL NOT NULL PRIMARY KEY,
"customerId" INTEGER NOT NULL REFERENCES customers(id),
"number" VARCHAR(11) NOT NULL UNIQUE,
"type" phoneTypes
)

CREATE TABLE "bankAccount" (
"id" SERIAL NOT NULL PRIMARY KEY,
"customerId" INTEGER NOT NULL REFERENCES customers(id),
"accountNumber" BIGINT NOT NULL UNIQUE,
"agency" INTEGER NOT NULL, 
"openDate" TIMESTAMP DEFAULT NOW(),
"closeDate" TIMESTAMP DEFAULT NULL
)

CREATE TYPE transactionsType AS ENUM ('deposit', 'withdraw')

CREATE TABLE "transactions" (
"id" SERIAL NOT NULL PRIMARY KEY,
"bankAccountId" INTEGER NOT NULL REFERENCES bankAccount(id),
"amount" INTEGER NOT NULL,
"type" transactionsType, 
"time" TIMESTAMP DEFAULT NOW(),
"description" VARCHAR(100),
"canceled" BOOLEAN NOT NULL DEFAULT FALSE
)

CREATE TABLE "creditCards" (
"id" SERIAL NOT NULL PRIMARY KEY,
"bankAccountId" INTEGER NOT NULL REFERENCES bankAccount(id),
"name" TEXT NOT NULL REFERENCES customers(fullName),
"number" BIGINT NOT NULL, 
"securityCode" INTEGER NOT NULL,
"expirationMonth" DATE NOT NULL,
"expirationYear" DATE NOT NULL,
"password" VARCHAR(20) NOT NULL,
"limit" INTEGER NOT NULL
)