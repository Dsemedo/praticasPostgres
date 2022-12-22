CREATE TABLE "students" (
	"id" serial PRIMARY KEY,
	"name" TEXT NOT NULL,
	"cpf" VARCHAR(11) NOT NULL UNIQUE
);


CREATE TABLE "classes" (
	"id" serial PRIMARY KEY,
	"code" TEXT NOT NULL
);



CREATE TABLE "classStudents" (
	"id" serial PRIMARY KEY,
	"studentId" INTEGER NOT NULL,
	"classId" INTEGER NOT NULL,
	"entrance" DATE NOT NULL,
	"exit" DATE
);



CREATE TABLE "projects" (
	"id" serial PRIMARY KEY,
	"name" TEXT NOT NULL,
	"note" TEXT NOT NULL,
	"moduleId" INTEGER NOT NULL,
	"studentId" INTEGER NOT NULL
);


CREATE TABLE "modules" (
	"Id" serial PRIMARY KEY,
	"name" TEXT NOT NULL
);

