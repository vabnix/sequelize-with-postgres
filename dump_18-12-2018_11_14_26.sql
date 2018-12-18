--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--





--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md53175bce1d3201d16594cebf9d7eb3f9d';






--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1 (Debian 11.1-1.pgdg90+1)
-- Dumped by pg_dump version 11.1 (Debian 11.1-1.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1 (Debian 11.1-1.pgdg90+1)
-- Dumped by pg_dump version 11.1 (Debian 11.1-1.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: gigs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gigs (
    id integer NOT NULL,
    title character varying(200),
    technologies character varying(100),
    budget character varying(100),
    description text,
    contact_email character varying(50),
    "createdAt" date,
    "updatedAt" date
);


ALTER TABLE public.gigs OWNER TO postgres;

--
-- Name: gigs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gigs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gigs_id_seq OWNER TO postgres;

--
-- Name: gigs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gigs_id_seq OWNED BY public.gigs.id;


--
-- Name: gigs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gigs ALTER COLUMN id SET DEFAULT nextval('public.gigs_id_seq'::regclass);


--
-- Data for Name: gigs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gigs (id, title, technologies, budget, description, contact_email, "createdAt", "updatedAt") FROM stdin;
1	Web Developer - Junior	react, javascript, html, css	$3500	is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries	user1@google.com	2018-12-18	2018-12-18
2	Web Developer - Senior	react, javascript, html, css	$4500	is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries	user1@google.com	2018-12-18	2018-12-18
3	Web Developer - Lead	react, javascript, html, css	$6500	is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries	user1@google.com	2018-12-18	2018-12-18
\.


--
-- Name: gigs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gigs_id_seq', 3, true);


--
-- Name: gigs gigs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gigs
    ADD CONSTRAINT gigs_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

