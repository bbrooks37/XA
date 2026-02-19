--
-- PostgreSQL database dump
--

\restrict lp9CMaNNWWYxvUeKDDk0g7VkKSeoaknBmgisT4lle7VlLe4ss8cPBq5s8rKZhpV

-- Dumped from database version 16.11 (Ubuntu 16.11-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.11 (Ubuntu 16.11-0ubuntu0.24.04.1)

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
-- Name: aircraft_flight_logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aircraft_flight_logs (
    id integer NOT NULL,
    log_date date,
    tail_number text,
    aircraft_type text,
    origin_airport text,
    destination_city text,
    hobbs_hours numeric(10,2),
    fuel_gallons numeric(10,2),
    fuel_cost_usd numeric(10,2),
    pilot_cost_usd numeric(10,2),
    notes text,
    fuel_per_hour numeric GENERATED ALWAYS AS ((fuel_gallons / NULLIF(hobbs_hours, (0)::numeric))) STORED
);


ALTER TABLE public.aircraft_flight_logs OWNER TO postgres;

--
-- Name: aircraft_flight_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aircraft_flight_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.aircraft_flight_logs_id_seq OWNER TO postgres;

--
-- Name: aircraft_flight_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aircraft_flight_logs_id_seq OWNED BY public.aircraft_flight_logs.id;


--
-- Name: aircraft_maintenance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aircraft_maintenance (
    id integer NOT NULL,
    category text,
    item_number text,
    description text,
    interval_hrs numeric,
    last_done_hrs numeric,
    next_due_hrs numeric,
    remaining_hrs numeric
);


ALTER TABLE public.aircraft_maintenance OWNER TO postgres;

--
-- Name: aircraft_maintenance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aircraft_maintenance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.aircraft_maintenance_id_seq OWNER TO postgres;

--
-- Name: aircraft_maintenance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aircraft_maintenance_id_seq OWNED BY public.aircraft_maintenance.id;


--
-- Name: astra_flight_logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.astra_flight_logs (
    flight_date date,
    tail_number text DEFAULT 'N528RR'::text,
    pilots text,
    origin text,
    destination text,
    city_state text,
    hobbs_time numeric,
    fuel_gallons numeric,
    passengers integer,
    pilot_fees numeric,
    fuel_cost numeric,
    notes text
);


ALTER TABLE public.astra_flight_logs OWNER TO postgres;

--
-- Name: astra_maintenance_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.astra_maintenance_items (
    maintenance_item_type text,
    registration_number text,
    ata_code integer,
    manufacturing_maintenance_code text,
    item_description text,
    part_number_on text,
    serial_number_on text,
    part_number_off text,
    serial_number_off text,
    part_type text,
    tracked_by text,
    "position" numeric,
    log_date text,
    log_hours numeric,
    log_landings numeric,
    log_cycles numeric,
    log_rin numeric,
    recurring_hours numeric,
    recurring_days numeric,
    recurring_months numeric,
    recurring_landings numeric,
    recurring_cycles numeric,
    recurring_rin numeric,
    regular_notes text,
    ad_number text,
    ad_sb_status text,
    admin_notes text,
    amendment text,
    cycles_since_new numeric,
    cycles_since_overhaul numeric,
    cycles_since_repair numeric,
    disposition text,
    hard_next_due_date text,
    hard_next_due_hours numeric,
    hard_next_due_landings numeric,
    hard_next_due_cycles numeric,
    hard_next_due_rin numeric,
    hours_since_new numeric,
    hours_since_overhaul numeric,
    hours_since_repair numeric,
    interval_adjustment_hours numeric,
    interval_adjustment_days integer,
    interval_adjustment_months integer,
    interval_adjustment_landings integer,
    interval_adjustment_cycles numeric,
    is_end_of_month_adjustment boolean,
    is_inspection_passed text,
    item_number integer,
    landings_since_new numeric,
    landings_since_overhaul numeric,
    landings_since_repair numeric,
    estimated_work_hours numeric,
    months_since_new numeric,
    months_since_overhaul numeric,
    months_since_repair numeric,
    part_installed_status text,
    part_removal_reason text,
    reference text,
    regulatory_authority text,
    remaining_months numeric,
    remaining_days numeric,
    remaining_hours numeric,
    remaining_landings numeric,
    remaining_cycles numeric,
    remaining_rin numeric,
    requirement_type text,
    revision_id numeric,
    rin_on_part numeric,
    threshold_hours numeric,
    threshold_days numeric,
    threshold_months numeric,
    threshold_landings numeric,
    threshold_cycles numeric,
    threshold_rin numeric,
    is_threshold boolean,
    tolerance_hours numeric,
    tolerance_days numeric,
    tolerance_months numeric,
    tolerance_landings numeric,
    tolerance_cycles numeric,
    tolerance_rin numeric,
    warranty_start_date text,
    warranty_hours numeric,
    warranty_days numeric,
    warranty_months numeric,
    warranty_landings numeric,
    warranty_cycles numeric,
    warranty_rin numeric,
    id text,
    delete boolean,
    next_due_assist boolean,
    is_optional text,
    next_due_status text,
    estimated_due_date text,
    tags text,
    salesforce_case_number numeric
);


ALTER TABLE public.astra_maintenance_items OWNER TO postgres;

--
-- Name: maintenance_due_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.maintenance_due_list (
    registration_number text,
    operator text,
    airframe_report_date text,
    airframe_hours text,
    airframe_landings text,
    ata_code text,
    tracked_by text,
    equip_hours text,
    equip_cycles text,
    equip_landings text,
    equip_rin text,
    item_type text,
    req_type text,
    disposition text,
    "group" text,
    description text,
    reference text,
    part_number text,
    serial_number text,
    work_order text,
    scheduled text,
    est_hours text,
    notes text,
    compliance_date text,
    compliance_hours text,
    compliance_landings text,
    compliance_cycles text,
    compliance_rin text,
    interval_days text,
    interval_months text,
    interval_hours text,
    interval_landings text,
    interval_cycles text,
    interval_rin text,
    tolerance_months text,
    tolerance_days text,
    tolerance_hours text,
    tolerance_landings text,
    tolerance_cycles text,
    tolerance_rin text,
    next_due_date text,
    max_next_due_date text,
    next_due_hours text,
    max_next_due_hours text,
    next_due_landings text,
    max_next_due_landings text,
    next_due_cycles text,
    max_next_due_cycles text,
    next_due_rin text,
    max_next_due_rin text,
    remaining_days text,
    max_remaining_days text,
    remaining_months text,
    max_remaining_months text,
    remaining_hours text,
    max_remaining_hours text,
    remaining_landings text,
    max_remaining_landings text,
    remaining_cycles text,
    max_remaining_cycles text,
    remaining_rin text,
    max_remaining_rin text,
    is_optional text,
    next_due_status text,
    aircraft_grounded text,
    est_due_date text,
    msn text,
    mso text,
    msr text,
    hsn text,
    hso text,
    hsr text,
    lsn text,
    lso text,
    lsr text,
    tags text,
    sf_case text
);


ALTER TABLE public.maintenance_due_list OWNER TO postgres;

--
-- Name: aircraft_flight_logs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aircraft_flight_logs ALTER COLUMN id SET DEFAULT nextval('public.aircraft_flight_logs_id_seq'::regclass);


--
-- Name: aircraft_maintenance id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aircraft_maintenance ALTER COLUMN id SET DEFAULT nextval('public.aircraft_maintenance_id_seq'::regclass);


--
-- Name: aircraft_flight_logs aircraft_flight_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aircraft_flight_logs
    ADD CONSTRAINT aircraft_flight_logs_pkey PRIMARY KEY (id);


--
-- Name: aircraft_maintenance aircraft_maintenance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aircraft_maintenance
    ADD CONSTRAINT aircraft_maintenance_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict lp9CMaNNWWYxvUeKDDk0g7VkKSeoaknBmgisT4lle7VlLe4ss8cPBq5s8rKZhpV

