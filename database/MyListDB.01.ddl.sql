-- DROP SCHEMA public;

CREATE SCHEMA public AUTHORIZATION postgres;

-- DROP SEQUENCE public."catalog_Id_seq";

CREATE SEQUENCE public."catalog_Id_seq"
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 2
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE public.catalog_seq;

CREATE SEQUENCE public.catalog_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;-- public."catalog" definition

-- Drop table

-- DROP TABLE public."catalog";

CREATE TABLE public."catalog" (
	id int4 NOT NULL GENERATED ALWAYS AS IDENTITY,
	"name" varchar(100) NOT NULL,
	CONSTRAINT catalog_pkey PRIMARY KEY (id)
);


-- public."datatype" definition

-- Drop table

-- DROP TABLE public."datatype";

CREATE TABLE public."datatype" (
	"Id" int4 NOT NULL,
	"Name" varchar(50) NOT NULL,
	CONSTRAINT datatype_pkey PRIMARY KEY ("Id")
);


-- public.item definition

-- Drop table

-- DROP TABLE public.item;

CREATE TABLE public.item (
	"CatalogId" int4 NOT NULL,
	"ItemId" int4 NOT NULL,
	"FieldChar01" varchar(1000) NULL,
	"FieldChar02" varchar(1000) NULL,
	"FieldInteger01" int4 NULL,
	"FieldoInteger02" int4 NULL,
	"FieldDecimal01" float8 NULL,
	"FieldDecimal02" float8 NULL,
	"FieldBoolean01" bool NULL,
	"FieldBoolean02" bool NULL,
	"FieldDatetime01" date NULL,
	"FieldDatetime02" date NULL,
	CONSTRAINT item_pkey PRIMARY KEY ("CatalogId", "ItemId"),
	CONSTRAINT item_catalog FOREIGN KEY ("CatalogId") REFERENCES public."catalog"(id)
);


-- public.property definition

-- Drop table

-- DROP TABLE public.property;

CREATE TABLE public.property (
	"CatalogId" int4 NOT NULL,
	"PropertySeq" int4 NOT NULL,
	"Name" varchar(200) NOT NULL,
	"DataTypeId" int4 NOT NULL,
	"FieldName" bpchar(100) NOT NULL,
	CONSTRAINT property_pkey PRIMARY KEY ("CatalogId", "PropertySeq"),
	CONSTRAINT property_catalog FOREIGN KEY ("CatalogId") REFERENCES public."catalog"(id),
	CONSTRAINT property_datatype FOREIGN KEY ("DataTypeId") REFERENCES public."datatype"("Id")
);
