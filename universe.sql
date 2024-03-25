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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    name character varying(30) NOT NULL,
    pop integer,
    cool boolean,
    planet_id integer
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
    name character varying(30) NOT NULL,
    no_systems_bil integer,
    diameter_ly numeric,
    dist_from_earth_ly numeric,
    type character varying(30)
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
    name character varying(30) NOT NULL,
    rotate character varying(30),
    no_craters integer,
    diameter_mi numeric,
    cool_moon boolean,
    planet_id integer
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
    name character varying(30) NOT NULL,
    type character varying(30),
    no_moons integer,
    diameter_mi numeric,
    color_descript text,
    star_id integer
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
    name character varying(30) NOT NULL,
    type character varying(30),
    no_planets_bil integer,
    diameter_ly numeric,
    alive boolean,
    galaxy_id integer
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

INSERT INTO public.alien VALUES (1, 'Oglurfeth', 958112, true, 12);
INSERT INTO public.alien VALUES (2, 'Ashneelos', 563391, false, 11);
INSERT INTO public.alien VALUES (3, 'Creggazer', 592930, false, 12);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Martosia', 773, 142, 710, 'elliptical');
INSERT INTO public.galaxy VALUES (2, 'Camirinia', 303, 806, 353, 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Atlofrisia', 425, 144, 219, 'irregular');
INSERT INTO public.galaxy VALUES (4, 'Maltitsia', 902, 854, 7, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'Amofrisia', 684, 320, 350, 'elliptical');
INSERT INTO public.galaxy VALUES (6, 'Amesia', 280, 834, 1000, 'irregular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Azlostyn', 'counterclockwise', 120, 292, true, 5);
INSERT INTO public.moon VALUES (2, 'Ozreroop', 'clockwise', 321, 220, true, 2);
INSERT INTO public.moon VALUES (3, 'Fulimdoll', 'clockwise', 68, 64, false, 12);
INSERT INTO public.moon VALUES (4, 'Sheplep', 'clockwise', 470, 199, false, 12);
INSERT INTO public.moon VALUES (5, 'Prustogh', 'clockwise', 303, 246, true, 10);
INSERT INTO public.moon VALUES (6, 'Stlafrogh', 'counterclockwise', 52, 118, true, 12);
INSERT INTO public.moon VALUES (7, 'Beshoolm', 'counterclockwise', 2, 73, true, 10);
INSERT INTO public.moon VALUES (8, 'Sraplys', 'clockwise', 106, 59, false, 1);
INSERT INTO public.moon VALUES (9, 'Pusdip', 'clockwise', 95, 191, true, 5);
INSERT INTO public.moon VALUES (10, 'Azoligoh', 'clockwise', 281, 133, false, 11);
INSERT INTO public.moon VALUES (11, 'Stleffyrg', 'clockwise', 61, 76, true, 1);
INSERT INTO public.moon VALUES (12, 'Zestelugh', 'counterclockwise', 273, 32, true, 10);
INSERT INTO public.moon VALUES (13, 'Oltenisia', 'counterclockwise', 371, 139, true, 4);
INSERT INTO public.moon VALUES (14, 'Ozusdagh', 'counterclockwise', 80, 82, true, 11);
INSERT INTO public.moon VALUES (15, 'Guligak', 'clockwise', 26, 155, true, 10);
INSERT INTO public.moon VALUES (16, 'Bofruh', 'clockwise', 434, 61, true, 12);
INSERT INTO public.moon VALUES (17, 'Ozoggog', 'counterclockwise', 43, 126, false, 10);
INSERT INTO public.moon VALUES (18, 'Zlaplees', 'clockwise', 44, 52, true, 10);
INSERT INTO public.moon VALUES (19, 'Kecyg', 'counterclockwise', 30, 127, true, 2);
INSERT INTO public.moon VALUES (20, 'Geploom', 'clockwise', 164, 245, true, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Stlalimdooth', 'ice giant', 16, 919, 'uptight bottle green', 5);
INSERT INTO public.planet VALUES (2, 'Azeshup', 'pulsar', 25, 776, 'unruly capri blue', 3);
INSERT INTO public.planet VALUES (3, 'Puragull', 'exoplanet', 1, 718, 'puzzled pearl pink', 3);
INSERT INTO public.planet VALUES (4, 'Stoklelm', 'terrestrial', 19, 339, 'narrow pastel yellow', 1);
INSERT INTO public.planet VALUES (5, 'Ledania', 'ocean', 9, 34, 'meek black olive', 1);
INSERT INTO public.planet VALUES (6, 'Sulivia', 'desert', 1, 927, 'high orange brown', 1);
INSERT INTO public.planet VALUES (7, 'Sylce', 'gas giant', 6, 940, 'vigorous chestnut brown', 3);
INSERT INTO public.planet VALUES (8, 'Batopia', 'extragalactic', 1, 883, 'wild leaf green', 1);
INSERT INTO public.planet VALUES (9, 'Zeny', 'gas dwarf', 4, 480, 'cultured violet blue', 4);
INSERT INTO public.planet VALUES (10, 'Lerein', 'carbon', 14, 388, 'synonymous sapphire blue', 5);
INSERT INTO public.planet VALUES (11, 'Rudania', 'helium', 21, 822, 'cloudy telemagenta', 4);
INSERT INTO public.planet VALUES (12, 'Stoshaup', 'chthonian', 23, 109, 'fretful blue lilac', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Otlesia', 'giant', 44, 8, true, 4);
INSERT INTO public.star VALUES (2, 'Masoca', 'iron', 13, 24, false, 5);
INSERT INTO public.star VALUES (3, 'Eurmerinia', 'blue', 42, 4, true, 3);
INSERT INTO public.star VALUES (4, 'Azalirulm', 'white dwarf', 26, 25, true, 6);
INSERT INTO public.star VALUES (5, 'Shleggalg', 'red dwarf', 3, 22, false, 5);
INSERT INTO public.star VALUES (6, 'Ozuragun', 'protostar', 9, 10, false, 5);


--
-- Name: alien_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_alien_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 32, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: alien alien_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_name_key UNIQUE (name);


--
-- Name: alien alien_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_pkey PRIMARY KEY (alien_id);


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
-- Name: alien alien_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

