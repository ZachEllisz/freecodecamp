--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    alien_type text NOT NULL,
    name character varying(20)
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_alien_id_seq OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_alien_id_seq OWNED BY public.alien.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_solar_mass bigint,
    distance_from_earth bigint,
    galaxy_type character varying(50) NOT NULL,
    number_stars bigint NOT NULL,
    name character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_weight_tons integer NOT NULL,
    moon_life boolean,
    name character varying(50),
    who_named_moon text NOT NULL,
    moon_temp integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_weight_tons bigint,
    has_life boolean,
    planet_speed_mph numeric,
    planet_type character varying(50),
    name character varying(50) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_weight_tons bigint NOT NULL,
    star_age bigint NOT NULL,
    star_temp bigint,
    name character varying(50)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: alien alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien ALTER COLUMN alien_id SET DEFAULT nextval('public.alien_alien_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES (4, 'cow like', 'Elcor');
INSERT INTO public.alien VALUES (5, 'blue', 'Asari');
INSERT INTO public.alien VALUES (6, 'reptialian', 'Krogan');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1900000000000, 0, 'barred spiral', 500000000000, 'Milky Way');
INSERT INTO public.galaxy VALUES (2, 1500000000000, 2537000, 'barredd spiral', 100000000000, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 1000000000, 4500000, 'spiral', 2000000000, 'Antennae');
INSERT INTO public.galaxy VALUES (4, 300000000, 59400000, 'siamese twins', 3000000000, 'Butterfly');
INSERT INTO public.galaxy VALUES (5, 150000000000, 500000033, 'ring', 60000000, 'Cartwheel');
INSERT INTO public.galaxy VALUES (6, 190000000000, 173000000, 'seyfert', 100000000000, 'Black Eye');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 45454, false, 'Earth Moon', 'me', 65959);
INSERT INTO public.moon VALUES (2, 45454, false, 'moon a', 'me', 65959);
INSERT INTO public.moon VALUES (3, 45454, false, 'moon b', 'me', 65959);
INSERT INTO public.moon VALUES (4, 45454, false, 'moon c', 'me', 65959);
INSERT INTO public.moon VALUES (5, 45454, false, 'moon d', 'me', 65959);
INSERT INTO public.moon VALUES (6, 45454, false, 'moon g', 'me', 65959);
INSERT INTO public.moon VALUES (7, 45454, false, 'moon gg', 'me', 65959);
INSERT INTO public.moon VALUES (8, 45454, false, 'moon hh', 'me', 65959);
INSERT INTO public.moon VALUES (9, 45454, false, 'ice moon', 'me', 65959);
INSERT INTO public.moon VALUES (32, 45454, false, 'moon aas', 'me', 65959);
INSERT INTO public.moon VALUES (33, 45454, false, 'moon asa', 'me', 65959);
INSERT INTO public.moon VALUES (34, 45454, false, 'moon zz', 'me', 65959);
INSERT INTO public.moon VALUES (35, 45454, false, 'moon bae', 'me', 65959);
INSERT INTO public.moon VALUES (36, 45454, false, 'moon naoc', 'me', 65959);
INSERT INTO public.moon VALUES (37, 45454, false, 'moon avd', 'me', 65959);
INSERT INTO public.moon VALUES (38, 45454, false, 'moon ljb', 'me', 65959);
INSERT INTO public.moon VALUES (39, 45454, false, 'moon aaccd', 'me', 65959);
INSERT INTO public.moon VALUES (40, 45454, false, 'moon afcad', 'me', 65959);
INSERT INTO public.moon VALUES (41, 45454, false, 'moon kvhds', 'me', 65959);
INSERT INTO public.moon VALUES (42, 45454, false, 'moon ljbased', 'me', 65959);
INSERT INTO public.moon VALUES (43, 45454, false, 'moon lasdaejb', 'me', 65959);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 542600, NULL, 366666666, 'rocky', 'Mercury');
INSERT INTO public.planet VALUES (2, 333333336, true, 29, 'rocky', 'Earth');
INSERT INTO public.planet VALUES (3, 1515151, NULL, 2626, 'rocky', 'Venus');
INSERT INTO public.planet VALUES (4, 616161, NULL, 6161, 'rocky', 'Mars');
INSERT INTO public.planet VALUES (5, 656545, NULL, 69854, 'gas', 'Jupiter');
INSERT INTO public.planet VALUES (6, 6454541, NULL, 6985221, 'gas ring', 'Saturn');
INSERT INTO public.planet VALUES (7, 85214, NULL, 698745, 'gas ring', 'Uranus');
INSERT INTO public.planet VALUES (8, 15161, NULL, 6954125, 'gas', 'Neptune');
INSERT INTO public.planet VALUES (9, 651651, NULL, 5165161, 'ice', 'Pluto');
INSERT INTO public.planet VALUES (10, 6151651651, NULL, 949521, 'rocky', 'Kepler-452b');
INSERT INTO public.planet VALUES (11, 698745, NULL, 364158, 'rocky', 'Gliese 581');
INSERT INTO public.planet VALUES (12, 4788, NULL, 698354, 'rocky', 'CoRot-7b');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 15151545, 2000003, 55500000, 'Gamma Andromedae');
INSERT INTO public.star VALUES (4, 200000, 2000000, 500000, 'XO-5');
INSERT INTO public.star VALUES (5, 9595954, 6210000, 300004, 'Mu Lyrae');
INSERT INTO public.star VALUES (6, 4200069000, 4200000, 60000, 'Kappa Leonis');
INSERT INTO public.star VALUES (7, 61468514, 6591054, 1230000, 'Wasp-34');
INSERT INTO public.star VALUES (8, 65544447, 689500, 2626262, 'Rho Cephei');


--
-- Name: alien_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_alien_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 43, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: alien alien_alien_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_alien_type_key UNIQUE (alien_type);


--
-- Name: alien alien_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_pkey PRIMARY KEY (alien_id);


--
-- Name: galaxy galaxy_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_key UNIQUE (galaxy_type);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: planet planet_has_life; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_has_life UNIQUE (has_life);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_temp_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_temp_key UNIQUE (star_temp);


--
-- Name: galaxy fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_star_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

