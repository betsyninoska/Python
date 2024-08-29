--
-- PostgreSQL database dump
--

-- Dumped from database version 13.15 (Debian 13.15-0+deb11u1)
-- Dumped by pg_dump version 13.15 (Debian 13.15-0+deb11u1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: estrella; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estrella (
    estrella_id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    edad integer NOT NULL,
    visitas integer NOT NULL,
    tamanio numeric,
    galaxia_id integer NOT NULL
);


ALTER TABLE public.estrella OWNER TO postgres;

--
-- Name: estrella_estrella_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estrella_estrella_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estrella_estrella_id_seq OWNER TO postgres;

--
-- Name: estrella_estrella_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estrella_estrella_id_seq OWNED BY public.estrella.estrella_id;


--
-- Name: galaxia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galaxia (
    galaxia_id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    edad integer NOT NULL,
    visitas integer NOT NULL,
    tamanio numeric
);


ALTER TABLE public.galaxia OWNER TO postgres;

--
-- Name: galaxia_galaxia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.galaxia_galaxia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxia_galaxia_id_seq OWNER TO postgres;

--
-- Name: galaxia_galaxia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.galaxia_galaxia_id_seq OWNED BY public.galaxia.galaxia_id;


--
-- Name: luna; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.luna (
    luna_id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    edad integer NOT NULL,
    visitas integer NOT NULL,
    tamanio numeric,
    planeta_id integer NOT NULL
);


ALTER TABLE public.luna OWNER TO postgres;

--
-- Name: luna_luna_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.luna_luna_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.luna_luna_id_seq OWNER TO postgres;

--
-- Name: luna_luna_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.luna_luna_id_seq OWNED BY public.luna.luna_id;


--
-- Name: oceano; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oceano (
    oceano_id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    edad integer NOT NULL,
    visitas integer NOT NULL,
    tamanio numeric
);


ALTER TABLE public.oceano OWNER TO postgres;

--
-- Name: oceano_oceano_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.oceano_oceano_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oceano_oceano_id_seq OWNER TO postgres;

--
-- Name: oceano_oceano_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.oceano_oceano_id_seq OWNED BY public.oceano.oceano_id;


--
-- Name: planeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planeta (
    planeta_id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    edad integer NOT NULL,
    visitas integer NOT NULL,
    tamanio numeric,
    estrella_id integer NOT NULL
);


ALTER TABLE public.planeta OWNER TO postgres;

--
-- Name: planeta_planeta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planeta_planeta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planeta_planeta_id_seq OWNER TO postgres;

--
-- Name: planeta_planeta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planeta_planeta_id_seq OWNED BY public.planeta.planeta_id;


--
-- Name: estrella estrella_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estrella ALTER COLUMN estrella_id SET DEFAULT nextval('public.estrella_estrella_id_seq'::regclass);


--
-- Name: galaxia galaxia_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxia ALTER COLUMN galaxia_id SET DEFAULT nextval('public.galaxia_galaxia_id_seq'::regclass);


--
-- Name: luna luna_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.luna ALTER COLUMN luna_id SET DEFAULT nextval('public.luna_luna_id_seq'::regclass);


--
-- Name: oceano oceano_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oceano ALTER COLUMN oceano_id SET DEFAULT nextval('public.oceano_oceano_id_seq'::regclass);


--
-- Name: planeta planeta_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planeta ALTER COLUMN planeta_id SET DEFAULT nextval('public.planeta_planeta_id_seq'::regclass);


--
-- Data for Name: estrella; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estrella (estrella_id, nombre, edad, visitas, tamanio, galaxia_id) FROM stdin;
1	xxx	1520	150	15632	1
8	xxx	1520	150	15632	1
9	YYYY	1500	150	5656	2
10	estrellaxx	5800	100	520	3
11	YH	5555	4	7777	2
12	JC	2024	2500	5656565	6
13	XXYYYD	5656	30	56562	2
\.


--
-- Data for Name: galaxia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.galaxia (galaxia_id, nombre, edad, visitas, tamanio) FROM stdin;
1	Andrómeda	10000	150	2.537
2	IC342	10000	155	10.7
3	ESO 486-21	10000	155	10.7
4	Messier 82	10000	155	10.7
6	NGC 4424	10050	155	213994
\.


--
-- Data for Name: luna; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.luna (luna_id, nombre, edad, visitas, tamanio, planeta_id) FROM stdin;
1	nueva	454	5200	323	12
3	vieja	454	5200	323	12
4	creciente	454	5200	323	15
5	menguante	454	5200	323	14
6	llena	454	5200	323	13
\.


--
-- Data for Name: oceano; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oceano (oceano_id, nombre, edad, visitas, tamanio) FROM stdin;
\.


--
-- Data for Name: planeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.planeta (planeta_id, nombre, edad, visitas, tamanio, estrella_id) FROM stdin;
1	Tierra	2024	18000	2323	1
12	Venus	214	18000	2323	8
13	Martes	211	18000	2323	8
14	Júpiter	2044	18000	2323	8
15	Saturno	444	18000	2323	9
16	Urano	55	18000	2323	1
17	Neptuno	554	18000	2323	10
18	Makemake	55656	18000	2323	1
19	Eris	415	18000	2323	1
20	Haumea	56	18000	2323	8
21	Plutón	525	18000	2323	1
22	Ceres	55	18000	2323	1
\.


--
-- Name: estrella_estrella_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estrella_estrella_id_seq', 13, true);


--
-- Name: galaxia_galaxia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.galaxia_galaxia_id_seq', 6, true);


--
-- Name: luna_luna_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.luna_luna_id_seq', 6, true);


--
-- Name: oceano_oceano_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.oceano_oceano_id_seq', 1, false);


--
-- Name: planeta_planeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planeta_planeta_id_seq', 22, true);


--
-- Name: estrella estrella_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estrella
    ADD CONSTRAINT estrella_pkey PRIMARY KEY (estrella_id);


--
-- Name: galaxia galaxia_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxia
    ADD CONSTRAINT galaxia_nombre_key UNIQUE (nombre);


--
-- Name: galaxia galaxia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxia
    ADD CONSTRAINT galaxia_pkey PRIMARY KEY (galaxia_id);


--
-- Name: luna luna_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.luna
    ADD CONSTRAINT luna_nombre_key UNIQUE (nombre);


--
-- Name: luna luna_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.luna
    ADD CONSTRAINT luna_pkey PRIMARY KEY (luna_id);


--
-- Name: oceano oceano_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oceano
    ADD CONSTRAINT oceano_nombre_key UNIQUE (nombre);


--
-- Name: oceano oceano_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oceano
    ADD CONSTRAINT oceano_pkey PRIMARY KEY (oceano_id);


--
-- Name: planeta planeta_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planeta
    ADD CONSTRAINT planeta_nombre_key UNIQUE (nombre);


--
-- Name: planeta planeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planeta
    ADD CONSTRAINT planeta_pkey PRIMARY KEY (planeta_id);


--
-- Name: planeta fk_estrella; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planeta
    ADD CONSTRAINT fk_estrella FOREIGN KEY (estrella_id) REFERENCES public.estrella(estrella_id);


--
-- Name: estrella fk_galaxia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estrella
    ADD CONSTRAINT fk_galaxia FOREIGN KEY (galaxia_id) REFERENCES public.galaxia(galaxia_id);


--
-- Name: luna fk_planeta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.luna
    ADD CONSTRAINT fk_planeta FOREIGN KEY (planeta_id) REFERENCES public.planeta(planeta_id);


--
-- PostgreSQL database dump complete
--

