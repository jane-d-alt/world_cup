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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(60) NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2018, 47, 48, 4, 2, 'Final', 19);
INSERT INTO public.games VALUES (2018, 49, 50, 2, 0, 'Third Place', 20);
INSERT INTO public.games VALUES (2018, 48, 50, 2, 1, 'Semi-Final', 21);
INSERT INTO public.games VALUES (2018, 47, 49, 1, 0, 'Semi-Final', 22);
INSERT INTO public.games VALUES (2018, 48, 51, 3, 2, 'Quarter-Final', 23);
INSERT INTO public.games VALUES (2018, 50, 52, 2, 0, 'Quarter-Final', 24);
INSERT INTO public.games VALUES (2018, 49, 53, 2, 1, 'Quarter-Final', 25);
INSERT INTO public.games VALUES (2018, 47, 54, 2, 0, 'Quarter-Final', 26);
INSERT INTO public.games VALUES (2018, 50, 55, 2, 1, 'Eighth-Final', 27);
INSERT INTO public.games VALUES (2018, 52, 56, 1, 0, 'Eighth-Final', 28);
INSERT INTO public.games VALUES (2018, 49, 57, 3, 2, 'Eighth-Final', 29);
INSERT INTO public.games VALUES (2018, 53, 58, 2, 0, 'Eighth-Final', 30);
INSERT INTO public.games VALUES (2018, 48, 59, 2, 1, 'Eighth-Final', 31);
INSERT INTO public.games VALUES (2018, 51, 60, 2, 1, 'Eighth-Final', 32);
INSERT INTO public.games VALUES (2018, 54, 61, 2, 1, 'Eighth-Final', 33);
INSERT INTO public.games VALUES (2018, 47, 62, 4, 3, 'Eighth-Final', 34);
INSERT INTO public.games VALUES (2014, 63, 62, 1, 0, 'Final', 35);
INSERT INTO public.games VALUES (2014, 64, 53, 3, 0, 'Third Place', 36);
INSERT INTO public.games VALUES (2014, 62, 64, 1, 0, 'Semi-Final', 37);
INSERT INTO public.games VALUES (2014, 63, 53, 7, 1, 'Semi-Final', 38);
INSERT INTO public.games VALUES (2014, 64, 65, 1, 0, 'Quarter-Final', 39);
INSERT INTO public.games VALUES (2014, 62, 49, 1, 0, 'Quarter-Final', 40);
INSERT INTO public.games VALUES (2014, 53, 55, 2, 1, 'Quarter-Final', 41);
INSERT INTO public.games VALUES (2014, 63, 47, 1, 0, 'Quarter-Final', 42);
INSERT INTO public.games VALUES (2014, 53, 66, 2, 1, 'Eighth-Final', 43);
INSERT INTO public.games VALUES (2014, 55, 54, 2, 0, 'Eighth-Final', 44);
INSERT INTO public.games VALUES (2014, 47, 67, 2, 0, 'Eighth-Final', 45);
INSERT INTO public.games VALUES (2014, 63, 68, 2, 1, 'Eighth-Final', 46);
INSERT INTO public.games VALUES (2014, 64, 58, 2, 1, 'Eighth-Final', 47);
INSERT INTO public.games VALUES (2014, 65, 69, 2, 1, 'Eighth-Final', 48);
INSERT INTO public.games VALUES (2014, 62, 56, 1, 0, 'Eighth-Final', 49);
INSERT INTO public.games VALUES (2014, 49, 70, 2, 1, 'Eighth-Final', 50);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (47, 'France');
INSERT INTO public.teams VALUES (48, 'Croatia');
INSERT INTO public.teams VALUES (49, 'Belgium');
INSERT INTO public.teams VALUES (50, 'England');
INSERT INTO public.teams VALUES (51, 'Russia');
INSERT INTO public.teams VALUES (52, 'Sweden');
INSERT INTO public.teams VALUES (53, 'Brazil');
INSERT INTO public.teams VALUES (54, 'Uruguay');
INSERT INTO public.teams VALUES (55, 'Colombia');
INSERT INTO public.teams VALUES (56, 'Switzerland');
INSERT INTO public.teams VALUES (57, 'Japan');
INSERT INTO public.teams VALUES (58, 'Mexico');
INSERT INTO public.teams VALUES (59, 'Denmark');
INSERT INTO public.teams VALUES (60, 'Spain');
INSERT INTO public.teams VALUES (61, 'Portugal');
INSERT INTO public.teams VALUES (62, 'Argentina');
INSERT INTO public.teams VALUES (63, 'Germany');
INSERT INTO public.teams VALUES (64, 'Netherlands');
INSERT INTO public.teams VALUES (65, 'Costa Rica');
INSERT INTO public.teams VALUES (66, 'Chile');
INSERT INTO public.teams VALUES (67, 'Nigeria');
INSERT INTO public.teams VALUES (68, 'Algeria');
INSERT INTO public.teams VALUES (69, 'Greece');
INSERT INTO public.teams VALUES (70, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 50, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 70, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

