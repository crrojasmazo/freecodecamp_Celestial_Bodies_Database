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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth_km numeric,
    descripcion text,
    tiene_vida boolean
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
    planet_id integer,
    descripcion text,
    size integer
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
    num_habitantes integer,
    num_soles integer,
    descripcion text,
    tiene_vida boolean,
    tiene_agua boolean,
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
    galaxy_id integer,
    size integer,
    descripcion text
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Agujero Negro 1', 'Descripción del Agujero Negro 1');
INSERT INTO public.black_hole VALUES (2, 'Agujero Negro 2', 'Descripción del Agujero Negro 2');
INSERT INTO public.black_hole VALUES (3, 'Agujero Negro 3', 'Descripción del Agujero Negro 3');
INSERT INTO public.black_hole VALUES (4, 'Agujero Negro 4', 'Descripción del Agujero Negro 4');
INSERT INTO public.black_hole VALUES (5, 'Agujero Negro 5', 'Descripción del Agujero Negro 5');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via lactea', 26000, 'Galaxia en la que se encuentra nuestro sistema solar', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, 'Galaxia mas cercana a la via lactea', false);
INSERT INTO public.galaxy VALUES (3, 'Galaxia del sombrero', 28, 'Galaxia eliptica con forma de sombrero', false);
INSERT INTO public.galaxy VALUES (4, 'Galaxia del triangulo', 2.73, 'Galaxia espiral situada en la constelacion del triangulo', false);
INSERT INTO public.galaxy VALUES (5, 'Galaxia nube de magallanes', 163000, 'Galaxia irregular y una de las mas grandes de la via lactea', false);
INSERT INTO public.galaxy VALUES (6, 'Galaxia de remolino', 23, 'Galaxia espiral situada en la constelacion de la Osa mayor', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna 1', 1, 'Descripción de la Luna 1', 200);
INSERT INTO public.moon VALUES (2, 'Luna 2', 1, 'Descripción de la Luna 2', 150);
INSERT INTO public.moon VALUES (3, 'Luna 3', 2, 'Descripción de la Luna 3', 180);
INSERT INTO public.moon VALUES (4, 'Luna 4', 2, 'Descripción de la Luna 4', 120);
INSERT INTO public.moon VALUES (5, 'Luna 5', 3, 'Descripción de la Luna 5', 160);
INSERT INTO public.moon VALUES (6, 'Luna 6', 3, 'Descripción de la Luna 6', 140);
INSERT INTO public.moon VALUES (7, 'Luna 7', 4, 'Descripción de la Luna 7', 220);
INSERT INTO public.moon VALUES (8, 'Luna 8', 4, 'Descripción de la Luna 8', 190);
INSERT INTO public.moon VALUES (9, 'Luna 9', 5, 'Descripción de la Luna 9', 170);
INSERT INTO public.moon VALUES (10, 'Luna 10', 5, 'Descripción de la Luna 10', 210);
INSERT INTO public.moon VALUES (11, 'Luna 11', 6, 'Descripción de la Luna 11', 130);
INSERT INTO public.moon VALUES (12, 'Luna 12', 6, 'Descripción de la Luna 12', 240);
INSERT INTO public.moon VALUES (13, 'Luna 13', 1, 'Descripción de la Luna 13', 250);
INSERT INTO public.moon VALUES (14, 'Luna 14', 1, 'Descripción de la Luna 14', 230);
INSERT INTO public.moon VALUES (15, 'Luna 15', 2, 'Descripción de la Luna 15', 270);
INSERT INTO public.moon VALUES (16, 'Luna 16', 2, 'Descripción de la Luna 16', 260);
INSERT INTO public.moon VALUES (17, 'Luna 17', 3, 'Descripción de la Luna 17', 280);
INSERT INTO public.moon VALUES (18, 'Luna 18', 3, 'Descripción de la Luna 18', 300);
INSERT INTO public.moon VALUES (19, 'Luna 19', 4, 'Descripción de la Luna 19', 320);
INSERT INTO public.moon VALUES (20, 'Luna 20', 4, 'Descripción de la Luna 20', 310);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 700000, 1, 'planeta tierra', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Planeta A', 1000000, 1, 'Descripción del Planeta A', true, true, 1);
INSERT INTO public.planet VALUES (3, 'Planeta B', 500000, 2, 'Descripción del Planeta B', false, true, 2);
INSERT INTO public.planet VALUES (4, 'Planeta C', 2000000, 1, 'Descripción del Planeta C', true, false, 3);
INSERT INTO public.planet VALUES (5, 'Planeta D', 800000, 1, 'Descripción del Planeta D', false, true, 4);
INSERT INTO public.planet VALUES (6, 'Planeta E', 300000, 3, 'Descripción del Planeta E', false, false, 5);
INSERT INTO public.planet VALUES (7, 'Planeta F', 1500000, 2, 'Descripción del Planeta F', true, true, 6);
INSERT INTO public.planet VALUES (8, 'Planeta G', 700000, 1, 'Descripción del Planeta G', true, false, 1);
INSERT INTO public.planet VALUES (9, 'Planeta H', 400000, 2, 'Descripción del Planeta H', false, true, 2);
INSERT INTO public.planet VALUES (10, 'Planeta I', 2500000, 1, 'Descripción del Planeta I', true, false, 3);
INSERT INTO public.planet VALUES (11, 'Planeta J', 900000, 1, 'Descripción del Planeta J', false, true, 4);
INSERT INTO public.planet VALUES (12, 'Planeta K', 350000, 3, 'Descripción del Planeta K', true, false, 5);
INSERT INTO public.planet VALUES (13, 'Planeta L', 1800000, 2, 'Descripción del Planeta L', true, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', 1, 1400, 'Estrella supergigante roja');
INSERT INTO public.star VALUES (2, 'Alpheratz', 2, 110000, 'La estrella mas brillande de andromeda');
INSERT INTO public.star VALUES (3, 'NGC 4594', 3, 50000, 'Caracterizada por un bulbo central');
INSERT INTO public.star VALUES (4, 'Messier 33', 4, 30000, 'Galaxia triangular');
INSERT INTO public.star VALUES (5, 'Magallaenes', 5, 7000, 'Galaxia nube de magallenes');
INSERT INTO public.star VALUES (6, 'NGC 5194', 6, 30000, 'Whirpool galaxy');


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 5, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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