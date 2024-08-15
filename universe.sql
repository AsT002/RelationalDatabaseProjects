--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    wight integer,
    distance numeric(10,5) NOT NULL,
    has_life boolean,
    type text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: m; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.m (
    m_id integer NOT NULL,
    a integer NOT NULL,
    b integer,
    name character varying(100) NOT NULL
);


ALTER TABLE public.m OWNER TO freecodecamp;

--
-- Name: m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.m_id_seq OWNER TO freecodecamp;

--
-- Name: m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.m_id_seq OWNED BY public.m.m_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    wight integer,
    distance numeric(10,5),
    has_life boolean,
    type text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    wight integer,
    distance numeric(10,5),
    has_life boolean,
    type text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    wight integer,
    distance numeric(10,5),
    has_life boolean,
    type text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: m m_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.m ALTER COLUMN m_id SET DEFAULT nextval('public.m_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', 100, 100.00000, false, 'a');
INSERT INTO public.galaxy VALUES (2, 'b', 100, 100.00000, false, 'a');
INSERT INTO public.galaxy VALUES (3, 'c', 100, 100.00000, false, 'a');
INSERT INTO public.galaxy VALUES (4, 'd', 100, 100.00000, false, 'a');
INSERT INTO public.galaxy VALUES (5, 'e', 100, 100.00000, false, 'a');
INSERT INTO public.galaxy VALUES (6, 'f', 100, 100.00000, false, 'a');


--
-- Data for Name: m; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.m VALUES (1, 1, NULL, 'x');
INSERT INTO public.m VALUES (2, 1, NULL, 'd');
INSERT INTO public.m VALUES (3, 1, NULL, 'a');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'a', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (3, '.', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (4, '..', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (5, '...', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (6, '....', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (7, '.....', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (8, '......', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (9, '.......', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (10, '........', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (11, '.........', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (12, '..........', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (13, '...........', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (14, '............', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (15, '.............', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (16, '..............', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (17, '...............', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (18, '................', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (19, '.................', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (20, '..................', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (21, '...................', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (22, '....................', 100, 100.00000, false, 'x', 2);
INSERT INTO public.moon VALUES (23, '.....................', 100, 100.00000, false, 'x', 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'm', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (3, 'mm', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (4, 'mmmm', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (5, 'mmmmmmm', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (6, 'mmmmmmffmm', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (7, 'mmmmmmffmmxm', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (8, 'mmmmmmffmmxm.', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (9, 'mmmmmmffmmxm..', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (10, '..', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (11, '...', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (12, '....', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (13, '.....', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (14, '.....,', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (15, '.....,.', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (16, '.....,..', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (17, '.....,...', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (18, '.....,....', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (19, '.....,....,', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (20, '.....,.....,', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (21, '.....,.....,.', 100, 100.00000, false, 'xD', 1);
INSERT INTO public.planet VALUES (22, '.....,.........', 100, 100.00000, false, 'xD', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', 100, 100.00000, false, 'b', 1);
INSERT INTO public.star VALUES (2, 'ab', 100, 100.00000, false, 'b', 1);
INSERT INTO public.star VALUES (3, 'abc', 100, 100.00000, false, 'b', 1);
INSERT INTO public.star VALUES (4, 'abcd', 100, 100.00000, false, 'b', 1);
INSERT INTO public.star VALUES (5, 'abcde', 100, 100.00000, false, 'b', 1);
INSERT INTO public.star VALUES (6, 'abcdef', 100, 100.00000, false, 'b', 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.m_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 22, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: m m_b_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.m
    ADD CONSTRAINT m_b_key UNIQUE (b);


--
-- Name: m m_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.m
    ADD CONSTRAINT m_pkey PRIMARY KEY (m_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_in_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_in_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

