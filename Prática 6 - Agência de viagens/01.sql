CREATE TABLE "companies" (
	"id" serial NOT NULL PRIMARY KEY,
	"name" TEXT NOT NULL,
	"codeCompanies" varchar(3) NOT NULL UNIQUE
)


CREATE TABLE "flights" (
	"id" serial NOT NULL PRIMARY KEY,
	"codeFlight" varchar(7) NOT NULL UNIQUE,
	"idAirportOrigin" TEXT NOT NULL UNIQUE,
	"idAirportDeparture" TEXT NOT NULL UNIQUE
) 


CREATE TABLE "airports" (
	"id" serial NOT NULL PRIMARY KEY,
	"codeAirport" varchar(3) NOT NULL UNIQUE,
	"nameAirport" TEXT NOT NULL UNIQUE
) 


CREATE TABLE "timeFlights" (
	"id" serial NOT NULL PRIMARY KEY,
	"arrivalTime" TIMESTAMP NOT NULL,
	"departureTime" TIMESTAMP NOT NULL
)










