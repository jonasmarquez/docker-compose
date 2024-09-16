-- This file is used to create the databases and users for the postgres container
CREATE DATABASE postgres_dev;
CREATE DATABASE postgres_pre;
CREATE DATABASE postgres_pro;

-- Create DBA user
CREATE ROLE dbauser WITH LOGIN SUPERUSER PASSWORD 'password';

-- Create users for the different environments
CREATE ROLE userperiod WITH LOGIN PASSWORD 'password';
CREATE ROLE userperioddev WITH LOGIN PASSWORD 'password';
CREATE ROLE userperiodpre WITH LOGIN PASSWORD 'password';
CREATE ROLE userperiodpro WITH LOGIN PASSWORD 'password';

-- Create users for the different environments
CREATE ROLE userschedule WITH LOGIN PASSWORD 'password';
CREATE ROLE userscheduledev WITH LOGIN PASSWORD 'password';
CREATE ROLE userschedulepre WITH LOGIN PASSWORD 'password';
CREATE ROLE userschedulepro WITH LOGIN PASSWORD 'password';

-- Create test employee table
CREATE TABLE public.employees
(
    id serial,
    first_name character varying DEFAULT 50,
    last_name character varying DEFAULT 50,
    email character varying DEFAULT 100,
    hire_data date,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.employees OWNER to dbauser;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.employees TO dbauser;

-- Insertar contenido en la tabla
INSERT INTO public.employees(
	id, first_name, last_name, email, hire_data)
	VALUES (1, 'John', 'Doe', 'john.doe@example.com', '2022-01-01'),
           (2, 'Jane', 'Doe', 'jane.doe@example.com', '2022-02-01');

-- Config DEV databases
\c postgres_dev;AMDIN

CREATE TABLE public.employees
(
    id serial,
    first_name character varying DEFAULT 50,
    last_name character varying DEFAULT 50,
    email character varying DEFAULT 100,
    hire_data date,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.employees OWNER to dbauser;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.employees TO dbauser;

-- Insertar contenido en la tabla
INSERT INTO public.employees(
	id, first_name, last_name, email, hire_data)
	VALUES (1, 'John', 'Doe', 'john.doe@example.com', '2022-01-01'),
           (2, 'Jane', 'Doe', 'jane.doe@example.com', '2022-02-01');

-- Config PRE databases
\c postgres_pre;

CREATE TABLE public.employees
(
    id serial,
    first_name character varying DEFAULT 50,
    last_name character varying DEFAULT 50,
    email character varying DEFAULT 100,
    hire_data date,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.employees OWNER to dbauser;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.employees TO dbauser;

-- Insertar contenido en la tabla
INSERT INTO public.employees(
    id, first_name, last_name, email, hire_data)
    VALUES (1, 'John', 'Doe', 'john.doe@example.com', '2022-01-01'),
           (2, 'Jane', 'Doe', 'jane.doe@example.com', '2022-02-01');

-- Config PRO databases
\c postgres_pro;

CREATE TABLE public.employees
(
    id serial,
    first_name character varying DEFAULT 50,
    last_name character varying DEFAULT 50,
    email character varying DEFAULT 100,
    hire_data date,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.employees OWNER to dbauser;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE public.employees TO dbauser;

-- Insertar contenido en la tabla
INSERT INTO public.employees(
    id, first_name, last_name, email, hire_data)
    VALUES (1, 'John', 'Doe', 'john.doe@example.com', '2022-01-01'),
           (2, 'Jane', 'Doe', 'jane.doe@example.com', '2022-02-01');