--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: app_test; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_test (
    id integer NOT NULL,
    name character varying(255) DEFAULT '0'::character varying NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.app_test OWNER TO postgres;

--
-- Data for Name: app_test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY app_test (id, name, value) FROM stdin;
1	app_test1	I am in the db
2	app_test2	I am in the db
3	app_test3	I am in the db
\.


--
-- Name: app_test_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_test
    ADD CONSTRAINT app_test_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

