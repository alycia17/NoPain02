--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2018-12-11 10:57:42 BRST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 24743)
-- Name: no_pain; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA no_pain;


ALTER SCHEMA no_pain OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2163 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = no_pain, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 184 (class 1259 OID 24750)
-- Name: endereco; Type: TABLE; Schema: no_pain; Owner: postgres
--

CREATE TABLE endereco (
    nm_rua character varying,
    nm_bairro character varying,
    nm_cidade character varying,
    cd_endereco integer NOT NULL,
    usuario_cd_usuario integer
);


ALTER TABLE endereco OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 24747)
-- Name: post; Type: TABLE; Schema: no_pain; Owner: postgres
--

CREATE TABLE post (
    nm_comentario character varying,
    cd_post integer NOT NULL,
    usuario_cd_usuario integer
);


ALTER TABLE post OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 24744)
-- Name: usuario; Type: TABLE; Schema: no_pain; Owner: postgres
--

CREATE TABLE usuario (
    nm_nome character varying,
    ds_senha character varying,
    ds_email character varying,
    nick_name character varying,
    cd_usuario integer NOT NULL,
    tp_tipo_usuario smallint,
    nr_cpf numeric(11,0),
    nr_cnpj numeric(14,0),
    nr_telefone numeric(11,0)
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 2164 (class 0 OID 0)
-- Dependencies: 182
-- Name: COLUMN usuario.tp_tipo_usuario; Type: COMMENT; Schema: no_pain; Owner: postgres
--

COMMENT ON COLUMN usuario.tp_tipo_usuario IS '0 = admin
1 = farmacia
2 = usuário pessoa física';


--
-- TOC entry 2155 (class 0 OID 24750)
-- Dependencies: 184
-- Data for Name: endereco; Type: TABLE DATA; Schema: no_pain; Owner: postgres
--

COPY endereco (nm_rua, nm_bairro, nm_cidade, cd_endereco, usuario_cd_usuario) FROM stdin;
\.


--
-- TOC entry 2154 (class 0 OID 24747)
-- Dependencies: 183
-- Data for Name: post; Type: TABLE DATA; Schema: no_pain; Owner: postgres
--

COPY post (nm_comentario, cd_post, usuario_cd_usuario) FROM stdin;
\.


--
-- TOC entry 2153 (class 0 OID 24744)
-- Dependencies: 182
-- Data for Name: usuario; Type: TABLE DATA; Schema: no_pain; Owner: postgres
--

COPY usuario (nm_nome, ds_senha, ds_email, nick_name, cd_usuario, tp_tipo_usuario, nr_cpf, nr_cnpj, nr_telefone) FROM stdin;
\.


--
-- TOC entry 2036 (class 2606 OID 24792)
-- Name: pk_endereco; Type: CONSTRAINT; Schema: no_pain; Owner: postgres
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT pk_endereco PRIMARY KEY (cd_endereco);


--
-- TOC entry 2033 (class 2606 OID 24805)
-- Name: pk_post; Type: CONSTRAINT; Schema: no_pain; Owner: postgres
--

ALTER TABLE ONLY post
    ADD CONSTRAINT pk_post PRIMARY KEY (cd_post);


--
-- TOC entry 2030 (class 2606 OID 24803)
-- Name: pk_usuario; Type: CONSTRAINT; Schema: no_pain; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (cd_usuario);


--
-- TOC entry 2034 (class 1259 OID 24909)
-- Name: fki_usuario_endereco; Type: INDEX; Schema: no_pain; Owner: postgres
--

CREATE INDEX fki_usuario_endereco ON endereco USING btree (usuario_cd_usuario);


--
-- TOC entry 2031 (class 1259 OID 24841)
-- Name: fki_usuario_post; Type: INDEX; Schema: no_pain; Owner: postgres
--

CREATE INDEX fki_usuario_post ON post USING btree (usuario_cd_usuario);


--
-- TOC entry 2038 (class 2606 OID 24904)
-- Name: fk_usuario_endereco; Type: FK CONSTRAINT; Schema: no_pain; Owner: postgres
--

ALTER TABLE ONLY endereco
    ADD CONSTRAINT fk_usuario_endereco FOREIGN KEY (usuario_cd_usuario) REFERENCES usuario(cd_usuario);


--
-- TOC entry 2037 (class 2606 OID 24836)
-- Name: fk_usuario_post; Type: FK CONSTRAINT; Schema: no_pain; Owner: postgres
--

ALTER TABLE ONLY post
    ADD CONSTRAINT fk_usuario_post FOREIGN KEY (usuario_cd_usuario) REFERENCES usuario(cd_usuario);


--
-- TOC entry 2162 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-12-11 10:57:43 BRST

--
-- PostgreSQL database dump complete
--

