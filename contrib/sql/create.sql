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



CREATE TABLE public.product_reviews (
    review_id bigint NOT NULL,
    product_id character varying(30) NOT NULL,
    user_id numeric(8,2),
    user_name character varying(255) NOT NULL,
    rating numeric(8,0),
    review_date TIMESTAMP without time zone NOT NULL,
    review_text TEXT

);


ALTER TABLE public.product_reviews OWNER TO $POSTGRESQL_USER;

--
-- Name: product_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: $POSTGRESQL_USER
--

CREATE SEQUENCE public.product_reviews_id_seq
    START WITH 1000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_reviews_id_seq OWNER TO $POSTGRESQL_USER;

--
-- Name: product_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: $POSTGRESQL_USER
--

ALTER SEQUENCE public.product_reviews_id_seq OWNED BY public.product_reviews.review_id;

--
-- Name: product_reviews review_id; Type: DEFAULT; Schema: public; Owner: $POSTGRESQL_USER
--

ALTER TABLE ONLY public.product_reviews ALTER COLUMN review_id SET DEFAULT nextval('public.product_reviews_id_seq'::regclass);


--
-- Name: cashback product_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: $POSTGRESQL_USER
--

ALTER TABLE ONLY public.product_reviews
    ADD CONSTRAINT product_reviews_pkey PRIMARY KEY (review_id);


