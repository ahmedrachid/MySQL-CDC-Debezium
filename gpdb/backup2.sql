--
-- Greenplum Database database dump
--

SET gp_default_storage_options = '';
SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: events; Type: TABLE; Schema: public; Owner: gpadmin; Tablespace: 
--

CREATE TABLE public.events (
    j json
)
 DISTRIBUTED RANDOMLY;


ALTER TABLE public.events OWNER TO gpadmin;

--
-- Name: events_sildemande; Type: TABLE; Schema: public; Owner: gpadmin; Tablespace: 
--

CREATE TABLE public.events_sildemande (
    j json
)
 DISTRIBUTED RANDOMLY;


ALTER TABLE public.events_sildemande OWNER TO gpadmin;

--
-- Name: gprabbitmqloadext_436037c6b092925781ab6c2f0cf10cbb; Type: EXTERNAL TABLE; Schema: public; Owner: gpadmin; Tablespace: 
--

CREATE EXTERNAL TABLE public.gprabbitmqloadext_436037c6b092925781ab6c2f0cf10cbb (
    j json
) LOCATION (
    'gpfdist://6b33f90b3523:8080/gprabbitmqload/%22public%22.%22gprabbitmqloadext_436037c6b092925781ab6c2f0cf10cbb%22'
) ON ALL 
FORMAT 'custom' (formatter = 'json_in')
ENCODING 'UTF8';


ALTER EXTERNAL TABLE public.gprabbitmqloadext_436037c6b092925781ab6c2f0cf10cbb OWNER TO gpadmin;

--
-- Name: gprabbitmqloadext_7dc52743d42d0d2437e25e8bb9c31ac2; Type: EXTERNAL TABLE; Schema: public; Owner: gpadmin; Tablespace: 
--

CREATE EXTERNAL TABLE public.gprabbitmqloadext_7dc52743d42d0d2437e25e8bb9c31ac2 (
    j json
) LOCATION (
    'gpfdist://6b33f90b3523:8080/gprabbitmqload/%22public%22.%22gprabbitmqloadext_7dc52743d42d0d2437e25e8bb9c31ac2%22'
) ON ALL 
FORMAT 'custom' (formatter = 'json_in')
ENCODING 'UTF8'
LOG ERRORS SEGMENT REJECT LIMIT 25 ROWS;


ALTER EXTERNAL TABLE public.gprabbitmqloadext_7dc52743d42d0d2437e25e8bb9c31ac2 OWNER TO gpadmin;

--
-- Name: gprabbitmqloadext_b2bf85180b1ef369df6792a24e3cb572; Type: EXTERNAL TABLE; Schema: public; Owner: gpadmin; Tablespace: 
--

CREATE EXTERNAL TABLE public.gprabbitmqloadext_b2bf85180b1ef369df6792a24e3cb572 (
    j json
) LOCATION (
    'gpfdist://6b33f90b3523:8080/gprabbitmqload/%22public%22.%22gprabbitmqloadext_b2bf85180b1ef369df6792a24e3cb572%22'
) ON ALL 
FORMAT 'custom' (formatter = 'json_in')
ENCODING 'UTF8'
LOG ERRORS SEGMENT REJECT LIMIT 25 ROWS;


ALTER EXTERNAL TABLE public.gprabbitmqloadext_b2bf85180b1ef369df6792a24e3cb572 OWNER TO gpadmin;

--
-- Name: gprabbitmqloadext_b5717ee6bd38d8ea9a6c070b9b84003d; Type: EXTERNAL TABLE; Schema: public; Owner: gpadmin; Tablespace: 
--

CREATE EXTERNAL TABLE public.gprabbitmqloadext_b5717ee6bd38d8ea9a6c070b9b84003d (
    j json
) LOCATION (
    'gpfdist://6b33f90b3523:8080/gprabbitmqload/%22public%22.%22gprabbitmqloadext_b5717ee6bd38d8ea9a6c070b9b84003d%22'
) ON ALL 
FORMAT 'custom' (formatter = 'json_in')
ENCODING 'UTF8'
LOG ERRORS SEGMENT REJECT LIMIT 25 ROWS;


ALTER EXTERNAL TABLE public.gprabbitmqloadext_b5717ee6bd38d8ea9a6c070b9b84003d OWNER TO gpadmin;

--
-- Name: gprabbitmqloadext_c158bd7bc241bf21603c7fa699e7003c; Type: EXTERNAL TABLE; Schema: public; Owner: gpadmin; Tablespace: 
--

CREATE EXTERNAL TABLE public.gprabbitmqloadext_c158bd7bc241bf21603c7fa699e7003c (
    j json
) LOCATION (
    'gpfdist://6b33f90b3523:8080/gprabbitmqload/%22public%22.%22gprabbitmqloadext_c158bd7bc241bf21603c7fa699e7003c%22'
) ON ALL 
FORMAT 'custom' (formatter = 'json_in')
ENCODING 'UTF8';


ALTER EXTERNAL TABLE public.gprabbitmqloadext_c158bd7bc241bf21603c7fa699e7003c OWNER TO gpadmin;

--
-- Name: gprabbitmqloadext_d4f48ae5442a21681e2441372a4920f8; Type: EXTERNAL TABLE; Schema: public; Owner: gpadmin; Tablespace: 
--

CREATE EXTERNAL TABLE public.gprabbitmqloadext_d4f48ae5442a21681e2441372a4920f8 (
    j json
) LOCATION (
    'gpfdist://6b33f90b3523:8080/gprabbitmqload/%22public%22.%22gprabbitmqloadext_d4f48ae5442a21681e2441372a4920f8%22'
) ON ALL 
FORMAT 'custom' (formatter = 'json_in')
ENCODING 'UTF8'
LOG ERRORS SEGMENT REJECT LIMIT 25 ROWS;


ALTER EXTERNAL TABLE public.gprabbitmqloadext_d4f48ae5442a21681e2441372a4920f8 OWNER TO gpadmin;

--
-- Name: sildemande; Type: TABLE; Schema: public; Owner: gpadmin; Tablespace: 
--

CREATE TABLE public.sildemande (
    id integer NOT NULL,
    idsite integer,
    numdemande character varying(20),
    numpermanent character varying(20),
    idpatient integer,
    iddemandeorigine integer,
    idsiteorigine integer,
    numdemandeorigine character varying(20),
    status character varying(20),
    statusdelai character varying(20),
    pathologique character varying(20),
    saisietype character varying(20),
    saisiedate date,
    saisieheure time without time zone,
    saisiepar integer,
    demandedate date,
    validedate date,
    valideheure time without time zone,
    validepar integer,
    valideauto smallint,
    demandedatearchive date,
    urgent smallint,
    gratuit smallint,
    datebutoire date,
    majdossierpatient smallint,
    ordonnancedate date,
    codebeneficiaire smallint,
    codeexoneration character varying(4),
    codecouverture character varying(5),
    assurancenature smallint,
    accidenttravailregime character varying(20),
    accidenttravailnumero character varying(20),
    accidenttravailsupport smallint,
    accidenttravaildate date,
    accidentcommun smallint,
    accidentcommundate date,
    facturestatus character varying(20),
    idtarif integer,
    sesamvitale smallint,
    numerologicmax integer,
    statusfse smallint,
    datepromesse integer,
    compterendunbrinitial integer,
    compterendunbr integer,
    compterendunbreffectue integer,
    motclef character varying(20),
    cacheanteriorite smallint,
    valab smallint,
    origineprescription character varying(20),
    medecintraitant character varying(1),
    infosup text,
    saisieparvitale smallint,
    idtuteur integer,
    garde smallint,
    critique integer
)
 DISTRIBUTED BY (id);


ALTER TABLE public.sildemande OWNER TO gpadmin;

--
-- Name: sildemandeanalyse; Type: TABLE; Schema: public; Owner: gpadmin; Tablespace: 
--

CREATE TABLE public.sildemandeanalyse (
    id integer NOT NULL,
    iddemande integer,
    idanalyse integer,
    idsiteanalyse integer,
    referencenomenclature character varying(20),
    clef character(3),
    coefficient numeric(8,2),
    informationsouhaitee smallint,
    facturation character varying(20),
    urgent smallint,
    manquant smallint,
    idcorrespondant integer,
    transmis smallint,
    saisiedate date,
    iddemandeprelevement integer
)
 DISTRIBUTED BY (id);


ALTER TABLE public.sildemandeanalyse OWNER TO gpadmin;

--
-- Name: sildemandeanalyse_id_seq; Type: SEQUENCE; Schema: public; Owner: gpadmin
--

CREATE SEQUENCE public.sildemandeanalyse_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sildemandeanalyse_id_seq OWNER TO gpadmin;

--
-- Name: sildemandeanalyse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gpadmin
--

ALTER SEQUENCE public.sildemandeanalyse_id_seq OWNED BY public.sildemandeanalyse.id;


--
-- Name: sildemandeprelevement; Type: TABLE; Schema: public; Owner: gpadmin; Tablespace: 
--

CREATE TABLE public.sildemandeprelevement (
    id integer NOT NULL,
    iddemande integer,
    prelevedate date,
    preleveheure time without time zone,
    prelevepar integer,
    prelevelieu text,
    idprelevement integer,
    clef character varying(5),
    coefficient double precision,
    montant numeric(10,2),
    remise character varying(12),
    prelevementdeplacement smallint,
    montantdeplacement numeric(5,2),
    nbrkilometres numeric(10,2),
    nbrkmnonfranchise numeric(10,2),
    montantkilometres numeric(10,2),
    prelevementnuit smallint,
    montantprelevementnuit numeric(5,2),
    prelevementferie smallint,
    montantprelevementferie numeric(5,2),
    prelevementmau smallint,
    prelevementmontantmau numeric(5,2),
    prelevementmie smallint,
    prelevementmontantmie numeric(5,2),
    montantdepassement numeric(5,2),
    montantdivers numeric(5,2),
    typekilometre character varying(5),
    factprelev numeric(5,2),
    factkm numeric(5,1),
    factkmmontant numeric(5,2),
    factekm numeric(5,2),
    prelevementdomicile smallint,
    prelevementheurerecpt time without time zone,
    prelevementdaterecpt date,
    facturation character varying(20),
    idetiqueteur integer,
    seance integer,
    kalirespreleveur smallint
)
 DISTRIBUTED BY (id);


ALTER TABLE public.sildemandeprelevement OWNER TO gpadmin;

--
-- Name: sildemandeprelevement_id_seq; Type: SEQUENCE; Schema: public; Owner: gpadmin
--

CREATE SEQUENCE public.sildemandeprelevement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sildemandeprelevement_id_seq OWNER TO gpadmin;

--
-- Name: sildemandeprelevement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gpadmin
--

ALTER SEQUENCE public.sildemandeprelevement_id_seq OWNED BY public.sildemandeprelevement.id;


--
-- Name: silnumtube; Type: TABLE; Schema: public; Owner: gpadmin; Tablespace: 
--

CREATE TABLE public.silnumtube (
    id integer NOT NULL,
    iddemande integer,
    codetube character varying(30),
    numtube character varying(30),
    increment integer,
    codeliquide character(2),
    idetiquette integer,
    envoi integer,
    archive smallint
)
 DISTRIBUTED BY (id);


ALTER TABLE public.silnumtube OWNER TO gpadmin;

--
-- Name: silnumtube_id_seq; Type: SEQUENCE; Schema: public; Owner: gpadmin
--

CREATE SEQUENCE public.silnumtube_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.silnumtube_id_seq OWNER TO gpadmin;

--
-- Name: silnumtube_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gpadmin
--

ALTER SEQUENCE public.silnumtube_id_seq OWNED BY public.silnumtube.id;


--
-- Name: silnumtubelien; Type: TABLE; Schema: public; Owner: gpadmin; Tablespace: 
--

CREATE TABLE public.silnumtubelien (
    id integer,
    idtube integer,
    idtype character varying(20),
    idreference integer,
    iddemande integer,
    envoi smallint
)
 DISTRIBUTED BY (id);


ALTER TABLE public.silnumtubelien OWNER TO gpadmin;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gpadmin
--

ALTER TABLE ONLY public.sildemandeanalyse ALTER COLUMN id SET DEFAULT nextval('public.sildemandeanalyse_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gpadmin
--

ALTER TABLE ONLY public.sildemandeprelevement ALTER COLUMN id SET DEFAULT nextval('public.sildemandeprelevement_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gpadmin
--

ALTER TABLE ONLY public.silnumtube ALTER COLUMN id SET DEFAULT nextval('public.silnumtube_id_seq'::regclass);


--
-- Name: sildemande_pkey; Type: CONSTRAINT; Schema: public; Owner: gpadmin; Tablespace: 
--

ALTER TABLE ONLY public.sildemande
    ADD CONSTRAINT sildemande_pkey PRIMARY KEY (id);


--
-- Name: sildemandeanalyse_pkey; Type: CONSTRAINT; Schema: public; Owner: gpadmin; Tablespace: 
--

ALTER TABLE ONLY public.sildemandeanalyse
    ADD CONSTRAINT sildemandeanalyse_pkey PRIMARY KEY (id);


--
-- Name: sildemandeprelevement_pkey; Type: CONSTRAINT; Schema: public; Owner: gpadmin; Tablespace: 
--

ALTER TABLE ONLY public.sildemandeprelevement
    ADD CONSTRAINT sildemandeprelevement_pkey PRIMARY KEY (id);


--
-- Name: silnumtube_pkey; Type: CONSTRAINT; Schema: public; Owner: gpadmin; Tablespace: 
--

ALTER TABLE ONLY public.silnumtube
    ADD CONSTRAINT silnumtube_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: gpadmin
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM gpadmin;
GRANT ALL ON SCHEMA public TO gpadmin;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Greenplum Database database dump complete
--

