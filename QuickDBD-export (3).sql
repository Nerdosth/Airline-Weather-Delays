-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "state" (
    "state_id" serial   NOT NULL,
    "state" varchar(5)   NOT NULL,
    CONSTRAINT "pk_state" PRIMARY KEY (
        "state_id"
     )
);

CREATE TABLE "carrier" (
    "carrier_id" serial   NOT NULL,
    "carrier_code" varchar(5)   NOT NULL,
    "carrier_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_carrier" PRIMARY KEY (
        "carrier_id"
     )
);

CREATE TABLE "airport" (
    "airport_id" serial   NOT NULL,
    "airport_code" varchar(5)   NOT NULL,
    "airport_name" varchar(200)   NOT NULL,
    "state_id" int   NOT NULL,
    "city" varchar(200)   NOT NULL,
    CONSTRAINT "pk_airport" PRIMARY KEY (
        "airport_id"
     )
);

CREATE TABLE "delay_data" (
    "id" serial   NOT NULL,
    "year" int   NOT NULL,
    "month" int   NOT NULL,
    "carrier_id" int   NOT NULL,
    "airport_id" int   NOT NULL,
    "arrival_flights" float   NOT NULL,
    "weather_delay" float   NOT NULL,
    CONSTRAINT "pk_delay_data" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "airport" ADD CONSTRAINT "fk_airport_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "delay_data" ADD CONSTRAINT "fk_delay_data_carrier_id" FOREIGN KEY("carrier_id")
REFERENCES "carrier" ("carrier_id");

ALTER TABLE "delay_data" ADD CONSTRAINT "fk_delay_data_airport_id" FOREIGN KEY("airport_id")
REFERENCES "airport" ("airport_id");

