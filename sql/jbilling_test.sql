--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.user_role_map DROP CONSTRAINT user_role_map_fk_2;
ALTER TABLE ONLY public.user_role_map DROP CONSTRAINT user_role_map_fk_1;
ALTER TABLE ONLY public.purchase_order DROP CONSTRAINT purchase_order_fk_5;
ALTER TABLE ONLY public.purchase_order DROP CONSTRAINT purchase_order_fk_4;
ALTER TABLE ONLY public.purchase_order DROP CONSTRAINT purchase_order_fk_3;
ALTER TABLE ONLY public.purchase_order DROP CONSTRAINT purchase_order_fk_2;
ALTER TABLE ONLY public.purchase_order DROP CONSTRAINT purchase_order_fk_1;
ALTER TABLE ONLY public.promotion_user_map DROP CONSTRAINT promotion_user_map_fk_2;
ALTER TABLE ONLY public.promotion_user_map DROP CONSTRAINT promotion_user_map_fk_1;
ALTER TABLE ONLY public.promotion DROP CONSTRAINT promotion_fk_1;
ALTER TABLE ONLY public.process_run_user DROP CONSTRAINT process_run_user_fk_2;
ALTER TABLE ONLY public.process_run_user DROP CONSTRAINT process_run_user_fk_1;
ALTER TABLE ONLY public.process_run_total_pm DROP CONSTRAINT process_run_total_pm_fk_1;
ALTER TABLE ONLY public.process_run_total DROP CONSTRAINT process_run_total_fk_2;
ALTER TABLE ONLY public.process_run_total DROP CONSTRAINT process_run_total_fk_1;
ALTER TABLE ONLY public.process_run DROP CONSTRAINT process_run_fk_2;
ALTER TABLE ONLY public.process_run DROP CONSTRAINT process_run_fk_1;
ALTER TABLE ONLY public.price_model DROP CONSTRAINT price_model_next_id_fk;
ALTER TABLE ONLY public.price_model DROP CONSTRAINT price_model_currency_id_fk;
ALTER TABLE ONLY public.price_model_attribute DROP CONSTRAINT price_model_attr_model_id_fk;
ALTER TABLE ONLY public.preference DROP CONSTRAINT preference_fk_2;
ALTER TABLE ONLY public.preference DROP CONSTRAINT preference_fk_1;
ALTER TABLE ONLY public.pluggable_task_type DROP CONSTRAINT pluggable_task_type_fk_1;
ALTER TABLE ONLY public.pluggable_task_parameter DROP CONSTRAINT pluggable_task_parameter_fk_1;
ALTER TABLE ONLY public.pluggable_task DROP CONSTRAINT pluggable_task_fk_2;
ALTER TABLE ONLY public.pluggable_task DROP CONSTRAINT pluggable_task_fk_1;
ALTER TABLE ONLY public.plan DROP CONSTRAINT plan_period_id_fk;
ALTER TABLE ONLY public.plan_item DROP CONSTRAINT plan_item_price_model_id_fk;
ALTER TABLE ONLY public.plan_item DROP CONSTRAINT plan_item_plan_id_fk;
ALTER TABLE ONLY public.plan_item DROP CONSTRAINT plan_item_period_id_fk;
ALTER TABLE ONLY public.plan_item DROP CONSTRAINT plan_item_item_id_fk;
ALTER TABLE ONLY public.plan DROP CONSTRAINT plan_item_id_fk;
ALTER TABLE ONLY public.permission_user DROP CONSTRAINT permission_user_fk_2;
ALTER TABLE ONLY public.permission_user DROP CONSTRAINT permission_user_fk_1;
ALTER TABLE ONLY public.permission_role_map DROP CONSTRAINT permission_role_map_fk_2;
ALTER TABLE ONLY public.permission_role_map DROP CONSTRAINT permission_role_map_fk_1;
ALTER TABLE ONLY public.permission DROP CONSTRAINT permission_fk_1;
ALTER TABLE ONLY public.payment_invoice DROP CONSTRAINT payment_invoice_fk_2;
ALTER TABLE ONLY public.payment_invoice DROP CONSTRAINT payment_invoice_fk_1;
ALTER TABLE ONLY public.payment_info_cheque DROP CONSTRAINT payment_info_cheque_fk_1;
ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_fk_6;
ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_fk_5;
ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_fk_4;
ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_fk_3;
ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_fk_2;
ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_fk_1;
ALTER TABLE ONLY public.payment_authorization DROP CONSTRAINT payment_authorization_fk_1;
ALTER TABLE ONLY public.partner_payout DROP CONSTRAINT partner_payout_fk_1;
ALTER TABLE ONLY public.partner DROP CONSTRAINT partner_fk_4;
ALTER TABLE ONLY public.partner DROP CONSTRAINT partner_fk_3;
ALTER TABLE ONLY public.partner DROP CONSTRAINT partner_fk_2;
ALTER TABLE ONLY public.partner DROP CONSTRAINT partner_fk_1;
ALTER TABLE ONLY public.order_period DROP CONSTRAINT order_period_fk_2;
ALTER TABLE ONLY public.order_period DROP CONSTRAINT order_period_fk_1;
ALTER TABLE ONLY public.order_line DROP CONSTRAINT order_line_fk_3;
ALTER TABLE ONLY public.order_line DROP CONSTRAINT order_line_fk_1;
ALTER TABLE ONLY public.notification_message_section DROP CONSTRAINT notification_message_section_fk_1;
ALTER TABLE ONLY public.notification_message_line DROP CONSTRAINT notification_message_line_fk_1;
ALTER TABLE ONLY public.notification_message DROP CONSTRAINT notification_message_fk_3;
ALTER TABLE ONLY public.notification_message DROP CONSTRAINT notification_message_fk_2;
ALTER TABLE ONLY public.notification_message DROP CONSTRAINT notification_message_fk_1;
ALTER TABLE ONLY public.notification_message_arch_line DROP CONSTRAINT notif_mess_arch_line_fk_1;
ALTER TABLE ONLY public.menu_option DROP CONSTRAINT menu_option_fk_1;
ALTER TABLE ONLY public.mediation_record_line DROP CONSTRAINT mediation_record_line_fk_2;
ALTER TABLE ONLY public.mediation_record_line DROP CONSTRAINT mediation_record_line_fk_1;
ALTER TABLE ONLY public.mediation_record DROP CONSTRAINT mediation_record_fk_2;
ALTER TABLE ONLY public.mediation_record DROP CONSTRAINT mediation_record_fk_1;
ALTER TABLE ONLY public.mediation_process DROP CONSTRAINT mediation_process_fk_1;
ALTER TABLE ONLY public.mediation_order_map DROP CONSTRAINT mediation_order_map_fk_2;
ALTER TABLE ONLY public.mediation_order_map DROP CONSTRAINT mediation_order_map_fk_1;
ALTER TABLE ONLY public.mediation_cfg DROP CONSTRAINT mediation_cfg_fk_1;
ALTER TABLE ONLY public.list_field DROP CONSTRAINT list_field_fk_1;
ALTER TABLE ONLY public.list_field_entity DROP CONSTRAINT list_field_entity_fk_2;
ALTER TABLE ONLY public.list_field_entity DROP CONSTRAINT list_field_entity_fk_1;
ALTER TABLE ONLY public.list_entity DROP CONSTRAINT list_entity_fk_2;
ALTER TABLE ONLY public.list_entity DROP CONSTRAINT list_entity_fk_1;
ALTER TABLE ONLY public.item_type_map DROP CONSTRAINT item_type_map_fk_2;
ALTER TABLE ONLY public.item_type_map DROP CONSTRAINT item_type_map_fk_1;
ALTER TABLE ONLY public.item_type DROP CONSTRAINT item_type_fk_1;
ALTER TABLE ONLY public.item DROP CONSTRAINT item_fk_1;
ALTER TABLE ONLY public.invoice_line DROP CONSTRAINT invoice_line_fk_3;
ALTER TABLE ONLY public.invoice_line DROP CONSTRAINT invoice_line_fk_2;
ALTER TABLE ONLY public.invoice_line DROP CONSTRAINT invoice_line_fk_1;
ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_fk_4;
ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_fk_3;
ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_fk_2;
ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_fk_1;
ALTER TABLE ONLY public.international_description DROP CONSTRAINT international_description_fk_2;
ALTER TABLE ONLY public.international_description DROP CONSTRAINT international_description_fk_1;
ALTER TABLE ONLY public.generic_status DROP CONSTRAINT generic_status_fk_1;
ALTER TABLE ONLY public.event_log DROP CONSTRAINT event_log_fk_6;
ALTER TABLE ONLY public.event_log DROP CONSTRAINT event_log_fk_5;
ALTER TABLE ONLY public.event_log DROP CONSTRAINT event_log_fk_4;
ALTER TABLE ONLY public.event_log DROP CONSTRAINT event_log_fk_3;
ALTER TABLE ONLY public.event_log DROP CONSTRAINT event_log_fk_2;
ALTER TABLE ONLY public.event_log DROP CONSTRAINT event_log_fk_1;
ALTER TABLE ONLY public.entity_payment_method_map DROP CONSTRAINT entity_payment_method_map_fk_2;
ALTER TABLE ONLY public.entity_payment_method_map DROP CONSTRAINT entity_payment_method_map_fk_1;
ALTER TABLE ONLY public.entity DROP CONSTRAINT entity_fk_2;
ALTER TABLE ONLY public.entity DROP CONSTRAINT entity_fk_1;
ALTER TABLE ONLY public.entity_delivery_method_map DROP CONSTRAINT entity_delivery_method_map_fk_2;
ALTER TABLE ONLY public.entity_delivery_method_map DROP CONSTRAINT entity_delivery_method_map_fk_1;
ALTER TABLE ONLY public.customer_price DROP CONSTRAINT customer_price_user_id_fk;
ALTER TABLE ONLY public.customer_price DROP CONSTRAINT customer_price_plan_item_id_fk;
ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_fk_3;
ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_fk_2;
ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_fk_1;
ALTER TABLE ONLY public.currency_exchange DROP CONSTRAINT currency_exchange_fk_1;
ALTER TABLE ONLY public.currency_entity_map DROP CONSTRAINT currency_entity_map_fk_2;
ALTER TABLE ONLY public.currency_entity_map DROP CONSTRAINT currency_entity_map_fk_1;
ALTER TABLE ONLY public.contact_type DROP CONSTRAINT contact_type_fk_1;
ALTER TABLE ONLY public.contact_map DROP CONSTRAINT contact_map_fk_3;
ALTER TABLE ONLY public.contact_map DROP CONSTRAINT contact_map_fk_2;
ALTER TABLE ONLY public.contact_map DROP CONSTRAINT contact_map_fk_1;
ALTER TABLE ONLY public.contact_field_type DROP CONSTRAINT contact_field_type_fk_1;
ALTER TABLE ONLY public.contact_field DROP CONSTRAINT contact_field_fk_2;
ALTER TABLE ONLY public.contact_field DROP CONSTRAINT contact_field_fk_1;
ALTER TABLE ONLY public.notification_message_type DROP CONSTRAINT category_id_fk_1;
ALTER TABLE ONLY public.blacklist DROP CONSTRAINT blacklist_fk_2;
ALTER TABLE ONLY public.blacklist DROP CONSTRAINT blacklist_fk_1;
ALTER TABLE ONLY public.billing_process DROP CONSTRAINT billing_process_fk_3;
ALTER TABLE ONLY public.billing_process DROP CONSTRAINT billing_process_fk_2;
ALTER TABLE ONLY public.billing_process DROP CONSTRAINT billing_process_fk_1;
ALTER TABLE ONLY public.billing_process_configuration DROP CONSTRAINT billing_process_configuration_fk_2;
ALTER TABLE ONLY public.billing_process_configuration DROP CONSTRAINT billing_process_configuration_fk_1;
ALTER TABLE ONLY public.base_user DROP CONSTRAINT base_user_fk_5;
ALTER TABLE ONLY public.base_user DROP CONSTRAINT base_user_fk_4;
ALTER TABLE ONLY public.base_user DROP CONSTRAINT base_user_fk_3;
ALTER TABLE ONLY public.ageing_entity_step DROP CONSTRAINT ageing_entity_step_fk_2;
ALTER TABLE ONLY public.ach DROP CONSTRAINT ach_fk_1;
DROP INDEX public.user_role_map_i_role;
DROP INDEX public.user_role_map_i_2;
DROP INDEX public.user_credit_card_map_i_2;
DROP INDEX public.transaction_id;
DROP INDEX public.purchase_order_i_user;
DROP INDEX public.purchase_order_i_notif;
DROP INDEX public.promotion_user_map_i_2;
DROP INDEX public.plan_item_precedence_i;
DROP INDEX public.plan_item_item_id_i;
DROP INDEX public.permission_user_map_i_2;
DROP INDEX public.permission_role_map_i_2;
DROP INDEX public.payment_i_3;
DROP INDEX public.payment_i_2;
DROP INDEX public.partner_range_p;
DROP INDEX public.partner_payout_i_2;
DROP INDEX public.partner_i_3;
DROP INDEX public.mediation_record_i;
DROP INDEX public.ix_uq_payment_inv_map_pa_in;
DROP INDEX public.ix_uq_order_process_or_in;
DROP INDEX public.ix_uq_order_process_or_bp;
DROP INDEX public.ix_purchase_order_date;
DROP INDEX public.ix_promotion_code;
DROP INDEX public.ix_pa_payment;
DROP INDEX public.ix_order_process_in;
DROP INDEX public.ix_order_line_order_id;
DROP INDEX public.ix_order_line_item_id;
DROP INDEX public.ix_mrl_order_line;
DROP INDEX public.ix_item_ent;
DROP INDEX public.ix_invoice_user_id;
DROP INDEX public.ix_invoice_ts;
DROP INDEX public.ix_invoice_process;
DROP INDEX public.ix_invoice_number;
DROP INDEX public.ix_invoice_line_invoice_id;
DROP INDEX public.ix_invoice_due_date;
DROP INDEX public.ix_invoice_date;
DROP INDEX public.ix_el_main;
DROP INDEX public.ix_contact_phone;
DROP INDEX public.ix_contact_orgname;
DROP INDEX public.ix_contact_lname;
DROP INDEX public.ix_contact_fname_lname;
DROP INDEX public.ix_contact_fname;
DROP INDEX public.ix_contact_field_content;
DROP INDEX public.ix_contact_field_cid;
DROP INDEX public.ix_contact_address;
DROP INDEX public.ix_cf_type_entity;
DROP INDEX public.ix_cc_number_encrypted;
DROP INDEX public.ix_cc_number;
DROP INDEX public.ix_blacklist_user_type;
DROP INDEX public.ix_blacklist_entity_type;
DROP INDEX public.ix_base_user_un;
DROP INDEX public.international_description_i_2;
DROP INDEX public.int_description_i_lan;
DROP INDEX public.customer_i_2;
DROP INDEX public.currency_entity_map_i_2;
DROP INDEX public.create_datetime;
DROP INDEX public.contact_map_i_3;
DROP INDEX public.contact_map_i_1;
DROP INDEX public.contact_i_del;
DROP INDEX public.bp_run_total_run_ix;
DROP INDEX public.bp_run_process_ix;
DROP INDEX public.bp_pm_index_total;
DROP INDEX public.ach_i_2;
ALTER TABLE ONLY public.shortcut DROP CONSTRAINT shortcut_pkey;
ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
ALTER TABLE ONLY public.recent_item DROP CONSTRAINT recent_item_pkey;
ALTER TABLE ONLY public.purchase_order DROP CONSTRAINT purchase_order_pkey;
ALTER TABLE ONLY public.promotion DROP CONSTRAINT promotion_pkey;
ALTER TABLE ONLY public.process_run_user DROP CONSTRAINT process_run_user_pkey;
ALTER TABLE ONLY public.process_run_total_pm DROP CONSTRAINT process_run_total_pm_pkey;
ALTER TABLE ONLY public.process_run_total DROP CONSTRAINT process_run_total_pkey;
ALTER TABLE ONLY public.process_run DROP CONSTRAINT process_run_pkey;
ALTER TABLE ONLY public.price_model DROP CONSTRAINT price_model_pkey;
ALTER TABLE ONLY public.price_model_attribute DROP CONSTRAINT price_model_attribute_pkey;
ALTER TABLE ONLY public.preference_type DROP CONSTRAINT preference_type_pkey;
ALTER TABLE ONLY public.preference DROP CONSTRAINT preference_pkey;
ALTER TABLE ONLY public.pluggable_task_type DROP CONSTRAINT pluggable_task_type_pkey;
ALTER TABLE ONLY public.pluggable_task_type_category DROP CONSTRAINT pluggable_task_type_category_pkey;
ALTER TABLE ONLY public.pluggable_task DROP CONSTRAINT pluggable_task_pkey;
ALTER TABLE ONLY public.pluggable_task_parameter DROP CONSTRAINT pluggable_task_parameter_pkey;
ALTER TABLE ONLY public.plan DROP CONSTRAINT plan_pkey;
ALTER TABLE ONLY public.plan_item DROP CONSTRAINT plan_item_pkey;
ALTER TABLE ONLY public.permission_user DROP CONSTRAINT permission_user_pkey;
ALTER TABLE ONLY public.permission_type DROP CONSTRAINT permission_type_pkey;
ALTER TABLE ONLY public.permission DROP CONSTRAINT permission_pkey;
ALTER TABLE ONLY public.period_unit DROP CONSTRAINT period_unit_pkey;
ALTER TABLE ONLY public.payment_result DROP CONSTRAINT payment_result_pkey;
ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
ALTER TABLE ONLY public.payment_method DROP CONSTRAINT payment_method_pkey;
ALTER TABLE ONLY public.payment_invoice DROP CONSTRAINT payment_invoice_pkey;
ALTER TABLE ONLY public.payment_info_cheque DROP CONSTRAINT payment_info_cheque_pkey;
ALTER TABLE ONLY public.payment_authorization DROP CONSTRAINT payment_authorization_pkey;
ALTER TABLE ONLY public.partner_range DROP CONSTRAINT partner_range_pkey;
ALTER TABLE ONLY public.partner DROP CONSTRAINT partner_pkey;
ALTER TABLE ONLY public.partner_payout DROP CONSTRAINT partner_payout_pkey;
ALTER TABLE ONLY public.paper_invoice_batch DROP CONSTRAINT paper_invoice_batch_pkey;
ALTER TABLE ONLY public.order_process DROP CONSTRAINT order_process_pkey;
ALTER TABLE ONLY public.order_period DROP CONSTRAINT order_period_pkey;
ALTER TABLE ONLY public.order_line_type DROP CONSTRAINT order_line_type_pkey;
ALTER TABLE ONLY public.order_line DROP CONSTRAINT order_line_pkey;
ALTER TABLE ONLY public.order_billing_type DROP CONSTRAINT order_billing_type_pkey;
ALTER TABLE ONLY public.notification_message_type DROP CONSTRAINT notification_message_type_pkey;
ALTER TABLE ONLY public.notification_message_section DROP CONSTRAINT notification_message_section_pkey;
ALTER TABLE ONLY public.notification_message DROP CONSTRAINT notification_message_pkey;
ALTER TABLE ONLY public.notification_message_line DROP CONSTRAINT notification_message_line_pkey;
ALTER TABLE ONLY public.notification_message_arch DROP CONSTRAINT notification_message_arch_pkey;
ALTER TABLE ONLY public.notification_message_arch_line DROP CONSTRAINT notification_message_arch_line_pkey;
ALTER TABLE ONLY public.notification_category DROP CONSTRAINT notification_category_pk;
ALTER TABLE ONLY public.menu_option DROP CONSTRAINT menu_option_pkey;
ALTER TABLE ONLY public.mediation_record DROP CONSTRAINT mediation_record_pkey;
ALTER TABLE ONLY public.mediation_record_line DROP CONSTRAINT mediation_record_line_pkey;
ALTER TABLE ONLY public.mediation_process DROP CONSTRAINT mediation_process_pkey;
ALTER TABLE ONLY public.mediation_errors DROP CONSTRAINT mediation_errors_pkey;
ALTER TABLE ONLY public.mediation_cfg DROP CONSTRAINT mediation_cfg_pkey;
ALTER TABLE ONLY public.list DROP CONSTRAINT list_pkey;
ALTER TABLE ONLY public.list_field DROP CONSTRAINT list_field_pkey;
ALTER TABLE ONLY public.list_field_entity DROP CONSTRAINT list_field_entity_pkey;
ALTER TABLE ONLY public.list_entity DROP CONSTRAINT list_entity_pkey;
ALTER TABLE ONLY public.language DROP CONSTRAINT language_pkey;
ALTER TABLE ONLY public.jbilling_table DROP CONSTRAINT jbilling_table_pkey;
ALTER TABLE ONLY public.item_type DROP CONSTRAINT item_type_pkey;
ALTER TABLE ONLY public.item DROP CONSTRAINT item_pkey;
ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_pkey;
ALTER TABLE ONLY public.invoice_line_type DROP CONSTRAINT invoice_line_type_pkey;
ALTER TABLE ONLY public.invoice_line DROP CONSTRAINT invoice_line_pkey;
ALTER TABLE ONLY public.invoice_delivery_method DROP CONSTRAINT invoice_delivery_method_pkey;
ALTER TABLE ONLY public.international_description DROP CONSTRAINT international_description_pkey;
ALTER TABLE ONLY public.generic_status_type DROP CONSTRAINT generic_status_type_pkey;
ALTER TABLE ONLY public.generic_status DROP CONSTRAINT generic_status_pkey;
ALTER TABLE ONLY public.filter_set DROP CONSTRAINT filter_set_pkey;
ALTER TABLE ONLY public.filter DROP CONSTRAINT filter_pkey;
ALTER TABLE ONLY public.event_log DROP CONSTRAINT event_log_pkey;
ALTER TABLE ONLY public.event_log_module DROP CONSTRAINT event_log_module_pkey;
ALTER TABLE ONLY public.event_log_message DROP CONSTRAINT event_log_message_pkey;
ALTER TABLE ONLY public.entity DROP CONSTRAINT entity_pkey;
ALTER TABLE ONLY public.customer_price DROP CONSTRAINT customer_price_pkey;
ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
ALTER TABLE ONLY public.currency DROP CONSTRAINT currency_pkey;
ALTER TABLE ONLY public.currency_exchange DROP CONSTRAINT currency_exchange_pkey;
ALTER TABLE ONLY public.credit_card DROP CONSTRAINT credit_card_pkey;
ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
ALTER TABLE ONLY public.contact_type DROP CONSTRAINT contact_type_pkey;
ALTER TABLE ONLY public.contact DROP CONSTRAINT contact_pkey;
ALTER TABLE ONLY public.contact_map DROP CONSTRAINT contact_map_pkey;
ALTER TABLE ONLY public.contact_field_type DROP CONSTRAINT contact_field_type_pkey;
ALTER TABLE ONLY public.contact_field DROP CONSTRAINT contact_field_pkey;
ALTER TABLE ONLY public.cdrentries DROP CONSTRAINT cdrentries_pkey;
ALTER TABLE ONLY public.breadcrumb DROP CONSTRAINT breadcrumb_pkey;
ALTER TABLE ONLY public.blacklist DROP CONSTRAINT blacklist_pkey;
ALTER TABLE ONLY public.billing_process DROP CONSTRAINT billing_process_pkey;
ALTER TABLE ONLY public.billing_process_configuration DROP CONSTRAINT billing_process_configuration_pkey;
ALTER TABLE ONLY public.base_user DROP CONSTRAINT base_user_pkey;
ALTER TABLE ONLY public.ageing_entity_step DROP CONSTRAINT ageing_entity_step_pkey;
ALTER TABLE ONLY public.ach DROP CONSTRAINT ach_pkey;
DROP TABLE public.user_role_map;
DROP TABLE public.user_credit_card_map;
DROP TABLE public.shortcut;
DROP TABLE public.role;
DROP TABLE public.report_type;
DROP TABLE public.report_parameter;
DROP TABLE public.report;
DROP TABLE public.recent_item;
DROP TABLE public.purchase_order;
DROP TABLE public.promotion_user_map;
DROP TABLE public.promotion;
DROP TABLE public.process_run_user;
DROP TABLE public.process_run_total_pm;
DROP TABLE public.process_run_total;
DROP TABLE public.process_run;
DROP TABLE public.price_model_attribute;
DROP TABLE public.price_model;
DROP TABLE public.preference_type;
DROP TABLE public.preference;
DROP TABLE public.pluggable_task_type_category;
DROP TABLE public.pluggable_task_type;
DROP TABLE public.pluggable_task_parameter;
DROP TABLE public.pluggable_task;
DROP TABLE public.plan_item;
DROP TABLE public.plan;
DROP TABLE public.permission_user;
DROP TABLE public.permission_type;
DROP TABLE public.permission_role_map;
DROP TABLE public.permission;
DROP TABLE public.period_unit;
DROP TABLE public.payment_result;
DROP TABLE public.payment_method;
DROP TABLE public.payment_invoice;
DROP TABLE public.payment_info_cheque;
DROP TABLE public.payment_authorization;
DROP TABLE public.payment;
DROP TABLE public.partner_range;
DROP TABLE public.partner_payout;
DROP TABLE public.partner;
DROP TABLE public.paper_invoice_batch;
DROP TABLE public.order_process;
DROP TABLE public.order_period;
DROP TABLE public.order_line_type;
DROP TABLE public.order_line;
DROP TABLE public.order_billing_type;
DROP TABLE public.notification_message_type;
DROP TABLE public.notification_message_section;
DROP TABLE public.notification_message_line;
DROP TABLE public.notification_message_arch_line;
DROP TABLE public.notification_message_arch;
DROP TABLE public.notification_message;
DROP TABLE public.notification_category;
DROP TABLE public.menu_option;
DROP TABLE public.mediation_record_line;
DROP TABLE public.mediation_record;
DROP TABLE public.mediation_process;
DROP TABLE public.mediation_order_map;
DROP TABLE public.mediation_errors;
DROP TABLE public.mediation_cfg;
DROP TABLE public.list_field_entity;
DROP TABLE public.list_field;
DROP TABLE public.list_entity;
DROP TABLE public.list;
DROP TABLE public.language;
DROP TABLE public.jbilling_table;
DROP TABLE public.jbilling_seqs;
DROP TABLE public.item_type_map;
DROP TABLE public.item_type;
DROP TABLE public.item;
DROP TABLE public.invoice_line_type;
DROP TABLE public.invoice_line;
DROP TABLE public.invoice_delivery_method;
DROP TABLE public.invoice;
DROP TABLE public.international_description;
DROP TABLE public.generic_status_type;
DROP TABLE public.generic_status;
DROP TABLE public.filter_set_filter;
DROP TABLE public.filter_set;
DROP TABLE public.filter;
DROP TABLE public.event_log_module;
DROP TABLE public.event_log_message;
DROP TABLE public.event_log;
DROP TABLE public.entity_payment_method_map;
DROP TABLE public.entity_delivery_method_map;
DROP TABLE public.entity;
DROP TABLE public.customer_price;
DROP TABLE public.customer;
DROP TABLE public.currency_exchange;
DROP TABLE public.currency_entity_map;
DROP TABLE public.currency;
DROP TABLE public.credit_card;
DROP TABLE public.country;
DROP TABLE public.contact_type;
DROP TABLE public.contact_map;
DROP TABLE public.contact_field_type;
DROP TABLE public.contact_field;
DROP TABLE public.contact;
DROP TABLE public.cdrentries;
DROP TABLE public.breadcrumb;
DROP TABLE public.blacklist;
DROP TABLE public.billing_process_configuration;
DROP TABLE public.billing_process;
DROP TABLE public.base_user;
DROP TABLE public.ageing_entity_step;
DROP TABLE public.ach;
DROP PROCEDURAL LANGUAGE plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: jbilling
--

CREATE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO jbilling;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ach; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE ach (
    id integer NOT NULL,
    user_id integer,
    aba_routing character varying(40) NOT NULL,
    bank_account character varying(60) NOT NULL,
    account_type integer NOT NULL,
    bank_name character varying(50) NOT NULL,
    account_name character varying(100) NOT NULL,
    optlock integer NOT NULL,
    gateway_key character varying(100) DEFAULT NULL::character varying
);


ALTER TABLE public.ach OWNER TO jbilling;

--
-- Name: ageing_entity_step; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE ageing_entity_step (
    id integer NOT NULL,
    entity_id integer,
    status_id integer,
    days integer NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.ageing_entity_step OWNER TO jbilling;

--
-- Name: base_user; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE base_user (
    id integer NOT NULL,
    entity_id integer,
    password character varying(40),
    deleted smallint DEFAULT 0 NOT NULL,
    language_id integer,
    status_id integer,
    subscriber_status integer DEFAULT 1,
    currency_id integer,
    create_datetime timestamp without time zone NOT NULL,
    last_status_change timestamp without time zone,
    last_login timestamp without time zone,
    user_name character varying(50),
    failed_attempts integer DEFAULT 0 NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.base_user OWNER TO jbilling;

--
-- Name: billing_process; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE billing_process (
    id integer NOT NULL,
    entity_id integer NOT NULL,
    billing_date date NOT NULL,
    period_unit_id integer NOT NULL,
    period_value integer NOT NULL,
    is_review integer NOT NULL,
    paper_invoice_batch_id integer,
    retries_to_do integer DEFAULT 0 NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.billing_process OWNER TO jbilling;

--
-- Name: billing_process_configuration; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE billing_process_configuration (
    id integer NOT NULL,
    entity_id integer,
    next_run_date date NOT NULL,
    generate_report smallint NOT NULL,
    retries integer,
    days_for_retry integer,
    days_for_report integer,
    review_status integer NOT NULL,
    period_unit_id integer NOT NULL,
    period_value integer NOT NULL,
    due_date_unit_id integer NOT NULL,
    due_date_value integer NOT NULL,
    df_fm smallint,
    only_recurring smallint DEFAULT 1 NOT NULL,
    invoice_date_process smallint NOT NULL,
    optlock integer NOT NULL,
    auto_payment smallint DEFAULT 0 NOT NULL,
    maximum_periods integer DEFAULT 1 NOT NULL,
    auto_payment_application integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.billing_process_configuration OWNER TO jbilling;

--
-- Name: blacklist; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE blacklist (
    id integer NOT NULL,
    entity_id integer NOT NULL,
    create_datetime timestamp without time zone NOT NULL,
    type integer NOT NULL,
    source integer NOT NULL,
    credit_card integer,
    credit_card_id integer,
    contact_id integer,
    user_id integer,
    optlock integer NOT NULL
);


ALTER TABLE public.blacklist OWNER TO jbilling;

--
-- Name: breadcrumb; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE breadcrumb (
    id integer NOT NULL,
    user_id integer NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255),
    name character varying(255),
    object_id integer,
    version integer NOT NULL
);


ALTER TABLE public.breadcrumb OWNER TO jbilling;

--
-- Name: cdrentries; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE cdrentries (
    id integer NOT NULL,
    accountcode character varying(20),
    src character varying(20),
    dst character varying(20),
    dcontext character varying(20),
    clid character varying(20),
    channel character varying(20),
    dstchannel character varying(20),
    lastapp character varying(20),
    lastdatat character varying(20),
    start timestamp without time zone,
    answer timestamp without time zone,
    "end" timestamp without time zone,
    duration integer,
    billsec integer,
    disposition character varying(20),
    amaflags character varying(20),
    userfield character varying(100),
    ts timestamp without time zone
);


ALTER TABLE public.cdrentries OWNER TO jbilling;

--
-- Name: contact; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE contact (
    id integer NOT NULL,
    organization_name character varying(200),
    street_addres1 character varying(100),
    street_addres2 character varying(100),
    city character varying(50),
    state_province character varying(30),
    postal_code character varying(15),
    country_code character varying(2),
    last_name character varying(30),
    first_name character varying(30),
    person_initial character varying(5),
    person_title character varying(40),
    phone_country_code integer,
    phone_area_code integer,
    phone_phone_number character varying(20),
    fax_country_code integer,
    fax_area_code integer,
    fax_phone_number character varying(20),
    email character varying(200),
    create_datetime timestamp without time zone NOT NULL,
    deleted smallint DEFAULT 0 NOT NULL,
    notification_include smallint DEFAULT 1,
    user_id integer,
    optlock integer NOT NULL
);


ALTER TABLE public.contact OWNER TO jbilling;

--
-- Name: contact_field; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE contact_field (
    id integer NOT NULL,
    type_id integer,
    contact_id integer,
    content character varying(100) NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.contact_field OWNER TO jbilling;

--
-- Name: contact_field_type; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE contact_field_type (
    id integer NOT NULL,
    entity_id integer,
    prompt_key character varying(50) NOT NULL,
    data_type character varying(10) NOT NULL,
    customer_readonly smallint,
    optlock integer NOT NULL
);


ALTER TABLE public.contact_field_type OWNER TO jbilling;

--
-- Name: contact_map; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE contact_map (
    id integer NOT NULL,
    contact_id integer,
    type_id integer NOT NULL,
    table_id integer NOT NULL,
    foreign_id integer NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.contact_map OWNER TO jbilling;

--
-- Name: contact_type; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE contact_type (
    id integer NOT NULL,
    entity_id integer,
    is_primary smallint,
    optlock integer NOT NULL
);


ALTER TABLE public.contact_type OWNER TO jbilling;

--
-- Name: country; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE country (
    id integer NOT NULL,
    code character varying(2) NOT NULL
);


ALTER TABLE public.country OWNER TO jbilling;

--
-- Name: credit_card; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE credit_card (
    id integer NOT NULL,
    cc_number character varying(100) NOT NULL,
    cc_number_plain character varying(20),
    cc_expiry date NOT NULL,
    name character varying(150),
    cc_type integer NOT NULL,
    deleted smallint DEFAULT 0 NOT NULL,
    gateway_key character varying(100),
    optlock integer NOT NULL
);


ALTER TABLE public.credit_card OWNER TO jbilling;

--
-- Name: currency; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE currency (
    id integer NOT NULL,
    symbol character varying(10) NOT NULL,
    code character varying(3) NOT NULL,
    country_code character varying(2) NOT NULL
);


ALTER TABLE public.currency OWNER TO jbilling;

--
-- Name: currency_entity_map; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE currency_entity_map (
    currency_id integer,
    entity_id integer
);


ALTER TABLE public.currency_entity_map OWNER TO jbilling;

--
-- Name: currency_exchange; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE currency_exchange (
    id integer NOT NULL,
    entity_id integer,
    currency_id integer,
    rate numeric(22,10) NOT NULL,
    create_datetime timestamp without time zone NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.currency_exchange OWNER TO jbilling;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE customer (
    id integer NOT NULL,
    user_id integer,
    partner_id integer,
    referral_fee_paid smallint,
    invoice_delivery_method_id integer NOT NULL,
    notes character varying(1000),
    auto_payment_type integer,
    due_date_unit_id integer,
    due_date_value integer,
    df_fm smallint,
    parent_id integer,
    is_parent smallint,
    exclude_aging smallint DEFAULT 0 NOT NULL,
    invoice_child smallint,
    current_order_id integer,
    optlock integer NOT NULL,
    balance_type integer NOT NULL,
    dynamic_balance numeric(22,10),
    credit_limit numeric(22,10),
    auto_recharge numeric(22,10)
);


ALTER TABLE public.customer OWNER TO jbilling;

--
-- Name: customer_price; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE customer_price (
    plan_item_id integer NOT NULL,
    user_id integer NOT NULL,
    create_datetime timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.customer_price OWNER TO jbilling;

--
-- Name: entity; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE entity (
    id integer NOT NULL,
    external_id character varying(20),
    description character varying(100) NOT NULL,
    create_datetime timestamp without time zone NOT NULL,
    language_id integer NOT NULL,
    currency_id integer NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.entity OWNER TO jbilling;

--
-- Name: entity_delivery_method_map; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE entity_delivery_method_map (
    method_id integer,
    entity_id integer
);


ALTER TABLE public.entity_delivery_method_map OWNER TO jbilling;

--
-- Name: entity_payment_method_map; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE entity_payment_method_map (
    entity_id integer,
    payment_method_id integer
);


ALTER TABLE public.entity_payment_method_map OWNER TO jbilling;

--
-- Name: event_log; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE event_log (
    id integer NOT NULL,
    entity_id integer,
    user_id integer,
    table_id integer,
    foreign_id integer NOT NULL,
    create_datetime timestamp without time zone NOT NULL,
    level_field integer NOT NULL,
    module_id integer NOT NULL,
    message_id integer NOT NULL,
    old_num integer,
    old_str character varying(1000),
    old_date timestamp without time zone,
    optlock integer NOT NULL,
    affected_user_id integer
);


ALTER TABLE public.event_log OWNER TO jbilling;

--
-- Name: event_log_message; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE event_log_message (
    id integer NOT NULL
);


ALTER TABLE public.event_log_message OWNER TO jbilling;

--
-- Name: event_log_module; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE event_log_module (
    id integer NOT NULL
);


ALTER TABLE public.event_log_module OWNER TO jbilling;

--
-- Name: filter; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE filter (
    id integer NOT NULL,
    filter_set_id integer NOT NULL,
    type character varying(255) NOT NULL,
    constraint_type character varying(255) NOT NULL,
    field character varying(255) NOT NULL,
    template character varying(255) NOT NULL,
    visible boolean NOT NULL,
    integer_value integer,
    string_value character varying(255),
    start_date_value timestamp without time zone,
    end_date_value timestamp without time zone,
    version integer NOT NULL
);


ALTER TABLE public.filter OWNER TO jbilling;

--
-- Name: filter_set; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE filter_set (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    user_id integer NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.filter_set OWNER TO jbilling;

--
-- Name: filter_set_filter; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE filter_set_filter (
    filter_set_filters_id integer,
    filter_id integer
);


ALTER TABLE public.filter_set_filter OWNER TO jbilling;

--
-- Name: generic_status; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE generic_status (
    id integer NOT NULL,
    dtype character varying(50) NOT NULL,
    status_value integer NOT NULL,
    can_login smallint
);


ALTER TABLE public.generic_status OWNER TO jbilling;

--
-- Name: generic_status_type; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE generic_status_type (
    id character varying(50) NOT NULL
);


ALTER TABLE public.generic_status_type OWNER TO jbilling;

--
-- Name: international_description; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE international_description (
    table_id integer NOT NULL,
    foreign_id integer NOT NULL,
    psudo_column character varying(20) NOT NULL,
    language_id integer NOT NULL,
    content character varying(4000) NOT NULL
);


ALTER TABLE public.international_description OWNER TO jbilling;

--
-- Name: invoice; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE invoice (
    id integer NOT NULL,
    create_datetime timestamp without time zone NOT NULL,
    billing_process_id integer,
    user_id integer,
    delegated_invoice_id integer,
    due_date date NOT NULL,
    total numeric(22,10) NOT NULL,
    payment_attempts integer DEFAULT 0 NOT NULL,
    status_id smallint DEFAULT 1 NOT NULL,
    balance numeric(22,10),
    carried_balance numeric(22,10) NOT NULL,
    in_process_payment smallint DEFAULT 1 NOT NULL,
    is_review integer NOT NULL,
    currency_id integer NOT NULL,
    deleted smallint DEFAULT 0 NOT NULL,
    paper_invoice_batch_id integer,
    customer_notes character varying(1000),
    public_number character varying(40),
    last_reminder date,
    overdue_step integer,
    create_timestamp timestamp without time zone NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.invoice OWNER TO jbilling;

--
-- Name: invoice_delivery_method; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE invoice_delivery_method (
    id integer NOT NULL
);


ALTER TABLE public.invoice_delivery_method OWNER TO jbilling;

--
-- Name: invoice_line; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE invoice_line (
    id integer NOT NULL,
    invoice_id integer,
    type_id integer,
    amount numeric(22,10) NOT NULL,
    quantity numeric(22,10),
    price numeric(22,10),
    deleted smallint DEFAULT 0 NOT NULL,
    item_id integer,
    description character varying(1000),
    source_user_id integer,
    is_percentage smallint DEFAULT 0 NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.invoice_line OWNER TO jbilling;

--
-- Name: invoice_line_type; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE invoice_line_type (
    id integer NOT NULL,
    description character varying(50) NOT NULL,
    order_position integer NOT NULL
);


ALTER TABLE public.invoice_line_type OWNER TO jbilling;

--
-- Name: item; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE item (
    id integer NOT NULL,
    internal_number character varying(50),
    entity_id integer,
    percentage numeric(22,10),
    deleted smallint DEFAULT 0 NOT NULL,
    has_decimals smallint DEFAULT 0 NOT NULL,
    optlock integer NOT NULL,
    price_model_id integer,
    gl_code character varying(50)
);


ALTER TABLE public.item OWNER TO jbilling;

--
-- Name: item_type; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE item_type (
    id integer NOT NULL,
    entity_id integer NOT NULL,
    description character varying(100),
    order_line_type_id integer NOT NULL,
    optlock integer NOT NULL,
    internal boolean NOT NULL
);


ALTER TABLE public.item_type OWNER TO jbilling;

--
-- Name: item_type_map; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE item_type_map (
    item_id integer,
    type_id integer
);


ALTER TABLE public.item_type_map OWNER TO jbilling;

--
-- Name: jbilling_seqs; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE jbilling_seqs (
    name character varying(255),
    next_id integer
);


ALTER TABLE public.jbilling_seqs OWNER TO jbilling;

--
-- Name: jbilling_table; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE jbilling_table (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.jbilling_table OWNER TO jbilling;

--
-- Name: language; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE language (
    id integer NOT NULL,
    code character varying(2) NOT NULL,
    description character varying(50) NOT NULL
);


ALTER TABLE public.language OWNER TO jbilling;

--
-- Name: list; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE list (
    id integer NOT NULL,
    legacy_name character varying(30),
    title_key character varying(100) NOT NULL,
    instr_key character varying(100),
    optlock integer NOT NULL
);


ALTER TABLE public.list OWNER TO jbilling;

--
-- Name: list_entity; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE list_entity (
    id integer NOT NULL,
    list_id integer,
    entity_id integer NOT NULL,
    total_records integer NOT NULL,
    last_update date NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.list_entity OWNER TO jbilling;

--
-- Name: list_field; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE list_field (
    id integer NOT NULL,
    list_id integer,
    title_key character varying(100) NOT NULL,
    column_name character varying(50) NOT NULL,
    ordenable smallint NOT NULL,
    searchable smallint NOT NULL,
    data_type character varying(10) NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.list_field OWNER TO jbilling;

--
-- Name: list_field_entity; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE list_field_entity (
    id integer NOT NULL,
    list_field_id integer,
    list_entity_id integer,
    min_value integer,
    max_value integer,
    min_str_value character varying(100),
    max_str_value character varying(100),
    min_date_value timestamp without time zone,
    max_date_value timestamp without time zone,
    optlock integer NOT NULL
);


ALTER TABLE public.list_field_entity OWNER TO jbilling;

--
-- Name: mediation_cfg; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE mediation_cfg (
    id integer NOT NULL,
    entity_id integer NOT NULL,
    create_datetime timestamp without time zone NOT NULL,
    name character varying(50) NOT NULL,
    order_value integer NOT NULL,
    pluggable_task_id integer NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.mediation_cfg OWNER TO jbilling;

--
-- Name: mediation_errors; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE mediation_errors (
    accountcode character varying(50) NOT NULL,
    src character varying(50),
    dst character varying(50),
    dcontext character varying(50),
    clid character varying(50),
    channel character varying(50),
    dstchannel character varying(50),
    lastapp character varying(50),
    lastdata character varying(50),
    start timestamp without time zone,
    answer timestamp without time zone,
    "end" timestamp without time zone,
    duration integer,
    billsec integer,
    disposition character varying(50),
    amaflags character varying(50),
    userfield character varying(50),
    error_message character varying(200),
    should_retry boolean
);


ALTER TABLE public.mediation_errors OWNER TO jbilling;

--
-- Name: mediation_order_map; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE mediation_order_map (
    mediation_process_id integer NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE public.mediation_order_map OWNER TO jbilling;

--
-- Name: mediation_process; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE mediation_process (
    id integer NOT NULL,
    configuration_id integer NOT NULL,
    start_datetime timestamp without time zone NOT NULL,
    end_datetime timestamp without time zone,
    orders_affected integer NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.mediation_process OWNER TO jbilling;

--
-- Name: mediation_record; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE mediation_record (
    id_key character varying(100) NOT NULL,
    start_datetime timestamp without time zone NOT NULL,
    mediation_process_id integer,
    optlock integer NOT NULL,
    status_id integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.mediation_record OWNER TO jbilling;

--
-- Name: mediation_record_line; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE mediation_record_line (
    id integer NOT NULL,
    order_line_id integer NOT NULL,
    event_date timestamp without time zone NOT NULL,
    amount numeric(22,10) NOT NULL,
    quantity numeric(22,10) NOT NULL,
    description character varying(200),
    optlock integer NOT NULL,
    mediation_record_id integer NOT NULL
);


ALTER TABLE public.mediation_record_line OWNER TO jbilling;

--
-- Name: menu_option; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE menu_option (
    id integer NOT NULL,
    link character varying(100) NOT NULL,
    level_field integer NOT NULL,
    parent_id integer
);


ALTER TABLE public.menu_option OWNER TO jbilling;

--
-- Name: notification_category; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE notification_category (
    id integer NOT NULL
);


ALTER TABLE public.notification_category OWNER TO jbilling;

--
-- Name: notification_message; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE notification_message (
    id integer NOT NULL,
    type_id integer,
    entity_id integer NOT NULL,
    language_id integer NOT NULL,
    use_flag smallint DEFAULT 1 NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.notification_message OWNER TO jbilling;

--
-- Name: notification_message_arch; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE notification_message_arch (
    id integer NOT NULL,
    type_id integer,
    create_datetime timestamp without time zone NOT NULL,
    user_id integer,
    result_message character varying(200),
    optlock integer NOT NULL
);


ALTER TABLE public.notification_message_arch OWNER TO jbilling;

--
-- Name: notification_message_arch_line; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE notification_message_arch_line (
    id integer NOT NULL,
    message_archive_id integer,
    section integer NOT NULL,
    content character varying(1000) NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.notification_message_arch_line OWNER TO jbilling;

--
-- Name: notification_message_line; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE notification_message_line (
    id integer NOT NULL,
    message_section_id integer,
    content character varying(1000) NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.notification_message_line OWNER TO jbilling;

--
-- Name: notification_message_section; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE notification_message_section (
    id integer NOT NULL,
    message_id integer,
    section integer,
    optlock integer NOT NULL
);


ALTER TABLE public.notification_message_section OWNER TO jbilling;

--
-- Name: notification_message_type; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE notification_message_type (
    id integer NOT NULL,
    optlock integer NOT NULL,
    category_id integer
);


ALTER TABLE public.notification_message_type OWNER TO jbilling;

--
-- Name: order_billing_type; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE order_billing_type (
    id integer NOT NULL
);


ALTER TABLE public.order_billing_type OWNER TO jbilling;

--
-- Name: order_line; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE order_line (
    id integer NOT NULL,
    order_id integer,
    item_id integer,
    type_id integer,
    amount numeric(22,10) NOT NULL,
    quantity numeric(22,10),
    price numeric(22,10),
    item_price smallint,
    create_datetime timestamp without time zone NOT NULL,
    deleted smallint DEFAULT 0 NOT NULL,
    description character varying(1000),
    provisioning_status integer,
    provisioning_request_id character varying(50),
    optlock integer NOT NULL
);


ALTER TABLE public.order_line OWNER TO jbilling;

--
-- Name: order_line_type; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE order_line_type (
    id integer NOT NULL,
    editable smallint NOT NULL
);


ALTER TABLE public.order_line_type OWNER TO jbilling;

--
-- Name: order_period; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE order_period (
    id integer NOT NULL,
    entity_id integer,
    value integer,
    unit_id integer,
    optlock integer NOT NULL
);


ALTER TABLE public.order_period OWNER TO jbilling;

--
-- Name: order_process; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE order_process (
    id integer NOT NULL,
    order_id integer,
    invoice_id integer,
    billing_process_id integer,
    periods_included integer,
    period_start date,
    period_end date,
    is_review integer NOT NULL,
    origin integer,
    optlock integer NOT NULL
);


ALTER TABLE public.order_process OWNER TO jbilling;

--
-- Name: paper_invoice_batch; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE paper_invoice_batch (
    id integer NOT NULL,
    total_invoices integer NOT NULL,
    delivery_date date,
    is_self_managed smallint NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.paper_invoice_batch OWNER TO jbilling;

--
-- Name: partner; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE partner (
    id integer NOT NULL,
    user_id integer,
    balance numeric(22,10) NOT NULL,
    total_payments numeric(22,10) NOT NULL,
    total_refunds numeric(22,10) NOT NULL,
    total_payouts numeric(22,10) NOT NULL,
    percentage_rate numeric(22,10),
    referral_fee numeric(22,10),
    fee_currency_id integer,
    one_time smallint NOT NULL,
    period_unit_id integer NOT NULL,
    period_value integer NOT NULL,
    next_payout_date date NOT NULL,
    due_payout numeric(22,10),
    automatic_process smallint NOT NULL,
    related_clerk integer,
    optlock integer NOT NULL
);


ALTER TABLE public.partner OWNER TO jbilling;

--
-- Name: partner_payout; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE partner_payout (
    id integer NOT NULL,
    starting_date date NOT NULL,
    ending_date date NOT NULL,
    payments_amount numeric(22,10) NOT NULL,
    refunds_amount numeric(22,10) NOT NULL,
    balance_left numeric(22,10) NOT NULL,
    payment_id integer,
    partner_id integer,
    optlock integer NOT NULL
);


ALTER TABLE public.partner_payout OWNER TO jbilling;

--
-- Name: partner_range; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE partner_range (
    id integer NOT NULL,
    partner_id integer,
    percentage_rate numeric(22,10),
    referral_fee numeric(22,10),
    range_from integer NOT NULL,
    range_to integer NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.partner_range OWNER TO jbilling;

--
-- Name: payment; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE payment (
    id integer NOT NULL,
    user_id integer,
    attempt integer,
    result_id integer,
    amount numeric(22,10) NOT NULL,
    create_datetime timestamp without time zone NOT NULL,
    update_datetime timestamp without time zone,
    payment_date date,
    method_id integer NOT NULL,
    credit_card_id integer,
    deleted smallint DEFAULT 0 NOT NULL,
    is_refund smallint DEFAULT 0 NOT NULL,
    is_preauth smallint DEFAULT 0 NOT NULL,
    payment_id integer,
    currency_id integer NOT NULL,
    payout_id integer,
    ach_id integer,
    balance numeric(22,10),
    optlock integer NOT NULL,
    payment_period integer,
    payment_notes character varying(500)
);


ALTER TABLE public.payment OWNER TO jbilling;

--
-- Name: payment_authorization; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE payment_authorization (
    id integer NOT NULL,
    payment_id integer,
    processor character varying(40) NOT NULL,
    code1 character varying(40) NOT NULL,
    code2 character varying(40),
    code3 character varying(40),
    approval_code character varying(20),
    avs character varying(20),
    transaction_id character varying(40),
    md5 character varying(100),
    card_code character varying(100),
    create_datetime date NOT NULL,
    response_message character varying(200),
    optlock integer NOT NULL
);


ALTER TABLE public.payment_authorization OWNER TO jbilling;

--
-- Name: payment_info_cheque; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE payment_info_cheque (
    id integer NOT NULL,
    payment_id integer,
    bank character varying(50),
    cheque_number character varying(50),
    cheque_date date,
    optlock integer NOT NULL
);


ALTER TABLE public.payment_info_cheque OWNER TO jbilling;

--
-- Name: payment_invoice; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE payment_invoice (
    id integer NOT NULL,
    payment_id integer,
    invoice_id integer,
    amount numeric(22,10),
    create_datetime timestamp without time zone NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.payment_invoice OWNER TO jbilling;

--
-- Name: payment_method; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE payment_method (
    id integer NOT NULL
);


ALTER TABLE public.payment_method OWNER TO jbilling;

--
-- Name: payment_result; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE payment_result (
    id integer NOT NULL
);


ALTER TABLE public.payment_result OWNER TO jbilling;

--
-- Name: period_unit; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE period_unit (
    id integer NOT NULL
);


ALTER TABLE public.period_unit OWNER TO jbilling;

--
-- Name: permission; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE permission (
    id integer NOT NULL,
    type_id integer NOT NULL,
    foreign_id integer
);


ALTER TABLE public.permission OWNER TO jbilling;

--
-- Name: permission_role_map; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE permission_role_map (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.permission_role_map OWNER TO jbilling;

--
-- Name: permission_type; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE permission_type (
    id integer NOT NULL,
    description character varying(30) NOT NULL
);


ALTER TABLE public.permission_type OWNER TO jbilling;

--
-- Name: permission_user; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE permission_user (
    permission_id integer,
    user_id integer,
    is_grant smallint NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.permission_user OWNER TO jbilling;

--
-- Name: plan; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE plan (
    id integer NOT NULL,
    item_id integer NOT NULL,
    description character varying(255),
    period_id integer NOT NULL
);


ALTER TABLE public.plan OWNER TO jbilling;

--
-- Name: plan_item; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE plan_item (
    id integer NOT NULL,
    plan_id integer,
    item_id integer NOT NULL,
    price_model_id integer NOT NULL,
    precedence integer NOT NULL,
    bundled_quantity numeric(22,10),
    period_id integer
);


ALTER TABLE public.plan_item OWNER TO jbilling;

--
-- Name: pluggable_task; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE pluggable_task (
    id integer NOT NULL,
    entity_id integer NOT NULL,
    type_id integer,
    processing_order integer NOT NULL,
    optlock integer NOT NULL,
    notes character varying(1000)
);


ALTER TABLE public.pluggable_task OWNER TO jbilling;

--
-- Name: pluggable_task_parameter; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE pluggable_task_parameter (
    id integer NOT NULL,
    task_id integer,
    name character varying(50) NOT NULL,
    int_value integer,
    str_value character varying(500),
    float_value numeric(22,10),
    optlock integer NOT NULL
);


ALTER TABLE public.pluggable_task_parameter OWNER TO jbilling;

--
-- Name: pluggable_task_type; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE pluggable_task_type (
    id integer NOT NULL,
    category_id integer NOT NULL,
    class_name character varying(200) NOT NULL,
    min_parameters integer NOT NULL
);


ALTER TABLE public.pluggable_task_type OWNER TO jbilling;

--
-- Name: pluggable_task_type_category; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE pluggable_task_type_category (
    id integer NOT NULL,
    interface_name character varying(200) NOT NULL
);


ALTER TABLE public.pluggable_task_type_category OWNER TO jbilling;

--
-- Name: preference; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE preference (
    id integer NOT NULL,
    type_id integer,
    table_id integer NOT NULL,
    foreign_id integer NOT NULL,
    int_value integer,
    str_value character varying(200),
    float_value numeric(22,10)
);


ALTER TABLE public.preference OWNER TO jbilling;

--
-- Name: preference_type; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE preference_type (
    id integer NOT NULL,
    int_def_value integer,
    str_def_value character varying(200),
    float_def_value numeric(22,10)
);


ALTER TABLE public.preference_type OWNER TO jbilling;

--
-- Name: price_model; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE price_model (
    id integer NOT NULL,
    strategy_type character varying(20) NOT NULL,
    rate numeric(22,10),
    included_quantity integer,
    currency_id integer,
    next_model_id integer
);


ALTER TABLE public.price_model OWNER TO jbilling;

--
-- Name: price_model_attribute; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE price_model_attribute (
    price_model_id integer NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(255)
);


ALTER TABLE public.price_model_attribute OWNER TO jbilling;

--
-- Name: process_run; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE process_run (
    id integer NOT NULL,
    process_id integer,
    run_date date NOT NULL,
    started timestamp without time zone NOT NULL,
    finished timestamp without time zone,
    payment_finished timestamp without time zone,
    invoices_generated integer,
    optlock integer NOT NULL,
    status_id integer NOT NULL
);


ALTER TABLE public.process_run OWNER TO jbilling;

--
-- Name: process_run_total; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE process_run_total (
    id integer NOT NULL,
    process_run_id integer,
    currency_id integer NOT NULL,
    total_invoiced numeric(22,10),
    total_paid numeric(22,10),
    total_not_paid numeric(22,10),
    optlock integer NOT NULL
);


ALTER TABLE public.process_run_total OWNER TO jbilling;

--
-- Name: process_run_total_pm; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE process_run_total_pm (
    id integer NOT NULL,
    process_run_total_id integer,
    payment_method_id integer,
    total numeric(22,10) NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.process_run_total_pm OWNER TO jbilling;

--
-- Name: process_run_user; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE process_run_user (
    id integer NOT NULL,
    process_run_id integer NOT NULL,
    user_id integer NOT NULL,
    status integer NOT NULL,
    created timestamp without time zone DEFAULT now() NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.process_run_user OWNER TO jbilling;

--
-- Name: promotion; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE promotion (
    id integer NOT NULL,
    item_id integer,
    code character varying(50) NOT NULL,
    notes character varying(200),
    once smallint NOT NULL,
    since date,
    until date
);


ALTER TABLE public.promotion OWNER TO jbilling;

--
-- Name: promotion_user_map; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE promotion_user_map (
    user_id integer,
    promotion_id integer
);


ALTER TABLE public.promotion_user_map OWNER TO jbilling;

--
-- Name: purchase_order; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE purchase_order (
    id integer NOT NULL,
    user_id integer,
    period_id integer,
    billing_type_id integer NOT NULL,
    active_since date,
    active_until date,
    cycle_start date,
    create_datetime timestamp without time zone NOT NULL,
    next_billable_day date,
    created_by integer,
    status_id integer NOT NULL,
    currency_id integer NOT NULL,
    deleted smallint DEFAULT 0 NOT NULL,
    notify smallint,
    last_notified timestamp without time zone,
    notification_step integer,
    due_date_unit_id integer,
    due_date_value integer,
    df_fm smallint,
    anticipate_periods integer,
    own_invoice smallint,
    notes character varying(200),
    notes_in_invoice smallint,
    is_current smallint,
    optlock integer NOT NULL
);


ALTER TABLE public.purchase_order OWNER TO jbilling;

--
-- Name: recent_item; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE recent_item (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    object_id integer NOT NULL,
    user_id integer NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.recent_item OWNER TO jbilling;

--
-- Name: report; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE report (
    id integer NOT NULL,
    type_id integer NOT NULL,
    entity_id integer NOT NULL,
    name character varying(255) NOT NULL,
    file_name character varying(500) NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.report OWNER TO jbilling;

--
-- Name: report_parameter; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE report_parameter (
    id integer NOT NULL,
    report_id integer NOT NULL,
    dtype character varying(10) NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.report_parameter OWNER TO jbilling;

--
-- Name: report_type; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE report_type (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    optlock integer NOT NULL
);


ALTER TABLE public.report_type OWNER TO jbilling;

--
-- Name: role; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE role (
    id integer NOT NULL
);


ALTER TABLE public.role OWNER TO jbilling;

--
-- Name: shortcut; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE shortcut (
    id integer NOT NULL,
    user_id integer NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255),
    name character varying(255),
    object_id integer,
    version integer NOT NULL
);


ALTER TABLE public.shortcut OWNER TO jbilling;

--
-- Name: user_credit_card_map; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE user_credit_card_map (
    user_id integer,
    credit_card_id integer
);


ALTER TABLE public.user_credit_card_map OWNER TO jbilling;

--
-- Name: user_role_map; Type: TABLE; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE TABLE user_role_map (
    user_id integer,
    role_id integer
);


ALTER TABLE public.user_role_map OWNER TO jbilling;

--
-- Data for Name: ach; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY ach (id, user_id, aba_routing, bank_account, account_type, bank_name, account_name, optlock, gateway_key) FROM stdin;
\.


--
-- Data for Name: ageing_entity_step; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY ageing_entity_step (id, entity_id, status_id, days, optlock) FROM stdin;
1	1	1	5	1
2	2	1	0	1
3	1	2	3	1
4	1	3	1	1
5	1	5	2	1
6	1	7	30	1
7	1	8	0	1
\.


--
-- Data for Name: base_user; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY base_user (id, entity_id, password, deleted, language_id, status_id, subscriber_status, currency_id, create_datetime, last_status_change, last_login, user_name, failed_attempts, optlock) FROM stdin;
2	1	6a204bd89f3c8348afd5c77c717a097a	1	1	1	9	3	2006-07-26 09:29:19.596	\N	\N	gandalf	0	1
12	2	46f94c8de14fb36680850768ff1b7f2a	1	1	1	9	3	2006-12-07 00:00:00	\N	2007-08-16 14:56:18.752	mordor	0	1
13	2	9369e99369e9	1	1	1	9	3	2006-12-07 14:56:32.79	\N	\N	orc1	0	1
23	1	9369e99369e9	1	1	5	9	3	2007-01-12 15:41:42.382	2007-01-12 15:41:59.907	\N	inactive	0	1
33	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2007-02-10 10:56:43.359	\N	\N	authuser	0	1
43	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2007-05-22 16:03:39.707	\N	\N	parent	0	1
53	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	10	3	2007-08-09 14:38:28.065	\N	\N	pendunsus1	0	1
63	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	10	3	2007-08-09 14:58:15.472	\N	\N	pendunsus2	0	1
73	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:00.993	\N	\N	testUserName-1189624140558	0	1
10815	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	yusmoh	0	1
74	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:07.147	\N	\N	testUserName-1189624146992	0	1
75	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:07.462	\N	\N	testUserName-1189624147344	0	1
76	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:08.032	\N	\N	testUserName-1189624147887	0	1
77	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:08.364	\N	\N	testUserName-1189624148228	0	1
78	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:08.688	\N	\N	testUserName-1189624148529	0	1
79	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:09.126	\N	\N	testUserName-1189624148934	0	1
80	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:09.829	\N	\N	testUserName-1189624149625	0	1
81	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:10.168	\N	\N	testUserName-1189624150053	0	1
82	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:10.475	\N	\N	testUserName-1189624150356	0	1
83	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:10.761	\N	\N	testUserName-1189624150636	0	1
84	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:11.35	\N	\N	testUserName-1189624151152	0	1
85	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:11.86	\N	\N	testUserName-1189624151681	0	1
86	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:12.188	\N	\N	testUserName-1189624152071	0	1
87	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:12.534	\N	\N	testUserName-1189624152404	0	1
88	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:12.861	\N	\N	testUserName-1189624152682	0	1
89	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:13.475	\N	\N	testUserName-1189624153303	0	1
90	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:13.971	\N	\N	testUserName-1189624153811	0	1
91	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:14.223	\N	\N	testUserName-1189624154111	0	1
92	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:14.488	\N	\N	testUserName-1189624154372	0	1
93	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:14.754	\N	\N	testUserName-1189624154638	0	1
94	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:15.11	\N	\N	testUserName-1189624154923	0	1
95	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:15.645	\N	\N	testUserName-1189624155445	0	1
96	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:16.339	\N	\N	testUserName-1189624156150	0	1
97	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:16.641	\N	\N	testUserName-1189624156523	0	1
98	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:16.903	\N	\N	testUserName-1189624156789	0	1
99	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:17.152	\N	\N	testUserName-1189624157048	0	1
100	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:17.639	\N	\N	testUserName-1189624157432	0	1
101	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:18.186	\N	\N	testUserName-1189624157973	0	1
102	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:18.568	\N	\N	testUserName-1189624158450	0	1
103	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:18.829	\N	\N	testUserName-1189624158713	0	1
104	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:19.081	\N	\N	testUserName-1189624158973	0	1
105	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:19.328	\N	\N	testUserName-1189624159216	0	1
106	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:19.809	\N	\N	testUserName-1189624159594	0	1
107	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:20.289	\N	\N	testUserName-1189624160118	0	1
108	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:20.81	\N	\N	testUserName-1189624160591	0	1
109	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:21.129	\N	\N	testUserName-1189624161027	0	1
110	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:21.385	\N	\N	testUserName-1189624161266	0	1
111	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:21.647	\N	\N	testUserName-1189624161530	0	1
112	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:21.907	\N	\N	testUserName-1189624161792	0	1
113	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:22.371	\N	\N	testUserName-1189624162192	0	1
114	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:22.881	\N	\N	testUserName-1189624162701	0	1
115	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:23.422	\N	\N	testUserName-1189624163213	0	1
116	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:23.697	\N	\N	testUserName-1189624163571	0	1
117	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:23.942	\N	\N	testUserName-1189624163832	0	1
118	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:24.196	\N	\N	testUserName-1189624164076	0	1
119	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:24.45	\N	\N	testUserName-1189624164330	0	1
120	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:24.919	\N	\N	testUserName-1189624164742	0	1
121	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:25.411	\N	\N	testUserName-1189624165221	0	1
122	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:25.912	\N	\N	testUserName-1189624165720	0	1
123	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:26.188	\N	\N	testUserName-1189624166076	0	1
124	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:26.46	\N	\N	testUserName-1189624166343	0	1
125	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:26.711	\N	\N	testUserName-1189624166598	0	1
126	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:26.969	\N	\N	testUserName-1189624166848	0	1
127	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:27.462	\N	\N	testUserName-1189624167283	0	1
128	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:27.991	\N	\N	testUserName-1189624167783	0	1
129	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:28.452	\N	\N	testUserName-1189624168316	0	1
130	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:28.703	\N	\N	testUserName-1189624168590	0	1
131	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:28.951	\N	\N	testUserName-1189624168836	0	1
132	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:29.206	\N	\N	testUserName-1189624169085	0	1
133	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:29.536	\N	\N	testUserName-1189624169337	0	1
134	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:30.073	\N	\N	testUserName-1189624169882	0	1
135	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:30.57	\N	\N	testUserName-1189624170388	0	1
136	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:30.993	\N	\N	testUserName-1189624170850	0	1
137	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:31.246	\N	\N	testUserName-1189624171128	0	1
138	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:31.481	\N	\N	testUserName-1189624171375	0	1
139	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:31.751	\N	\N	testUserName-1189624171621	0	1
140	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:32.042	\N	\N	testUserName-1189624171882	0	1
141	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:32.539	\N	\N	testUserName-1189624172363	0	1
142	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:33.069	\N	\N	testUserName-1189624172855	0	1
143	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:33.477	\N	\N	testUserName-1189624173366	0	1
144	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:33.736	\N	\N	testUserName-1189624173619	0	1
145	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:33.978	\N	\N	testUserName-1189624173866	0	1
146	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:34.224	\N	\N	testUserName-1189624174116	0	1
147	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:34.528	\N	\N	testUserName-1189624174359	0	1
148	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:35.001	\N	\N	testUserName-1189624174832	0	1
149	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:35.48	\N	\N	testUserName-1189624175301	0	1
150	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:35.974	\N	\N	testUserName-1189624175771	0	1
151	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:36.264	\N	\N	testUserName-1189624176159	0	1
152	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:36.508	\N	\N	testUserName-1189624176392	0	1
153	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:36.755	\N	\N	testUserName-1189624176645	0	1
154	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:37.007	\N	\N	testUserName-1189624176896	0	1
155	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:37.431	\N	\N	testUserName-1189624177233	0	1
156	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:37.879	\N	\N	testUserName-1189624177705	0	1
157	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:38.312	\N	\N	testUserName-1189624178130	0	1
158	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:38.765	\N	\N	testUserName-1189624178567	0	1
159	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:39.052	\N	\N	testUserName-1189624178952	0	1
160	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:39.318	\N	\N	testUserName-1189624179186	0	1
161	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:39.55	\N	\N	testUserName-1189624179448	0	1
162	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:39.804	\N	\N	testUserName-1189624179686	0	1
163	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:40.178	\N	\N	testUserName-1189624179992	0	1
164	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:40.723	\N	\N	testUserName-1189624180523	0	1
165	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:41.203	\N	\N	testUserName-1189624181014	0	1
166	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:41.612	\N	\N	testUserName-1189624181490	0	1
167	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:41.87	\N	\N	testUserName-1189624181754	0	1
168	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:42.122	\N	\N	testUserName-1189624182003	0	1
169	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:42.36	\N	\N	testUserName-1189624182259	0	1
170	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:42.671	\N	\N	testUserName-1189624182495	0	1
171	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:43.176	\N	\N	testUserName-1189624182984	0	1
172	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:43.678	\N	\N	testUserName-1189624183496	0	1
173	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:44.071	\N	\N	testUserName-1189624183960	0	1
174	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:44.318	\N	\N	testUserName-1189624184206	0	1
175	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:44.553	\N	\N	testUserName-1189624184446	0	1
176	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:44.817	\N	\N	testUserName-1189624184690	0	1
177	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:45.12	\N	\N	testUserName-1189624184952	0	1
178	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:45.619	\N	\N	testUserName-1189624185430	0	1
179	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:46.122	\N	\N	testUserName-1189624185924	0	1
180	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:46.594	\N	\N	testUserName-1189624186450	0	1
181	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:46.838	\N	\N	testUserName-1189624186723	0	1
182	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:47.085	\N	\N	testUserName-1189624186968	0	1
183	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:47.332	\N	\N	testUserName-1189624187214	0	1
184	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:47.619	\N	\N	testUserName-1189624187465	0	1
185	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:48.128	\N	\N	testUserName-1189624187941	0	1
186	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:48.625	\N	\N	testUserName-1189624188411	0	1
187	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:49.129	\N	\N	testUserName-1189624188930	0	1
188	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:49.408	\N	\N	testUserName-1189624189286	0	1
189	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:49.655	\N	\N	testUserName-1189624189543	0	1
190	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:49.898	\N	\N	testUserName-1189624189785	0	1
191	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:50.14	\N	\N	testUserName-1189624190031	0	1
192	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:50.583	\N	\N	testUserName-1189624190380	0	1
193	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:51.074	\N	\N	testUserName-1189624190887	0	1
194	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:51.615	\N	\N	testUserName-1189624191403	0	1
195	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:51.93	\N	\N	testUserName-1189624191825	0	1
196	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:52.18	\N	\N	testUserName-1189624192060	0	1
197	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:52.42	\N	\N	testUserName-1189624192312	0	1
198	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:52.67	\N	\N	testUserName-1189624192556	0	1
199	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:53.058	\N	\N	testUserName-1189624192866	0	1
200	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:53.538	\N	\N	testUserName-1189624193346	0	1
201	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:53.98	\N	\N	testUserName-1189624193802	0	1
202	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:54.429	\N	\N	testUserName-1189624194283	0	1
203	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:54.661	\N	\N	testUserName-1189624194555	0	1
204	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:54.918	\N	\N	testUserName-1189624194799	0	1
205	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:55.154	\N	\N	testUserName-1189624195052	0	1
206	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:55.446	\N	\N	testUserName-1189624195289	0	1
207	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:55.93	\N	\N	testUserName-1189624195738	0	1
208	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:56.391	\N	\N	testUserName-1189624196211	0	1
209	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:56.89	\N	\N	testUserName-1189624196682	0	1
210	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:57.222	\N	\N	testUserName-1189624197102	0	1
211	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:57.456	\N	\N	testUserName-1189624197349	0	1
212	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:57.723	\N	\N	testUserName-1189624197590	0	1
213	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:57.96	\N	\N	testUserName-1189624197856	0	1
214	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:58.35	\N	\N	testUserName-1189624198157	0	1
215	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:58.803	\N	\N	testUserName-1189624198621	0	1
216	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:59.359	\N	\N	testUserName-1189624199139	0	1
217	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:59.705	\N	\N	testUserName-1189624199590	0	1
218	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:09:59.955	\N	\N	testUserName-1189624199835	0	1
219	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:00.208	\N	\N	testUserName-1189624200105	0	1
220	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:00.475	\N	\N	testUserName-1189624200341	0	1
221	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:00.872	\N	\N	testUserName-1189624200690	0	1
222	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:01.336	\N	\N	testUserName-1189624201144	0	1
223	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:01.857	\N	\N	testUserName-1189624201637	0	1
224	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:02.296	\N	\N	testUserName-1189624202182	0	1
225	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:02.537	\N	\N	testUserName-1189624202428	0	1
226	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:02.788	\N	\N	testUserName-1189624202673	0	1
227	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:03.033	\N	\N	testUserName-1189624202919	0	1
228	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:03.345	\N	\N	testUserName-1189624203166	0	1
229	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:03.801	\N	\N	testUserName-1189624203636	0	1
230	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:04.319	\N	\N	testUserName-1189624204116	0	1
231	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:04.748	\N	\N	testUserName-1189624204600	0	1
232	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:04.997	\N	\N	testUserName-1189624204878	0	1
233	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:05.237	\N	\N	testUserName-1189624205127	0	1
234	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:05.48	\N	\N	testUserName-1189624205373	0	1
235	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:05.764	\N	\N	testUserName-1189624205620	0	1
236	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:06.242	\N	\N	testUserName-1189624206039	0	1
237	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:06.725	\N	\N	testUserName-1189624206532	0	1
238	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:07.183	\N	\N	testUserName-1189624206991	0	1
239	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:07.518	\N	\N	testUserName-1189624207410	0	1
240	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:07.769	\N	\N	testUserName-1189624207649	0	1
241	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:08.011	\N	\N	testUserName-1189624207900	0	1
242	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:08.248	\N	\N	testUserName-1189624208141	0	1
243	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:08.579	\N	\N	testUserName-1189624208398	0	1
244	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:09.068	\N	\N	testUserName-1189624208885	0	1
245	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:09.593	\N	\N	testUserName-1189624209397	0	1
246	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:10.046	\N	\N	testUserName-1189624209897	0	1
247	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:10.289	\N	\N	testUserName-1189624210176	0	1
248	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:10.538	\N	\N	testUserName-1189624210419	0	1
249	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:10.78	\N	\N	testUserName-1189624210671	0	1
250	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:11.085	\N	\N	testUserName-1189624210912	0	1
251	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:11.565	\N	\N	testUserName-1189624211372	0	1
252	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:12.068	\N	\N	testUserName-1189624211891	0	1
253	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:12.518	\N	\N	testUserName-1189624212364	0	1
254	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:12.774	\N	\N	testUserName-1189624212658	0	1
255	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:13.016	\N	\N	testUserName-1189624212904	0	1
256	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:13.271	\N	\N	testUserName-1189624213147	0	1
257	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:13.557	\N	\N	testUserName-1189624213402	0	1
258	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:14.056	\N	\N	testUserName-1189624213862	0	1
259	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:14.562	\N	\N	testUserName-1189624214364	0	1
260	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:15.031	\N	\N	testUserName-1189624214845	0	1
261	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:15.344	\N	\N	testUserName-1189624215232	0	1
262	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:15.596	\N	\N	testUserName-1189624215471	0	1
263	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:15.825	\N	\N	testUserName-1189624215724	0	1
264	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:16.11	\N	\N	testUserName-1189624215972	0	1
265	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:16.93	\N	\N	testUserName-1189624216744	0	1
266	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:17.43	\N	\N	testUserName-1189624217223	0	1
267	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:17.734	\N	\N	testUserName-1189624217623	0	1
268	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:17.979	\N	\N	testUserName-1189624217868	0	1
269	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:18.223	\N	\N	testUserName-1189624218110	0	1
270	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:18.464	\N	\N	testUserName-1189624218354	0	1
271	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:18.854	\N	\N	testUserName-1189624218681	0	1
272	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:19.402	\N	\N	testUserName-1189624219162	0	1
273	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:19.87	\N	\N	testUserName-1189624219686	0	1
274	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:20.293	\N	\N	testUserName-1189624220156	0	1
275	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:20.532	\N	\N	testUserName-1189624220422	0	1
276	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:20.776	\N	\N	testUserName-1189624220664	0	1
277	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:21.015	\N	\N	testUserName-1189624220906	0	1
278	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:21.314	\N	\N	testUserName-1189624221148	0	1
279	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:21.805	\N	\N	testUserName-1189624221604	0	1
280	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:22.315	\N	\N	testUserName-1189624222106	0	1
281	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:22.758	\N	\N	testUserName-1189624222597	0	1
282	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:23.078	\N	\N	testUserName-1189624222952	0	1
283	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:23.309	\N	\N	testUserName-1189624223206	0	1
284	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:23.561	\N	\N	testUserName-1189624223452	0	1
285	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:23.811	\N	\N	testUserName-1189624223694	0	1
286	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:24.219	\N	\N	testUserName-1189624224015	0	1
287	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:24.679	\N	\N	testUserName-1189624224484	0	1
288	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:25.196	\N	\N	testUserName-1189624224981	0	1
289	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:25.588	\N	\N	testUserName-1189624225472	0	1
290	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:25.842	\N	\N	testUserName-1189624225724	0	1
291	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:26.083	\N	\N	testUserName-1189624225973	0	1
292	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:26.331	\N	\N	testUserName-1189624226213	0	1
293	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:26.623	\N	\N	testUserName-1189624226461	0	1
294	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:27.13	\N	\N	testUserName-1189624226935	0	1
295	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:27.612	\N	\N	testUserName-1189624227424	0	1
296	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:28.057	\N	\N	testUserName-1189624227911	0	1
297	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:28.298	\N	\N	testUserName-1189624228193	0	1
298	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:28.551	\N	\N	testUserName-1189624228426	0	1
299	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:28.806	\N	\N	testUserName-1189624228690	0	1
300	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:29.126	\N	\N	testUserName-1189624228938	0	1
301	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:29.583	\N	\N	testUserName-1189624229376	0	1
302	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:30.044	\N	\N	testUserName-1189624229868	0	1
303	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:30.587	\N	\N	testUserName-1189624230381	0	1
304	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:30.891	\N	\N	testUserName-1189624230780	0	1
305	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:31.129	\N	\N	testUserName-1189624231020	0	1
306	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:31.373	\N	\N	testUserName-1189624231260	0	1
307	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:31.611	\N	\N	testUserName-1189624231501	0	1
308	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:32.918	\N	\N	testUserName-1189624231846	0	1
309	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:33.161	\N	\N	testUserName-1189624233049	0	1
310	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:33.41	\N	\N	testUserName-1189624233297	0	1
311	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:33.723	\N	\N	testUserName-1189624233540	0	1
312	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:34.188	\N	\N	testUserName-1189624234003	0	1
313	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:34.709	\N	\N	testUserName-1189624234485	0	1
314	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:35.02	\N	\N	testUserName-1189624234910	0	1
315	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:35.279	\N	\N	testUserName-1189624235152	0	1
316	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:35.513	\N	\N	testUserName-1189624235406	0	1
317	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:35.76	\N	\N	testUserName-1189624235643	0	1
318	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:36.15	\N	\N	testUserName-1189624235961	0	1
319	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:36.642	\N	\N	testUserName-1189624236460	0	1
320	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:37.116	\N	\N	testUserName-1189624236929	0	1
321	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:37.516	\N	\N	testUserName-1189624237390	0	1
322	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:37.774	\N	\N	testUserName-1189624237648	0	1
323	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:38.013	\N	\N	testUserName-1189624237903	0	1
324	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:38.267	\N	\N	testUserName-1189624238155	0	1
325	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:38.554	\N	\N	testUserName-1189624238396	0	1
326	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:38.994	\N	\N	testUserName-1189624238840	0	1
327	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:39.458	\N	\N	testUserName-1189624239260	0	1
328	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:39.922	\N	\N	testUserName-1189624239742	0	1
329	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:40.274	\N	\N	testUserName-1189624240150	0	1
330	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:40.514	\N	\N	testUserName-1189624240404	0	1
331	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:40.758	\N	\N	testUserName-1189624240650	0	1
332	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:41.012	\N	\N	testUserName-1189624240888	0	1
333	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:41.38	\N	\N	testUserName-1189624241205	0	1
334	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:41.89	\N	\N	testUserName-1189624241677	0	1
335	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:42.395	\N	\N	testUserName-1189624242179	0	1
336	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:42.818	\N	\N	testUserName-1189624242671	0	1
337	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:43.057	\N	\N	testUserName-1189624242942	0	1
338	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:43.292	\N	\N	testUserName-1189624243184	0	1
339	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:43.536	\N	\N	testUserName-1189624243421	0	1
340	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:43.821	\N	\N	testUserName-1189624243673	0	1
341	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:44.284	\N	\N	testUserName-1189624244103	0	1
342	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:44.738	\N	\N	testUserName-1189624244555	0	1
343	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:45.178	\N	\N	testUserName-1189624244989	0	1
344	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:45.609	\N	\N	testUserName-1189624245465	0	1
345	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:45.851	\N	\N	testUserName-1189624245740	0	1
346	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:46.101	\N	\N	testUserName-1189624245988	0	1
347	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:46.336	\N	\N	testUserName-1189624246228	0	1
348	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:46.633	\N	\N	testUserName-1189624246467	0	1
349	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:47.105	\N	\N	testUserName-1189624246929	0	1
350	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:47.611	\N	\N	testUserName-1189624247403	0	1
351	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:48.071	\N	\N	testUserName-1189624247915	0	1
352	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:48.308	\N	\N	testUserName-1189624248198	0	1
353	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:48.556	\N	\N	testUserName-1189624248437	0	1
354	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:48.802	\N	\N	testUserName-1189624248692	0	1
355	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:49.106	\N	\N	testUserName-1189624248940	0	1
356	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:49.555	\N	\N	testUserName-1189624249389	0	1
357	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:50.065	\N	\N	testUserName-1189624249860	0	1
358	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:50.563	\N	\N	testUserName-1189624250367	0	1
359	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:50.894	\N	\N	testUserName-1189624250776	0	1
360	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:51.146	\N	\N	testUserName-1189624251023	0	1
361	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:51.383	\N	\N	testUserName-1189624251275	0	1
362	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:51.641	\N	\N	testUserName-1189624251513	0	1
363	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:52.078	\N	\N	testUserName-1189624251896	0	1
364	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:52.605	\N	\N	testUserName-1189624252403	0	1
365	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:53.107	\N	\N	testUserName-1189624252907	0	1
366	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:53.406	\N	\N	testUserName-1189624253301	0	1
367	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:53.662	\N	\N	testUserName-1189624253537	0	1
368	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:53.90	\N	\N	testUserName-1189624253793	0	1
369	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:54.149	\N	\N	testUserName-1189624254034	0	1
370	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:54.567	\N	\N	testUserName-1189624254359	0	1
371	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:55.091	\N	\N	testUserName-1189624254888	0	1
372	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:55.565	\N	\N	testUserName-1189624255368	0	1
373	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:55.866	\N	\N	testUserName-1189624255756	0	1
374	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:56.117	\N	\N	testUserName-1189624256003	0	1
375	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:56.349	\N	\N	testUserName-1189624256243	0	1
376	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:56.60	\N	\N	testUserName-1189624256479	0	1
377	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:56.989	\N	\N	testUserName-1189624256797	0	1
378	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:57.509	\N	\N	testUserName-1189624257297	0	1
379	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:58.003	\N	\N	testUserName-1189624257822	0	1
380	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:58.364	\N	\N	testUserName-1189624258255	0	1
381	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:58.606	\N	\N	testUserName-1189624258489	0	1
382	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:58.845	\N	\N	testUserName-1189624258738	0	1
383	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:59.084	\N	\N	testUserName-1189624258971	0	1
384	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:59.408	\N	\N	testUserName-1189624259217	0	1
385	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:10:59.875	\N	\N	testUserName-1189624259707	0	1
386	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:00.383	\N	\N	testUserName-1189624260186	0	1
387	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:00.868	\N	\N	testUserName-1189624260673	0	1
388	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:01.174	\N	\N	testUserName-1189624261059	0	1
389	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:01.418	\N	\N	testUserName-1189624261303	0	1
390	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:01.676	\N	\N	testUserName-1189624261546	0	1
391	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:01.93	\N	\N	testUserName-1189624261810	0	1
392	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:02.348	\N	\N	testUserName-1189624262140	0	1
393	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:02.842	\N	\N	testUserName-1189624262657	0	1
394	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:03.343	\N	\N	testUserName-1189624263153	0	1
395	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:03.706	\N	\N	testUserName-1189624263581	0	1
396	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:03.951	\N	\N	testUserName-1189624263838	0	1
397	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:04.20	\N	\N	testUserName-1189624264078	0	1
398	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:04.452	\N	\N	testUserName-1189624264328	0	1
399	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:04.784	\N	\N	testUserName-1189624264591	0	1
400	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:05.295	\N	\N	testUserName-1189624265102	0	1
401	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:05.804	\N	\N	testUserName-1189624265591	0	1
402	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:06.16	\N	\N	testUserName-1189624266046	0	1
403	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:06.413	\N	\N	testUserName-1189624266288	0	1
404	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:06.653	\N	\N	testUserName-1189624266544	0	1
405	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:06.897	\N	\N	testUserName-1189624266782	0	1
406	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:07.291	\N	\N	testUserName-1189624267086	0	1
407	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:07.755	\N	\N	testUserName-1189624267563	0	1
408	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:08.265	\N	\N	testUserName-1189624268060	0	1
409	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:08.683	\N	\N	testUserName-1189624268551	0	1
410	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:08.926	\N	\N	testUserName-1189624268811	0	1
411	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:09.161	\N	\N	testUserName-1189624269054	0	1
412	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:09.407	\N	\N	testUserName-1189624269293	0	1
413	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:09.718	\N	\N	testUserName-1189624269535	0	1
414	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:10.212	\N	\N	testUserName-1189624270015	0	1
415	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:10.686	\N	\N	testUserName-1189624270492	0	1
416	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:11.175	\N	\N	testUserName-1189624271014	0	1
417	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:11.415	\N	\N	testUserName-1189624271301	0	1
418	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:11.655	\N	\N	testUserName-1189624271546	0	1
419	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:11.904	\N	\N	testUserName-1189624271790	0	1
420	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:12.198	\N	\N	testUserName-1189624272036	0	1
421	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:12.664	\N	\N	testUserName-1189624272469	0	1
422	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:13.119	\N	\N	testUserName-1189624272942	0	1
423	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:13.62	\N	\N	testUserName-1189624273420	0	1
424	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:13.957	\N	\N	testUserName-1189624273836	0	1
425	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:14.199	\N	\N	testUserName-1189624274084	0	1
426	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:14.442	\N	\N	testUserName-1189624274326	0	1
427	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:14.693	\N	\N	testUserName-1189624274571	0	1
428	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:15.064	\N	\N	testUserName-1189624274882	0	1
429	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:15.501	\N	\N	testUserName-1189624275309	0	1
430	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:15.921	\N	\N	testUserName-1189624275743	0	1
431	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:16.595	\N	\N	testUserName-1189624276378	0	1
432	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:16.844	\N	\N	testUserName-1189624276737	0	1
433	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:17.094	\N	\N	testUserName-1189624276977	0	1
434	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:17.348	\N	\N	testUserName-1189624277235	0	1
435	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:17.627	\N	\N	testUserName-1189624277475	0	1
436	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:18.146	\N	\N	testUserName-1189624277941	0	1
437	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:18.643	\N	\N	testUserName-1189624278454	0	1
438	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:19.088	\N	\N	testUserName-1189624278904	0	1
439	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:19.402	\N	\N	testUserName-1189624279289	0	1
440	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:19.655	\N	\N	testUserName-1189624279532	0	1
441	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:19.905	\N	\N	testUserName-1189624279784	0	1
442	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:20.151	\N	\N	testUserName-1189624280034	0	1
443	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:20.565	\N	\N	testUserName-1189624280348	0	1
444	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:21.04	\N	\N	testUserName-1189624280859	0	1
445	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:21.521	\N	\N	testUserName-1189624281334	0	1
446	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:21.932	\N	\N	testUserName-1189624281801	0	1
447	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:22.175	\N	\N	testUserName-1189624282062	0	1
448	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:22.428	\N	\N	testUserName-1189624282307	0	1
449	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:22.676	\N	\N	testUserName-1189624282556	0	1
450	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:23.01	\N	\N	testUserName-1189624282805	0	1
451	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:23.492	\N	\N	testUserName-1189624283302	0	1
452	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:23.951	\N	\N	testUserName-1189624283759	0	1
453	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:24.392	\N	\N	testUserName-1189624284222	0	1
454	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:24.731	\N	\N	testUserName-1189624284616	0	1
455	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:24.985	\N	\N	testUserName-1189624284864	0	1
456	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:25.232	\N	\N	testUserName-1189624285120	0	1
457	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:25.477	\N	\N	testUserName-1189624285360	0	1
458	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:25.883	\N	\N	testUserName-1189624285682	0	1
459	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:26.355	\N	\N	testUserName-1189624286165	0	1
460	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:26.808	\N	\N	testUserName-1189624286615	0	1
461	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:27.239	\N	\N	testUserName-1189624287108	0	1
462	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:27.478	\N	\N	testUserName-1189624287365	0	1
463	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:27.727	\N	\N	testUserName-1189624287606	0	1
464	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:27.98	\N	\N	testUserName-1189624287858	0	1
465	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:28.245	\N	\N	testUserName-1189624288106	0	1
466	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:28.736	\N	\N	testUserName-1189624288526	0	1
467	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:29.208	\N	\N	testUserName-1189624289039	0	1
468	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:29.69	\N	\N	testUserName-1189624289500	0	1
469	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:30.015	\N	\N	testUserName-1189624289895	0	1
470	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:30.246	\N	\N	testUserName-1189624290142	0	1
471	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:30.50	\N	\N	testUserName-1189624290373	0	1
472	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:30.748	\N	\N	testUserName-1189624290633	0	1
473	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:31.124	\N	\N	testUserName-1189624290926	0	1
474	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:31.638	\N	\N	testUserName-1189624291450	0	1
475	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:32.12	\N	\N	testUserName-1189624291927	0	1
476	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:32.55	\N	\N	testUserName-1189624292417	0	1
477	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:32.788	\N	\N	testUserName-1189624292681	0	1
478	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:33.048	\N	\N	testUserName-1189624292922	0	1
479	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:33.288	\N	\N	testUserName-1189624293176	0	1
480	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:33.581	\N	\N	testUserName-1189624293416	0	1
481	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:34.048	\N	\N	testUserName-1189624293878	0	1
482	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:34.579	\N	\N	testUserName-1189624294348	0	1
483	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:35.141	\N	\N	testUserName-1189624295013	0	1
484	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:35.386	\N	\N	testUserName-1189624295279	0	1
485	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:35.647	\N	\N	testUserName-1189624295521	0	1
486	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:35.904	\N	\N	testUserName-1189624295787	0	1
487	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:36.286	\N	\N	testUserName-1189624296073	0	1
488	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:36.798	\N	\N	testUserName-1189624296582	0	1
489	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:37.299	\N	\N	testUserName-1189624297115	0	1
490	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:37.712	\N	\N	testUserName-1189624297573	0	1
491	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:37.956	\N	\N	testUserName-1189624297844	0	1
492	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:38.206	\N	\N	testUserName-1189624298088	0	1
493	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:38.45	\N	\N	testUserName-1189624298334	0	1
494	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:38.769	\N	\N	testUserName-1189624298586	0	1
495	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:39.199	\N	\N	testUserName-1189624299023	0	1
496	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:39.663	\N	\N	testUserName-1189624299465	0	1
497	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:40.118	\N	\N	testUserName-1189624299945	0	1
498	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:40.464	\N	\N	testUserName-1189624300352	0	1
499	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:40.713	\N	\N	testUserName-1189624300598	0	1
500	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:40.957	\N	\N	testUserName-1189624300839	0	1
501	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:41.204	\N	\N	testUserName-1189624301084	0	1
502	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:41.576	\N	\N	testUserName-1189624301383	0	1
503	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:42.033	\N	\N	testUserName-1189624301855	0	1
504	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:42.50	\N	\N	testUserName-1189624302312	0	1
505	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:42.978	\N	\N	testUserName-1189624302793	0	1
506	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:43.291	\N	\N	testUserName-1189624303176	0	1
507	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:43.544	\N	\N	testUserName-1189624303422	0	1
508	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:43.799	\N	\N	testUserName-1189624303678	0	1
509	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:44.034	\N	\N	testUserName-1189624303929	0	1
510	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:44.465	\N	\N	testUserName-1189624304256	0	1
511	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:44.94	\N	\N	testUserName-1189624304754	0	1
512	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:45.398	\N	\N	testUserName-1189624305222	0	1
513	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:45.767	\N	\N	testUserName-1189624305645	0	1
514	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:46.03	\N	\N	testUserName-1189624305906	0	1
515	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:46.291	\N	\N	testUserName-1189624306160	0	1
516	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:46.533	\N	\N	testUserName-1189624306416	0	1
517	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:46.872	\N	\N	testUserName-1189624306686	0	1
518	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:47.334	\N	\N	testUserName-1189624307140	0	1
519	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:47.804	\N	\N	testUserName-1189624307619	0	1
520	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:48.269	\N	\N	testUserName-1189624308089	0	1
521	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:48.584	\N	\N	testUserName-1189624308468	0	1
522	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:48.844	\N	\N	testUserName-1189624308716	0	1
523	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:49.078	\N	\N	testUserName-1189624308971	0	1
524	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:49.324	\N	\N	testUserName-1189624309219	0	1
525	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:49.755	\N	\N	testUserName-1189624309539	0	1
526	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:50.208	\N	\N	testUserName-1189624310036	0	1
527	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:50.683	\N	\N	testUserName-1189624310508	0	1
528	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:51.09	\N	\N	testUserName-1189624310966	0	1
529	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:51.348	\N	\N	testUserName-1189624311222	0	1
530	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:51.594	\N	\N	testUserName-1189624311476	0	1
531	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:51.839	\N	\N	testUserName-1189624311723	0	1
532	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:52.225	\N	\N	testUserName-1189624312031	0	1
533	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:52.712	\N	\N	testUserName-1189624312505	0	1
534	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:53.172	\N	\N	testUserName-1189624312996	0	1
535	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:53.614	\N	\N	testUserName-1189624313478	0	1
536	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:53.883	\N	\N	testUserName-1189624313754	0	1
537	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:54.126	\N	\N	testUserName-1189624314012	0	1
538	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:54.36	\N	\N	testUserName-1189624314254	0	1
539	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:54.681	\N	\N	testUserName-1189624314491	0	1
540	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:55.168	\N	\N	testUserName-1189624314984	0	1
541	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:55.68	\N	\N	testUserName-1189624315459	0	1
542	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:56.093	\N	\N	testUserName-1189624315958	0	1
543	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:56.341	\N	\N	testUserName-1189624316220	0	1
544	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:56.599	\N	\N	testUserName-1189624316476	0	1
545	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:56.841	\N	\N	testUserName-1189624316729	0	1
546	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:57.131	\N	\N	testUserName-1189624316971	0	1
547	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:57.59	\N	\N	testUserName-1189624317411	0	1
548	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:58.077	\N	\N	testUserName-1189624317869	0	1
549	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:58.522	\N	\N	testUserName-1189624318337	0	1
550	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:58.898	\N	\N	testUserName-1189624318773	0	1
551	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:59.145	\N	\N	testUserName-1189624319024	0	1
552	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:59.38	\N	\N	testUserName-1189624319272	0	1
553	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:11:59.63	\N	\N	testUserName-1189624319509	0	1
554	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:00.003	\N	\N	testUserName-1189624319827	0	1
555	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:00.467	\N	\N	testUserName-1189624320265	0	1
556	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:00.942	\N	\N	testUserName-1189624320750	0	1
557	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:01.412	\N	\N	testUserName-1189624321240	0	1
558	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:02.206	\N	\N	testUserName-1189624322097	0	1
559	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:02.528	\N	\N	testUserName-1189624322353	0	1
560	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:02.996	\N	\N	testUserName-1189624322829	0	1
561	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:03.304	\N	\N	testUserName-1189624323198	0	1
562	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:03.541	\N	\N	testUserName-1189624323434	0	1
563	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:03.801	\N	\N	testUserName-1189624323679	0	1
564	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:04.05	\N	\N	testUserName-1189624323933	0	1
565	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:04.378	\N	\N	testUserName-1189624324210	0	1
566	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:04.817	\N	\N	testUserName-1189624324616	0	1
567	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:05.226	\N	\N	testUserName-1189624325038	0	1
568	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:05.693	\N	\N	testUserName-1189624325463	0	1
569	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:06.095	\N	\N	testUserName-1189624325929	0	1
570	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:06.339	\N	\N	testUserName-1189624326225	0	1
571	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:06.587	\N	\N	testUserName-1189624326468	0	1
572	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:06.825	\N	\N	testUserName-1189624326715	0	1
573	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:07.095	\N	\N	testUserName-1189624326956	0	1
574	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:07.548	\N	\N	testUserName-1189624327348	0	1
575	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:08.015	\N	\N	testUserName-1189624327839	0	1
576	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:08.498	\N	\N	testUserName-1189624328303	0	1
577	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:08.914	\N	\N	testUserName-1189624328794	0	1
578	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:09.17	\N	\N	testUserName-1189624329048	0	1
579	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:09.408	\N	\N	testUserName-1189624329297	0	1
580	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:09.654	\N	\N	testUserName-1189624329541	0	1
581	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:09.978	\N	\N	testUserName-1189624329789	0	1
582	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:10.458	\N	\N	testUserName-1189624330262	0	1
583	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:10.944	\N	\N	testUserName-1189624330743	0	1
584	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:11.41	\N	\N	testUserName-1189624331248	0	1
585	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:11.656	\N	\N	testUserName-1189624331533	0	1
586	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:11.897	\N	\N	testUserName-1189624331782	0	1
587	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:12.137	\N	\N	testUserName-1189624332027	0	1
588	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:12.41	\N	\N	testUserName-1189624332266	0	1
589	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:12.884	\N	\N	testUserName-1189624332704	0	1
590	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:13.321	\N	\N	testUserName-1189624333160	0	1
591	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:13.77	\N	\N	testUserName-1189624333585	0	1
592	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:14.126	\N	\N	testUserName-1189624334012	0	1
593	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:14.365	\N	\N	testUserName-1189624334255	0	1
594	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:14.613	\N	\N	testUserName-1189624334498	0	1
595	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:14.852	\N	\N	testUserName-1189624334742	0	1
596	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:15.186	\N	\N	testUserName-1189624335009	0	1
597	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:15.645	\N	\N	testUserName-1189624335479	0	1
598	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:16.184	\N	\N	testUserName-1189624335929	0	1
599	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:16.813	\N	\N	testUserName-1189624336691	0	1
600	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:17.058	\N	\N	testUserName-1189624336939	0	1
601	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:17.298	\N	\N	testUserName-1189624337178	0	1
602	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:17.533	\N	\N	testUserName-1189624337418	0	1
603	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:17.969	\N	\N	testUserName-1189624337750	0	1
604	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:18.47	\N	\N	testUserName-1189624338294	0	1
605	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:18.961	\N	\N	testUserName-1189624338774	0	1
606	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:19.311	\N	\N	testUserName-1189624339198	0	1
607	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:19.544	\N	\N	testUserName-1189624339438	0	1
608	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:19.793	\N	\N	testUserName-1189624339676	0	1
609	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:20.027	\N	\N	testUserName-1189624339922	0	1
610	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:20.412	\N	\N	testUserName-1189624340232	0	1
611	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:20.916	\N	\N	testUserName-1189624340723	0	1
612	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:21.368	\N	\N	testUserName-1189624341186	0	1
613	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:21.822	\N	\N	testUserName-1189624341611	0	1
614	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:22.075	\N	\N	testUserName-1189624341958	0	1
615	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:22.325	\N	\N	testUserName-1189624342202	0	1
616	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:22.559	\N	\N	testUserName-1189624342445	0	1
617	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:22.80	\N	\N	testUserName-1189624342682	0	1
618	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:23.279	\N	\N	testUserName-1189624343056	0	1
619	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:23.77	\N	\N	testUserName-1189624343567	0	1
620	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:24.246	\N	\N	testUserName-1189624344059	0	1
621	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:24.581	\N	\N	testUserName-1189624344468	0	1
622	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:24.837	\N	\N	testUserName-1189624344715	0	1
623	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:25.076	\N	\N	testUserName-1189624344966	0	1
624	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:25.314	\N	\N	testUserName-1189624345206	0	1
625	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:25.688	\N	\N	testUserName-1189624345507	0	1
626	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:26.20	\N	\N	testUserName-1189624346012	0	1
627	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:26.688	\N	\N	testUserName-1189624346467	0	1
628	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:27.095	\N	\N	testUserName-1189624346959	0	1
629	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:27.349	\N	\N	testUserName-1189624347229	0	1
630	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:27.588	\N	\N	testUserName-1189624347475	0	1
631	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:27.826	\N	\N	testUserName-1189624347718	0	1
632	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:28.10	\N	\N	testUserName-1189624347954	0	1
633	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:28.584	\N	\N	testUserName-1189624348389	0	1
634	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:29.048	\N	\N	testUserName-1189624348854	0	1
635	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:29.513	\N	\N	testUserName-1189624349333	0	1
636	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:29.923	\N	\N	testUserName-1189624349784	0	1
637	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:30.16	\N	\N	testUserName-1189624350045	0	1
638	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:30.401	\N	\N	testUserName-1189624350293	0	1
639	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:30.646	\N	\N	testUserName-1189624350533	0	1
640	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:30.941	\N	\N	testUserName-1189624350775	0	1
641	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:31.415	\N	\N	testUserName-1189624351244	0	1
642	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:31.90	\N	\N	testUserName-1189624351695	0	1
643	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:32.355	\N	\N	testUserName-1189624352205	0	1
644	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:32.602	\N	\N	testUserName-1189624352493	0	1
645	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:32.836	\N	\N	testUserName-1189624352731	0	1
646	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:33.073	\N	\N	testUserName-1189624352965	0	1
647	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:33.36	\N	\N	testUserName-1189624353209	0	1
648	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:33.842	\N	\N	testUserName-1189624353655	0	1
649	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:34.348	\N	\N	testUserName-1189624354154	0	1
650	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:34.814	\N	\N	testUserName-1189624354604	0	1
651	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:35.123	\N	\N	testUserName-1189624355007	0	1
652	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:35.369	\N	\N	testUserName-1189624355247	0	1
653	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:35.605	\N	\N	testUserName-1189624355488	0	1
654	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:35.863	\N	\N	testUserName-1189624355732	0	1
655	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:36.235	\N	\N	testUserName-1189624356061	0	1
656	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:36.725	\N	\N	testUserName-1189624356510	0	1
657	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:37.228	\N	\N	testUserName-1189624357026	0	1
658	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:37.648	\N	\N	testUserName-1189624357517	0	1
659	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:37.899	\N	\N	testUserName-1189624357784	0	1
660	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:38.134	\N	\N	testUserName-1189624358027	0	1
661	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:38.375	\N	\N	testUserName-1189624358263	0	1
662	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:38.676	\N	\N	testUserName-1189624358506	0	1
663	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:39.172	\N	\N	testUserName-1189624358990	0	1
664	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:39.661	\N	\N	testUserName-1189624359452	0	1
665	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:40.138	\N	\N	testUserName-1189624359954	0	1
666	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:40.463	\N	\N	testUserName-1189624360339	0	1
667	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:40.70	\N	\N	testUserName-1189624360586	0	1
668	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:40.958	\N	\N	testUserName-1189624360827	0	1
669	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:41.202	\N	\N	testUserName-1189624361080	0	1
670	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:41.625	\N	\N	testUserName-1189624361429	0	1
671	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:42.083	\N	\N	testUserName-1189624361899	0	1
672	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:42.565	\N	\N	testUserName-1189624362362	0	1
673	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:42.929	\N	\N	testUserName-1189624362822	0	1
674	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:43.167	\N	\N	testUserName-1189624363060	0	1
675	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:43.407	\N	\N	testUserName-1189624363294	0	1
676	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:43.657	\N	\N	testUserName-1189624363542	0	1
677	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:43.969	\N	\N	testUserName-1189624363791	0	1
678	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:44.46	\N	\N	testUserName-1189624364261	0	1
679	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:44.968	\N	\N	testUserName-1189624364784	0	1
680	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:45.443	\N	\N	testUserName-1189624365259	0	1
681	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:45.712	\N	\N	testUserName-1189624365606	0	1
682	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:45.949	\N	\N	testUserName-1189624365841	0	1
683	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:46.198	\N	\N	testUserName-1189624366079	0	1
684	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:46.446	\N	\N	testUserName-1189624366331	0	1
685	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:46.854	\N	\N	testUserName-1189624366655	0	1
686	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:47.315	\N	\N	testUserName-1189624367131	0	1
687	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:47.774	\N	\N	testUserName-1189624367586	0	1
688	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:48.212	\N	\N	testUserName-1189624368059	0	1
689	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:48.461	\N	\N	testUserName-1189624368339	0	1
690	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:48.708	\N	\N	testUserName-1189624368597	0	1
691	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:48.948	\N	\N	testUserName-1189624368841	0	1
692	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:49.228	\N	\N	testUserName-1189624369076	0	1
693	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:49.719	\N	\N	testUserName-1189624369521	0	1
694	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:50.173	\N	\N	testUserName-1189624370005	0	1
695	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:50.696	\N	\N	testUserName-1189624370486	0	1
696	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:51.032	\N	\N	testUserName-1189624370919	0	1
697	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:51.279	\N	\N	testUserName-1189624371162	0	1
698	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:51.514	\N	\N	testUserName-1189624371407	0	1
699	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:51.758	\N	\N	testUserName-1189624371650	0	1
700	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:52.158	\N	\N	testUserName-1189624371982	0	1
701	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:52.635	\N	\N	testUserName-1189624372438	0	1
702	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:53.118	\N	\N	testUserName-1189624372937	0	1
703	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:53.492	\N	\N	testUserName-1189624373370	0	1
704	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:53.746	\N	\N	testUserName-1189624373623	0	1
705	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:53.987	\N	\N	testUserName-1189624373868	0	1
706	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:54.222	\N	\N	testUserName-1189624374109	0	1
707	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:54.533	\N	\N	testUserName-1189624374354	0	1
708	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:55.032	\N	\N	testUserName-1189624374837	0	1
709	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:55.477	\N	\N	testUserName-1189624375300	0	1
710	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:55.968	\N	\N	testUserName-1189624375767	0	1
711	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:56.29	\N	\N	testUserName-1189624376178	0	1
712	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:56.536	\N	\N	testUserName-1189624376419	0	1
713	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:56.778	\N	\N	testUserName-1189624376669	0	1
714	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:57.025	\N	\N	testUserName-1189624376915	0	1
715	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:57.388	\N	\N	testUserName-1189624377204	0	1
716	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:57.849	\N	\N	testUserName-1189624377667	0	1
717	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:58.353	\N	\N	testUserName-1189624378164	0	1
718	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:58.809	\N	\N	testUserName-1189624378665	0	1
719	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:59.064	\N	\N	testUserName-1189624378933	0	1
720	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:59.308	\N	\N	testUserName-1189624379183	0	1
721	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:59.56	\N	\N	testUserName-1189624379435	0	1
722	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:12:59.858	\N	\N	testUserName-1189624379687	0	1
723	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:00.305	\N	\N	testUserName-1189624380136	0	1
724	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:00.798	\N	\N	testUserName-1189624380605	0	1
725	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:01.294	\N	\N	testUserName-1189624381104	0	1
726	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:01.605	\N	\N	testUserName-1189624381495	0	1
727	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:01.845	\N	\N	testUserName-1189624381734	0	1
728	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:02.10	\N	\N	testUserName-1189624381983	0	1
729	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:02.343	\N	\N	testUserName-1189624382230	0	1
730	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:02.702	\N	\N	testUserName-1189624382530	0	1
731	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:03.167	\N	\N	testUserName-1189624382982	0	1
732	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:03.658	\N	\N	testUserName-1189624383468	0	1
733	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:04.103	\N	\N	testUserName-1189624383969	0	1
734	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:04.348	\N	\N	testUserName-1189624384237	0	1
735	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:04.609	\N	\N	testUserName-1189624384480	0	1
736	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:04.851	\N	\N	testUserName-1189624384735	0	1
737	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:05.148	\N	\N	testUserName-1189624384978	0	1
738	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:05.647	\N	\N	testUserName-1189624385450	0	1
739	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:06.135	\N	\N	testUserName-1189624385923	0	1
740	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:06.592	\N	\N	testUserName-1189624386433	0	1
741	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:06.827	\N	\N	testUserName-1189624386725	0	1
742	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:07.081	\N	\N	testUserName-1189624386958	0	1
743	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:07.317	\N	\N	testUserName-1189624387215	0	1
744	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:07.583	\N	\N	testUserName-1189624387451	0	1
745	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:08.054	\N	\N	testUserName-1189624387880	0	1
746	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:08.548	\N	\N	testUserName-1189624388341	0	1
747	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:09.023	\N	\N	testUserName-1189624388839	0	1
748	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:09.363	\N	\N	testUserName-1189624389242	0	1
749	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:09.608	\N	\N	testUserName-1189624389496	0	1
750	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:09.856	\N	\N	testUserName-1189624389737	0	1
751	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:10.084	\N	\N	testUserName-1189624389985	0	1
752	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:10.503	\N	\N	testUserName-1189624390276	0	1
753	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:10.932	\N	\N	testUserName-1189624390753	0	1
754	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:11.441	\N	\N	testUserName-1189624391211	0	1
755	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:11.888	\N	\N	testUserName-1189624391735	0	1
756	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:12.14	\N	\N	testUserName-1189624392010	0	1
757	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:12.385	\N	\N	testUserName-1189624392262	0	1
758	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:12.644	\N	\N	testUserName-1189624392516	0	1
759	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:12.934	\N	\N	testUserName-1189624392777	0	1
760	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:13.402	\N	\N	testUserName-1189624393234	0	1
761	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:13.928	\N	\N	testUserName-1189624393725	0	1
762	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:14.365	\N	\N	testUserName-1189624394222	0	1
763	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:14.61	\N	\N	testUserName-1189624394501	0	1
764	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:14.872	\N	\N	testUserName-1189624394747	0	1
765	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:15.107	\N	\N	testUserName-1189624395005	0	1
766	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:15.397	\N	\N	testUserName-1189624395237	0	1
767	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:15.862	\N	\N	testUserName-1189624395674	0	1
768	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:16.721	\N	\N	testUserName-1189624396452	0	1
769	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:17.083	\N	\N	testUserName-1189624396960	0	1
770	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:17.324	\N	\N	testUserName-1189624397205	0	1
771	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:17.56	\N	\N	testUserName-1189624397444	0	1
772	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:17.812	\N	\N	testUserName-1189624397687	0	1
773	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:18.194	\N	\N	testUserName-1189624397993	0	1
774	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:18.676	\N	\N	testUserName-1189624398490	0	1
775	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:19.153	\N	\N	testUserName-1189624398960	0	1
776	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:19.575	\N	\N	testUserName-1189624399438	0	1
777	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:19.815	\N	\N	testUserName-1189624399712	0	1
778	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:20.065	\N	\N	testUserName-1189624399947	0	1
779	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:20.305	\N	\N	testUserName-1189624400198	0	1
780	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:20.588	\N	\N	testUserName-1189624400436	0	1
781	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:21.045	\N	\N	testUserName-1189624400873	0	1
782	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:21.528	\N	\N	testUserName-1189624401355	0	1
783	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:22.044	\N	\N	testUserName-1189624401844	0	1
784	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:22.362	\N	\N	testUserName-1189624402249	0	1
785	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:22.608	\N	\N	testUserName-1189624402493	0	1
786	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:22.874	\N	\N	testUserName-1189624402742	0	1
787	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:23.124	\N	\N	testUserName-1189624403006	0	1
788	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:23.488	\N	\N	testUserName-1189624403294	0	1
789	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:23.915	\N	\N	testUserName-1189624403740	0	1
790	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:24.418	\N	\N	testUserName-1189624404207	0	1
791	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:24.844	\N	\N	testUserName-1189624404661	0	1
792	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:25.166	\N	\N	testUserName-1189624405050	0	1
793	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:25.406	\N	\N	testUserName-1189624405295	0	1
794	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:25.668	\N	\N	testUserName-1189624405543	0	1
795	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:25.907	\N	\N	testUserName-1189624405799	0	1
796	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:26.338	\N	\N	testUserName-1189624406135	0	1
797	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:26.824	\N	\N	testUserName-1189624406641	0	1
798	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:27.308	\N	\N	testUserName-1189624407130	0	1
799	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:27.664	\N	\N	testUserName-1189624407549	0	1
800	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:27.924	\N	\N	testUserName-1189624407798	0	1
801	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:28.164	\N	\N	testUserName-1189624408054	0	1
802	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:28.414	\N	\N	testUserName-1189624408292	0	1
803	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:28.805	\N	\N	testUserName-1189624408610	0	1
804	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:29.288	\N	\N	testUserName-1189624409083	0	1
805	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:29.742	\N	\N	testUserName-1189624409557	0	1
806	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:30.184	\N	\N	testUserName-1189624409983	0	1
807	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:30.475	\N	\N	testUserName-1189624410361	0	1
808	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:30.723	\N	\N	testUserName-1189624410598	0	1
809	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:30.982	\N	\N	testUserName-1189624410861	0	1
810	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:31.223	\N	\N	testUserName-1189624411109	0	1
811	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:31.613	\N	\N	testUserName-1189624411422	0	1
812	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:32.12	\N	\N	testUserName-1189624411927	0	1
813	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:32.548	\N	\N	testUserName-1189624412359	0	1
814	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:33.006	\N	\N	testUserName-1189624412813	0	1
815	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:33.30	\N	\N	testUserName-1189624413194	0	1
816	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:33.542	\N	\N	testUserName-1189624413429	0	1
817	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:33.774	\N	\N	testUserName-1189624413672	0	1
818	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:34.022	\N	\N	testUserName-1189624413906	0	1
819	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:34.41	\N	\N	testUserName-1189624414223	0	1
820	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:35.093	\N	\N	testUserName-1189624414878	0	1
821	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:35.573	\N	\N	testUserName-1189624415382	0	1
822	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:35.962	\N	\N	testUserName-1189624415814	0	1
823	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:36.196	\N	\N	testUserName-1189624416084	0	1
824	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:36.446	\N	\N	testUserName-1189624416321	0	1
825	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:36.681	\N	\N	testUserName-1189624416566	0	1
826	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:36.967	\N	\N	testUserName-1189624416807	0	1
827	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:37.453	\N	\N	testUserName-1189624417241	0	1
828	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:37.902	\N	\N	testUserName-1189624417694	0	1
829	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:38.333	\N	\N	testUserName-1189624418144	0	1
830	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:38.754	\N	\N	testUserName-1189624418631	0	1
831	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:38.991	\N	\N	testUserName-1189624418886	0	1
832	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:39.235	\N	\N	testUserName-1189624419122	0	1
833	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:39.466	\N	\N	testUserName-1189624419364	0	1
834	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:39.765	\N	\N	testUserName-1189624419602	0	1
835	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:40.242	\N	\N	testUserName-1189624420069	0	1
836	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:40.768	\N	\N	testUserName-1189624420544	0	1
837	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:41.23	\N	\N	testUserName-1189624421074	0	1
838	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:41.478	\N	\N	testUserName-1189624421352	0	1
839	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:41.72	\N	\N	testUserName-1189624421602	0	1
840	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:41.968	\N	\N	testUserName-1189624421846	0	1
841	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:42.255	\N	\N	testUserName-1189624422093	0	1
842	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:42.763	\N	\N	testUserName-1189624422550	0	1
843	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:43.225	\N	\N	testUserName-1189624423045	0	1
844	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:43.712	\N	\N	testUserName-1189624423514	0	1
845	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:44.033	\N	\N	testUserName-1189624423925	0	1
846	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:44.283	\N	\N	testUserName-1189624424164	0	1
847	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:44.528	\N	\N	testUserName-1189624424417	0	1
848	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:44.789	\N	\N	testUserName-1189624424662	0	1
849	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:45.181	\N	\N	testUserName-1189624425000	0	1
850	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:45.647	\N	\N	testUserName-1189624425454	0	1
851	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:46.111	\N	\N	testUserName-1189624425934	0	1
852	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:46.539	\N	\N	testUserName-1189624426412	0	1
853	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:46.79	\N	\N	testUserName-1189624426676	0	1
854	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:47.049	\N	\N	testUserName-1189624426925	0	1
855	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:47.29	\N	\N	testUserName-1189624427173	0	1
856	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:47.598	\N	\N	testUserName-1189624427410	0	1
857	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:48.051	\N	\N	testUserName-1189624427863	0	1
858	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:48.504	\N	\N	testUserName-1189624428309	0	1
859	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:48.996	\N	\N	testUserName-1189624428791	0	1
860	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:49.341	\N	\N	testUserName-1189624429217	0	1
861	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:49.572	\N	\N	testUserName-1189624429468	0	1
862	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:49.822	\N	\N	testUserName-1189624429705	0	1
863	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:50.061	\N	\N	testUserName-1189624429952	0	1
864	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:50.475	\N	\N	testUserName-1189624430268	0	1
865	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:50.951	\N	\N	testUserName-1189624430765	0	1
866	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:51.441	\N	\N	testUserName-1189624431243	0	1
867	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:51.846	\N	\N	testUserName-1189624431729	0	1
868	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:52.092	\N	\N	testUserName-1189624431983	0	1
869	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:52.328	\N	\N	testUserName-1189624432221	0	1
870	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:52.572	\N	\N	testUserName-1189624432458	0	1
871	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:52.887	\N	\N	testUserName-1189624432704	0	1
872	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:53.382	\N	\N	testUserName-1189624433166	0	1
873	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:53.822	\N	\N	testUserName-1189624433630	0	1
874	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:54.364	\N	\N	testUserName-1189624434157	0	1
875	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:54.617	\N	\N	testUserName-1189624434492	0	1
876	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:54.871	\N	\N	testUserName-1189624434737	0	1
877	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:55.098	\N	\N	testUserName-1189624434997	0	1
878	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:55.399	\N	\N	testUserName-1189624435234	0	1
879	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:55.866	\N	\N	testUserName-1189624435692	0	1
880	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:56.328	\N	\N	testUserName-1189624436144	0	1
881	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:56.819	\N	\N	testUserName-1189624436633	0	1
882	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:57.131	\N	\N	testUserName-1189624437019	0	1
883	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:57.37	\N	\N	testUserName-1189624437263	0	1
884	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:57.62	\N	\N	testUserName-1189624437504	0	1
885	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:57.862	\N	\N	testUserName-1189624437751	0	1
886	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:58.261	\N	\N	testUserName-1189624438055	0	1
887	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:58.761	\N	\N	testUserName-1189624438576	0	1
888	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:59.26	\N	\N	testUserName-1189624439047	0	1
889	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:59.604	\N	\N	testUserName-1189624439482	0	1
890	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:13:59.86	\N	\N	testUserName-1189624439729	0	1
891	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:00.099	\N	\N	testUserName-1189624439982	0	1
892	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:00.374	\N	\N	testUserName-1189624440236	0	1
893	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:00.792	\N	\N	testUserName-1189624440575	0	1
894	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:01.29	\N	\N	testUserName-1189624441100	0	1
895	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:01.809	\N	\N	testUserName-1189624441614	0	1
896	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:02.137	\N	\N	testUserName-1189624442020	0	1
897	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:02.387	\N	\N	testUserName-1189624442271	0	1
898	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:02.632	\N	\N	testUserName-1189624442516	0	1
899	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:02.882	\N	\N	testUserName-1189624442766	0	1
900	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:03.295	\N	\N	testUserName-1189624443087	0	1
901	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:03.799	\N	\N	testUserName-1189624443593	0	1
902	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:04.279	\N	\N	testUserName-1189624444098	0	1
903	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:04.621	\N	\N	testUserName-1189624444508	0	1
904	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:04.894	\N	\N	testUserName-1189624444759	0	1
905	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:05.131	\N	\N	testUserName-1189624445016	0	1
906	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:05.382	\N	\N	testUserName-1189624445255	0	1
907	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:05.772	\N	\N	testUserName-1189624445587	0	1
908	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:06.226	\N	\N	testUserName-1189624446035	0	1
909	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:06.70	\N	\N	testUserName-1189624446488	0	1
910	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:07.15	\N	\N	testUserName-1189624447006	0	1
911	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:07.394	\N	\N	testUserName-1189624447281	0	1
912	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:07.647	\N	\N	testUserName-1189624447526	0	1
913	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:07.881	\N	\N	testUserName-1189624447774	0	1
914	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:08.191	\N	\N	testUserName-1189624448015	0	1
915	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:08.623	\N	\N	testUserName-1189624448454	0	1
916	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:09.087	\N	\N	testUserName-1189624448883	0	1
917	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:09.533	\N	\N	testUserName-1189624449354	0	1
918	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:09.99	\N	\N	testUserName-1189624449781	0	1
919	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:10.242	\N	\N	testUserName-1189624450125	0	1
920	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:10.477	\N	\N	testUserName-1189624450369	0	1
921	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:10.728	\N	\N	testUserName-1189624450609	0	1
922	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:10.965	\N	\N	testUserName-1189624450847	0	1
923	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:11.382	\N	\N	testUserName-1189624451186	0	1
924	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:11.89	\N	\N	testUserName-1189624451682	0	1
925	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:12.396	\N	\N	testUserName-1189624452182	0	1
926	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:12.781	\N	\N	testUserName-1189624452639	0	1
927	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:13.028	\N	\N	testUserName-1189624452915	0	1
928	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:13.271	\N	\N	testUserName-1189624453155	0	1
929	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:13.518	\N	\N	testUserName-1189624453403	0	1
930	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:13.82	\N	\N	testUserName-1189624453651	0	1
931	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:14.291	\N	\N	testUserName-1189624454103	0	1
932	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:14.798	\N	\N	testUserName-1189624454601	0	1
933	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:15.234	\N	\N	testUserName-1189624455079	0	1
934	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:15.485	\N	\N	testUserName-1189624455372	0	1
935	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:15.732	\N	\N	testUserName-1189624455618	0	1
936	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:15.975	\N	\N	testUserName-1189624455864	0	1
937	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:16.373	\N	\N	testUserName-1189624456126	0	1
938	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:17.098	\N	\N	testUserName-1189624456901	0	1
939	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:17.637	\N	\N	testUserName-1189624457397	0	1
940	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:17.888	\N	\N	testUserName-1189624457768	0	1
941	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:18.122	\N	\N	testUserName-1189624458009	0	1
942	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:18.382	\N	\N	testUserName-1189624458259	0	1
943	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:18.631	\N	\N	testUserName-1189624458509	0	1
944	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:19.098	\N	\N	testUserName-1189624458921	0	1
945	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:19.559	\N	\N	testUserName-1189624459373	0	1
946	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:20.034	\N	\N	testUserName-1189624459875	0	1
947	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:20.386	\N	\N	testUserName-1189624460285	0	1
948	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:20.628	\N	\N	testUserName-1189624460517	0	1
949	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:20.882	\N	\N	testUserName-1189624460764	0	1
950	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:21.123	\N	\N	testUserName-1189624461016	0	1
951	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:21.416	\N	\N	testUserName-1189624461251	0	1
952	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:21.888	\N	\N	testUserName-1189624461705	0	1
953	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:22.418	\N	\N	testUserName-1189624462202	0	1
954	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:22.909	\N	\N	testUserName-1189624462710	0	1
955	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:23.225	\N	\N	testUserName-1189624463104	0	1
956	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:23.462	\N	\N	testUserName-1189624463346	0	1
957	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:23.709	\N	\N	testUserName-1189624463592	0	1
958	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:23.945	\N	\N	testUserName-1189624463827	0	1
959	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:24.325	\N	\N	testUserName-1189624464126	0	1
960	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:24.844	\N	\N	testUserName-1189624464653	0	1
961	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:25.277	\N	\N	testUserName-1189624465114	0	1
962	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:25.683	\N	\N	testUserName-1189624465541	0	1
963	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:25.922	\N	\N	testUserName-1189624465809	0	1
964	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:26.178	\N	\N	testUserName-1189624466064	0	1
965	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:26.423	\N	\N	testUserName-1189624466308	0	1
966	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:26.718	\N	\N	testUserName-1189624466553	0	1
967	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:27.187	\N	\N	testUserName-1189624466989	0	1
968	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:27.686	\N	\N	testUserName-1189624467496	0	1
969	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:28.181	\N	\N	testUserName-1189624468000	0	1
970	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:28.508	\N	\N	testUserName-1189624468399	0	1
971	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:28.76	\N	\N	testUserName-1189624468639	0	1
972	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:29.005	\N	\N	testUserName-1189624468888	0	1
973	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:29.24	\N	\N	testUserName-1189624469123	0	1
974	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:29.663	\N	\N	testUserName-1189624469432	0	1
975	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:30.151	\N	\N	testUserName-1189624469950	0	1
976	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:30.636	\N	\N	testUserName-1189624470430	0	1
977	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:31.051	\N	\N	testUserName-1189624470939	0	1
978	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:31.288	\N	\N	testUserName-1189624471179	0	1
979	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:31.534	\N	\N	testUserName-1189624471420	0	1
980	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:31.785	\N	\N	testUserName-1189624471672	0	1
981	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:32.099	\N	\N	testUserName-1189624471917	0	1
982	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:32.59	\N	\N	testUserName-1189624472380	0	1
983	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:33.046	\N	\N	testUserName-1189624472860	0	1
984	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:33.497	\N	\N	testUserName-1189624473322	0	1
985	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:33.822	\N	\N	testUserName-1189624473713	0	1
986	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:34.073	\N	\N	testUserName-1189624473963	0	1
987	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:34.312	\N	\N	testUserName-1189624474204	0	1
988	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:34.577	\N	\N	testUserName-1189624474443	0	1
989	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:34.954	\N	\N	testUserName-1189624474765	0	1
990	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:35.416	\N	\N	testUserName-1189624475202	0	1
991	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:35.907	\N	\N	testUserName-1189624475700	0	1
992	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:36.321	\N	\N	testUserName-1189624476180	0	1
993	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:36.559	\N	\N	testUserName-1189624476444	0	1
994	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:36.815	\N	\N	testUserName-1189624476700	0	1
995	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:37.072	\N	\N	testUserName-1189624476946	0	1
996	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:37.367	\N	\N	testUserName-1189624477201	0	1
997	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:37.842	\N	\N	testUserName-1189624477666	0	1
998	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:38.293	\N	\N	testUserName-1189624478117	0	1
999	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:38.764	\N	\N	testUserName-1189624478586	0	1
1000	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:39.074	\N	\N	testUserName-1189624478965	0	1
1001	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:39.319	\N	\N	testUserName-1189624479206	0	1
1002	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:39.583	\N	\N	testUserName-1189624479446	0	1
1003	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:39.819	\N	\N	testUserName-1189624479713	0	1
1004	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:40.197	\N	\N	testUserName-1189624480010	0	1
1005	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:40.705	\N	\N	testUserName-1189624480497	0	1
1006	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:41.152	\N	\N	testUserName-1189624480979	0	1
1007	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:41.595	\N	\N	testUserName-1189624481445	0	1
1008	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:41.849	\N	\N	testUserName-1189624481724	0	1
1009	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:42.119	\N	\N	testUserName-1189624481982	0	1
1010	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:42.366	\N	\N	testUserName-1189624482246	0	1
1011	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:42.665	\N	\N	testUserName-1189624482495	0	1
1012	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:43.124	\N	\N	testUserName-1189624482951	0	1
1013	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:43.608	\N	\N	testUserName-1189624483423	0	1
1014	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:44.075	\N	\N	testUserName-1189624483885	0	1
1015	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:44.401	\N	\N	testUserName-1189624484286	0	1
1016	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:44.658	\N	\N	testUserName-1189624484533	0	1
1017	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:44.916	\N	\N	testUserName-1189624484790	0	1
1018	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:45.158	\N	\N	testUserName-1189624485049	0	1
1019	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:45.572	\N	\N	testUserName-1189624485374	0	1
1020	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:46.071	\N	\N	testUserName-1189624485887	0	1
1021	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:46.524	\N	\N	testUserName-1189624486346	0	1
1022	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:46.87	\N	\N	testUserName-1189624486756	0	1
1023	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:47.119	\N	\N	testUserName-1189624486995	0	1
1024	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:47.368	\N	\N	testUserName-1189624487244	0	1
1025	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:47.623	\N	\N	testUserName-1189624487499	0	1
1026	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:48.016	\N	\N	testUserName-1189624487813	0	1
1027	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:48.485	\N	\N	testUserName-1189624488282	0	1
1028	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:49.032	\N	\N	testUserName-1189624488804	0	1
1029	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:49.411	\N	\N	testUserName-1189624489295	0	1
1030	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:49.667	\N	\N	testUserName-1189624489541	0	1
1031	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:49.903	\N	\N	testUserName-1189624489795	0	1
1032	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:50.152	\N	\N	testUserName-1189624490035	0	1
1033	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:50.496	\N	\N	testUserName-1189624490320	0	1
1034	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:50.973	\N	\N	testUserName-1189624490789	0	1
1035	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:51.453	\N	\N	testUserName-1189624491261	0	1
1036	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:51.916	\N	\N	testUserName-1189624491747	0	1
1037	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:52.25	\N	\N	testUserName-1189624492132	0	1
1038	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:52.491	\N	\N	testUserName-1189624492379	0	1
1039	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:52.738	\N	\N	testUserName-1189624492623	0	1
1040	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:52.998	\N	\N	testUserName-1189624492868	0	1
1041	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:53.423	\N	\N	testUserName-1189624493211	0	1
1042	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:53.888	\N	\N	testUserName-1189624493694	0	1
1043	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:54.337	\N	\N	testUserName-1189624494153	0	1
1044	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:54.773	\N	\N	testUserName-1189624494604	0	1
1045	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:55.012	\N	\N	testUserName-1189624494901	0	1
1046	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:55.258	\N	\N	testUserName-1189624495145	0	1
1047	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:55.508	\N	\N	testUserName-1189624495388	0	1
1048	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:55.799	\N	\N	testUserName-1189624495641	0	1
1049	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:56.258	\N	\N	testUserName-1189624496088	0	1
1050	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:56.752	\N	\N	testUserName-1189624496571	0	1
1051	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:57.208	\N	\N	testUserName-1189624497063	0	1
1052	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:57.458	\N	\N	testUserName-1189624497339	0	1
1053	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:57.698	\N	\N	testUserName-1189624497589	0	1
1054	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:57.962	\N	\N	testUserName-1189624497837	0	1
1055	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	9	3	2007-09-12 12:14:58.265	\N	\N	testUserName-1189624498100	0	1
1056	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:58.701	\N	\N	testUserName-1189624498484	0	1
1057	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:59.179	\N	\N	testUserName-1189624498964	0	1
1058	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:14:59.638	\N	\N	testUserName-1189624499451	0	1
1059	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:15:00.046	\N	\N	testUserName-1189624499903	0	1
1060	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:15:00.288	\N	\N	testUserName-1189624500171	0	1
1061	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:15:00.534	\N	\N	testUserName-1189624500411	0	1
1062	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:15:00.788	\N	\N	testUserName-1189624500675	0	1
1063	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:15:01.078	\N	\N	testUserName-1189624500916	0	1
1064	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:15:01.539	\N	\N	testUserName-1189624501381	0	1
1065	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:15:02.046	\N	\N	testUserName-1189624501838	0	1
1066	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:15:02.549	\N	\N	testUserName-1189624502364	0	1
1067	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:15:02.862	\N	\N	testUserName-1189624502746	0	1
1068	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:15:03.11	\N	\N	testUserName-1189624502994	0	1
1069	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:15:03.349	\N	\N	testUserName-1189624503240	0	1
1070	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:15:03.601	\N	\N	testUserName-1189624503486	0	1
1071	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:15:04.028	\N	\N	testUserName-1189624503830	0	1
1072	1	eee0f3c319c7bdaf6311559eec5058e1	1	1	1	14	3	2007-09-12 12:15:04.533	\N	\N	testUserName-1189624504355	0	1
10730	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-04-08 22:00:53.823	\N	\N	payment-router-currency-1	0	2
10731	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-04-08 22:01:32.259	\N	\N	payment-router-currency-2	0	2
10746	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-06-23 20:33:44.57	\N	\N	partner-customer1	0	1
10748	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-06-23 20:34:20.537	\N	\N	partner-customer3	0	2
10747	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-06-23 20:34:03.466	\N	\N	partner-customer2	0	2
10740	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-03-01 00:00:00	\N	\N	partner1	0	2
10741	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-03-01 00:00:00	\N	\N	partner2	0	1
10742	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-03-05 00:00:00	\N	\N	partner3	0	2
10743	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-10-30 00:00:00	\N	\N	carry-over-test1	0	1
10744	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-10-30 00:00:00	\N	\N	carry-over-test2	0	1
10750	1	46f94c8de14fb36680850768ff1b7f2a	1	2	1	14	3	2009-10-15 11:12:45.123	\N	\N	french-speaker	0	3
10761	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-15 16:18:05.809	\N	\N	mediation-batch-test-02	0	2
10760	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-15 16:17:40.809	\N	\N	mediation-batch-test-01	0	2
10762	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-15 16:18:30.47	\N	\N	mediation-batch-test-03	0	2
10770	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-17 13:25:11.942	\N	\N	mediation-batch-test-04	0	2
10774	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-17 13:35:04.226	\N	\N	mediation-batch-test-08	0	2
10772	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-17 13:34:24.141	\N	\N	mediation-batch-test-06	0	2
10771	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-17 13:25:32.598	\N	\N	mediation-batch-test-05	0	2
10773	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-17 13:34:40.942	\N	\N	mediation-batch-test-07	0	2
10775	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-17 13:35:15.883	\N	\N	mediation-batch-test-09	0	2
10776	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-17 13:36:45.151	\N	\N	mediation-batch-test-10	0	1
10778	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-17 13:37:33.531	\N	\N	mediation-batch-test-12	0	2
10777	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-17 13:37:21.134	\N	\N	mediation-batch-test-11	0	2
10779	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-17 13:38:25.721	\N	\N	mediation-batch-test-13	0	2
10780	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-17 13:38:54.133	\N	\N	mediation-batch-test-14	0	1
10781	1	46f94c8de14fb36680850768ff1b7f2a	1	1	1	14	3	2009-12-17 13:39:09.731	\N	\N	mediation-batch-test-15	0	1
1	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2007-03-18 00:00:00	\N	2010-05-25 12:27:12.217	admin	0	18
10791	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	vashasri	0	1
10792	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	vashantisri	0	1
10793	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	thirusri	0	1
10794	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	nashasai	0	1
10795	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	rahimzah	0	1
10796	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	zaihammoh	0	1
10797	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	noorhal	0	1
10798	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	nizamabd	0	1
10799	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	zamanabd	0	1
10800	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	ahmadibr	0	1
10801	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	georgewon	0	1
10802	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	davidlee	0	1
10803	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	vasanthikri	0	1
10804	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	sanjjoh	0	1
10805	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	anthonygeo	0	1
10806	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	adrinsaa	0	1
10807	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	azhanabd	0	1
10808	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	mohamedism	0	1
10809	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	harunism	0	1
10810	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	azlinsaa	0	1
10811	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	azlinjul	0	1
10812	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	suriyahkri	0	1
10813	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	zarinaari	0	1
10814	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	hamadmoh	0	1
10816	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	saadiahmoh	0	1
10817	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	yusofahm	0	1
10818	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	mohamedyus	0	1
10819	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	zarinayus	0	1
10820	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	jeffreyhus	0	1
10821	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	azerinakas	0	1
10822	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	eizujoh	0	1
10823	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	adnanbud	0	1
10824	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	jeffreygor	0	1
10825	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	nuryamanfit	0	1
10826	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	johangre	0	1
10827	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	noorabd	0	1
10828	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	johnsmi	0	1
10829	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	zulkiflizam	0	1
10830	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	dinabd	0	1
10831	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	saifulhus	0	1
10832	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	gordanche	0	1
10833	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	syalwahus	0	1
10834	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	azilahal	0	1
10835	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	ahmadosm	0	1
10836	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	arifinmuh	0	1
10837	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	osmanyus	0	1
10838	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	yusairimoh	0	1
10839	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	osmanzar	0	1
10840	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 00:00:00	\N	\N	adnanhus	0	1
10940	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 02:55:33.558	\N	\N	xyzglobal	0	1
10941	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 02:58:06.612	\N	\N	ceoglobal	0	2
10942	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 02:59:40.02	\N	\N	xyzap	0	1
10943	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 03:00:21.373	\N	\N	xyzeu	0	1
10944	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 03:00:47.038	\N	\N	xyzot	0	1
10945	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 03:01:27.217	\N	\N	xyzasean	0	2
10946	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 03:02:47.705	\N	\N	malaysia	0	1
10947	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 03:03:14.126	\N	\N	brunei	0	2
10948	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 03:04:08.24	\N	\N	mdbrunei	0	1
10949	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 03:04:39.233	\N	\N	mktgbrunei	0	1
10950	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 03:05:04.052	\N	\N	prodbrunei	0	1
10951	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 03:05:19.84	\N	\N	csbrunei	0	1
10952	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 03:05:46.06	\N	\N	operbrunei	0	1
10953	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 03:06:14.729	\N	\N	billing	0	1
10954	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 03:06:39.032	\N	\N	network	0	1
10955	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 03:06:53.727	\N	\N	database	0	1
10956	1	46f94c8de14fb36680850768ff1b7f2a	0	1	1	9	3	2011-02-04 03:07:11.783	\N	\N	others	0	1
\.


--
-- Data for Name: billing_process; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY billing_process (id, entity_id, billing_date, period_unit_id, period_value, is_review, paper_invoice_batch_id, retries_to_do, optlock) FROM stdin;
2	1	2006-08-26	1	1	0	\N	1	1
12	1	2006-09-26	1	1	0	\N	0	1
\.


--
-- Data for Name: billing_process_configuration; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY billing_process_configuration (id, entity_id, next_run_date, generate_report, retries, days_for_retry, days_for_report, review_status, period_unit_id, period_value, due_date_unit_id, due_date_value, df_fm, only_recurring, invoice_date_process, optlock, auto_payment, maximum_periods, auto_payment_application) FROM stdin;
1	1	2006-10-26	1	0	1	3	1	1	1	1	1	0	1	0	1	0	1	1
2	2	2007-01-07	1	0	1	3	1	2	1	1	1	\N	1	0	1	0	1	0
\.


--
-- Data for Name: blacklist; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY blacklist (id, entity_id, create_datetime, type, source, credit_card, credit_card_id, contact_id, user_id, optlock) FROM stdin;
1	1	2008-09-16 00:00:00	1	1	\N	\N	\N	1000	1
2	1	2008-09-26 00:00:00	2	2	\N	\N	1125	\N	1
3	1	2008-09-26 00:00:00	3	2	\N	1013	\N	\N	1
4	1	2008-09-26 00:00:00	4	2	\N	\N	1126	\N	1
5	1	2008-09-26 00:00:00	5	2	\N	\N	1128	\N	1
6	1	2008-09-26 00:00:00	6	2	\N	\N	1127	\N	1
\.


--
-- Data for Name: breadcrumb; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY breadcrumb (id, user_id, controller, action, name, object_id, version) FROM stdin;
433	1	product	editCategory	update	2401	0
434	1	product	list	\N	2401	0
435	1	product	editProduct	create	\N	0
436	1	product	show	\N	3407	0
437	1	plan	list	\N	\N	0
438	1	planBuilder	edit	create	\N	0
439	1	plan	list	\N	200	0
\.


--
-- Data for Name: cdrentries; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY cdrentries (id, accountcode, src, dst, dcontext, clid, channel, dstchannel, lastapp, lastdatat, start, answer, "end", duration, billsec, disposition, amaflags, userfield, ts) FROM stdin;
1	20121	4033211001	4501231533	jb-test-ctx	Filler Events <1234>	IAX2/0282119604-13	SIP/8315-b791bcc0	Dial	dial data	2007-11-17 11:09:01	2007-11-17 11:09:59	2007-11-17 11:27:31	200	12000	ANSWERED	3	mediation-batch-test-13	\N
\.


--
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY contact (id, organization_name, street_addres1, street_addres2, city, state_province, postal_code, country_code, last_name, first_name, person_initial, person_title, phone_country_code, phone_area_code, phone_phone_number, fax_country_code, fax_area_code, fax_phone_number, email, create_datetime, deleted, notification_include, user_id, optlock) FROM stdin;
25	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	gandalf@prancingpony.me	2006-12-19 16:05:00.359	0	1	\N	1
35	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	gandalf@prancingpony.me	2006-12-19 16:10:00.617	0	1	\N	1
45	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	gandalf@prancingpony.me	2006-12-20 16:04:00.572	0	1	\N	1
55	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	gandalf@prancingpony.me	2007-01-16 14:39:58.155	0	1	\N	1
85	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	gandalf@prancingpony.me	2007-07-12 13:20:29.888	0	1	\N	1
96	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	admin@jbilling.com	2007-08-09 14:42:13.216	0	1	\N	1
106	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	admin@jbilling.com	2007-08-09 14:59:04.445	0	1	\N	1
115	\N	\N	\N	\N	\N	\N	AF	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	orc1@mordor.com	2007-08-16 14:57:08.838	0	1	\N	1
114629	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:06:39.092	0	1	\N	0
114630	\N								Database Group	\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:06:53.735	0	1	10955	1
114631	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:06:53.773	0	1	\N	0
1125	\N	\N	\N	\N	\N	\N	\N	Baggins	Bilbo	\N	\N	\N	\N	\N	\N	\N	\N	\N	2008-09-26 00:00:00	0	1	\N	1
1126	\N	123 Main Rd.	\N	Vancouver	BC	V6B2E2	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2008-09-26 00:00:00	0	1	\N	1
1127	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	61	2	55512345	\N	\N	\N	\N	2008-09-26 00:00:00	0	1	\N	1
1128	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2008-09-26 00:00:00	0	1	\N	1
112700	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2009-07-20 16:42:04.934	0	1	\N	1
3	\N	\N	\N	Rivendel	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	gandalf@prancingpony.me	2006-07-26 09:29:19.766	1	1	2	1
15	\N	\N	\N	\N	\N	\N	AF	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	orc1@mordor.com	2006-12-07 14:56:32.85	1	1	13	1
65	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	authuser@pp.com	2007-05-10 10:56:43.379	1	1	33	4
75	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	parent@pp.com	2007-05-22 16:03:39.757	1	1	43	1
95	\N	123 Fake Street	\N	Calgary	AB	H0H 0H0	CA	Test	User 53	\N	\N	\N	\N	\N	\N	\N	\N	test-admin@jbilling.com	2007-08-09 14:38:28.089	1	1	53	1
105	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	admin@jbilling.com	2007-08-09 14:58:15.504	1	1	63	1
125	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:01.112	1	1	73	1
126	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:07.168	1	1	74	1
127	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:07.518	1	1	75	1
128	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:08.052	1	1	76	1
129	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:08.391	1	1	77	1
130	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:08.711	1	1	78	1
131	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:09.193	1	1	79	1
132	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:09.847	1	1	80	1
133	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:10.212	1	1	81	1
134	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:10.496	1	1	82	1
135	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:10.821	1	1	83	1
136	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:11.402	1	1	84	1
137	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:11.948	1	1	85	1
138	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:12.231	1	1	86	1
139	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:12.552	1	1	87	1
140	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:12.896	1	1	88	1
141	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:13.53	1	1	89	1
142	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:13.986	1	1	90	1
143	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:14.239	1	1	91	1
144	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:14.504	1	1	92	1
145	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:14.772	1	1	93	1
146	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:15.16	1	1	94	1
147	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:15.694	1	1	95	1
148	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:16.374	1	1	96	1
149	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:16.659	1	1	97	1
150	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:16.918	1	1	98	1
151	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:17.17	1	1	99	1
152	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:17.70	1	1	100	1
153	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:18.236	1	1	101	1
154	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:18.586	1	1	102	1
155	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:18.846	1	1	103	1
156	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:19.095	1	1	104	1
157	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:19.344	1	1	105	1
158	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:19.855	1	1	106	1
159	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:20.33	1	1	107	1
160	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:20.848	1	1	108	1
161	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:21.154	1	1	109	1
162	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:21.402	1	1	110	1
163	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:21.664	1	1	111	1
164	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:21.935	1	1	112	1
165	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:22.408	1	1	113	1
166	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:22.93	1	1	114	1
167	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:23.446	1	1	115	1
168	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:23.711	1	1	116	1
169	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:23.956	1	1	117	1
170	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:24.21	1	1	118	1
171	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:24.486	1	1	119	1
172	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:24.966	1	1	120	1
173	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:25.453	1	1	121	1
174	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:25.966	1	1	122	1
175	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:26.203	1	1	123	1
176	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:26.476	1	1	124	1
177	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:26.724	1	1	125	1
178	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:27.015	1	1	126	1
179	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:27.498	1	1	127	1
180	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:28.034	1	1	128	1
1	Prancing Pony	1234 Great East Road	\N	Bree	Middle Earth	54321	CA	\N	\N	\N	\N	\N	123	321-1234	\N	\N	\N	admin@prancingpony.me	2007-03-18 00:00:00	0	1	\N	1
13	Mordor Inc.	1 Mount Doom Drive 	\N	Mordor	AA	66666	AF	\N	\N	\N	\N	\N	123	12312312	\N	\N	\N	boss@mordor.com	2006-12-07 00:00:00	0	1	\N	1
14	Mordor Inc.	1 Mount Doom Drive 	\N	Mordor	AA	66666	AF	Baltimore	Lord	\N	\N	\N	123	12312312	\N	\N	\N	boss@mordor.com	2006-12-07 00:00:00	1	1	12	1
181	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:28.464	1	1	129	1
182	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:28.716	1	1	130	1
183	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:28.967	1	1	131	1
184	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:29.219	1	1	132	1
185	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:29.587	1	1	133	1
186	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:30.112	1	1	134	1
187	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:30.62	1	1	135	1
188	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:31.008	1	1	136	1
189	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:31.261	1	1	137	1
190	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:31.496	1	1	138	1
191	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:31.764	1	1	139	1
192	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:32.096	1	1	140	1
193	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:32.602	1	1	141	1
194	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:33.103	1	1	142	1
195	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:33.496	1	1	143	1
196	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:33.749	1	1	144	1
197	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:33.991	1	1	145	1
198	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:34.239	1	1	146	1
199	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:34.573	1	1	147	1
200	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:35.068	1	1	148	1
201	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:35.516	1	1	149	1
202	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:36.024	1	1	150	1
203	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:36.277	1	1	151	1
204	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:36.525	1	1	152	1
205	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:36.777	1	1	153	1
206	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:37.02	1	1	154	1
207	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:37.46	1	1	155	1
208	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:37.903	1	1	156	1
209	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:38.336	1	1	157	1
210	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:38.791	1	1	158	1
211	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:39.068	1	1	159	1
212	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:39.33	1	1	160	1
213	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:39.569	1	1	161	1
214	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:39.817	1	1	162	1
215	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:40.237	1	1	163	1
216	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:40.765	1	1	164	1
217	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:41.251	1	1	165	1
218	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:41.633	1	1	166	1
219	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:41.883	1	1	167	1
220	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:42.134	1	1	168	1
221	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:42.375	1	1	169	1
222	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:42.715	1	1	170	1
223	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:43.206	1	1	171	1
224	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:43.717	1	1	172	1
225	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:44.088	1	1	173	1
226	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:44.338	1	1	174	1
227	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:44.57	1	1	175	1
228	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:44.831	1	1	176	1
229	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:45.167	1	1	177	1
230	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:45.653	1	1	178	1
231	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:46.184	1	1	179	1
232	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:46.607	1	1	180	1
233	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:46.853	1	1	181	1
234	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:47.098	1	1	182	1
235	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:47.346	1	1	183	1
236	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:47.668	1	1	184	1
237	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:48.167	1	1	185	1
238	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:48.67	1	1	186	1
239	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:49.178	1	1	187	1
240	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:49.42	1	1	188	1
241	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:49.67	1	1	189	1
242	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:49.911	1	1	190	1
243	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:50.153	1	1	191	1
244	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:50.652	1	1	192	1
245	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:51.128	1	1	193	1
246	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:51.649	1	1	194	1
247	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:51.945	1	1	195	1
248	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:52.193	1	1	196	1
249	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:52.436	1	1	197	1
250	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:52.683	1	1	198	1
251	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:53.106	1	1	199	1
252	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:53.583	1	1	200	1
253	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:54.009	1	1	201	1
254	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:54.442	1	1	202	1
255	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:54.677	1	1	203	1
256	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:54.934	1	1	204	1
257	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:55.175	1	1	205	1
258	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:55.486	1	1	206	1
259	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:55.968	1	1	207	1
260	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:56.423	1	1	208	1
261	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:56.924	1	1	209	1
262	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:57.234	1	1	210	1
263	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:57.468	1	1	211	1
264	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:57.736	1	1	212	1
265	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:57.981	1	1	213	1
266	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:58.373	1	1	214	1
267	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:58.852	1	1	215	1
268	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:59.392	1	1	216	1
269	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:59.717	1	1	217	1
270	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:09:59.975	1	1	218	1
271	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:00.22	1	1	219	1
272	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:00.489	1	1	220	1
273	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:00.909	1	1	221	1
274	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:01.382	1	1	222	1
275	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:01.916	1	1	223	1
276	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:02.312	1	1	224	1
277	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:02.552	1	1	225	1
278	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:02.81	1	1	226	1
279	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:03.048	1	1	227	1
280	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:03.39	1	1	228	1
281	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:03.854	1	1	229	1
282	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:04.351	1	1	230	1
283	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:04.769	1	1	231	1
284	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:05.011	1	1	232	1
285	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:05.251	1	1	233	1
286	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:05.495	1	1	234	1
287	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:05.799	1	1	235	1
288	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:06.283	1	1	236	1
289	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:06.756	1	1	237	1
290	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:07.218	1	1	238	1
291	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:07.537	1	1	239	1
292	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:07.781	1	1	240	1
293	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:08.024	1	1	241	1
294	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:08.262	1	1	242	1
295	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:08.624	1	1	243	1
296	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:09.114	1	1	244	1
297	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:09.646	1	1	245	1
298	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:10.059	1	1	246	1
299	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:10.301	1	1	247	1
300	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:10.55	1	1	248	1
301	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:10.794	1	1	249	1
302	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:11.124	1	1	250	1
303	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:11.606	1	1	251	1
304	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:12.128	1	1	252	1
305	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:12.535	1	1	253	1
306	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:12.789	1	1	254	1
307	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:13.028	1	1	255	1
308	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:13.284	1	1	256	1
309	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:13.593	1	1	257	1
310	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:14.103	1	1	258	1
311	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:14.603	1	1	259	1
312	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:15.064	1	1	260	1
313	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:15.356	1	1	261	1
314	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:15.609	1	1	262	1
315	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:15.84	1	1	263	1
316	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:16.125	1	1	264	1
317	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:16.992	1	1	265	1
318	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:17.463	1	1	266	1
319	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:17.748	1	1	267	1
320	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:17.991	1	1	268	1
321	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:18.237	1	1	269	1
322	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:18.483	1	1	270	1
323	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:18.891	1	1	271	1
324	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:19.443	1	1	272	1
325	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:19.908	1	1	273	1
326	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:20.306	1	1	274	1
327	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:20.544	1	1	275	1
328	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:20.789	1	1	276	1
329	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:21.031	1	1	277	1
330	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:21.367	1	1	278	1
331	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:21.842	1	1	279	1
332	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:22.352	1	1	280	1
333	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:22.793	1	1	281	1
334	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:23.09	1	1	282	1
335	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:23.332	1	1	283	1
336	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:23.575	1	1	284	1
337	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:23.823	1	1	285	1
338	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:24.248	1	1	286	1
339	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:24.723	1	1	287	1
340	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:25.239	1	1	288	1
341	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:25.60	1	1	289	1
342	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:25.855	1	1	290	1
343	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:26.105	1	1	291	1
344	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:26.343	1	1	292	1
345	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:26.678	1	1	293	1
346	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:27.174	1	1	294	1
347	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:27.656	1	1	295	1
348	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:28.076	1	1	296	1
349	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:28.313	1	1	297	1
350	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:28.567	1	1	298	1
351	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:28.82	1	1	299	1
352	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:29.154	1	1	300	1
353	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:29.617	1	1	301	1
354	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:30.086	1	1	302	1
355	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:30.642	1	1	303	1
356	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:30.912	1	1	304	1
357	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:31.143	1	1	305	1
358	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:31.385	1	1	306	1
359	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:31.624	1	1	307	1
360	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:32.93	1	1	308	1
361	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:33.183	1	1	309	1
362	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:33.425	1	1	310	1
363	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:33.755	1	1	311	1
364	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:34.226	1	1	312	1
365	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:34.748	1	1	313	1
366	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:35.033	1	1	314	1
367	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:35.292	1	1	315	1
368	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:35.532	1	1	316	1
369	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:35.776	1	1	317	1
370	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:36.186	1	1	318	1
371	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:36.682	1	1	319	1
372	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:37.148	1	1	320	1
373	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:37.53	1	1	321	1
374	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:37.786	1	1	322	1
375	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:38.035	1	1	323	1
376	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:38.279	1	1	324	1
377	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:38.598	1	1	325	1
378	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:39.026	1	1	326	1
379	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:39.505	1	1	327	1
380	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:39.965	1	1	328	1
381	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:40.287	1	1	329	1
382	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:40.53	1	1	330	1
383	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:40.771	1	1	331	1
384	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:41.024	1	1	332	1
385	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:41.422	1	1	333	1
386	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:41.923	1	1	334	1
387	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:42.441	1	1	335	1
388	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:42.831	1	1	336	1
389	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:43.069	1	1	337	1
390	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:43.304	1	1	338	1
391	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:43.551	1	1	339	1
392	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:43.858	1	1	340	1
393	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:44.319	1	1	341	1
394	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:44.793	1	1	342	1
395	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:45.219	1	1	343	1
396	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:45.622	1	1	344	1
397	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:45.866	1	1	345	1
398	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:46.114	1	1	346	1
399	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:46.351	1	1	347	1
400	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:46.67	1	1	348	1
401	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:47.167	1	1	349	1
402	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:47.647	1	1	350	1
403	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:48.083	1	1	351	1
404	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:48.32	1	1	352	1
405	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:48.57	1	1	353	1
406	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:48.816	1	1	354	1
407	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:49.153	1	1	355	1
408	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:49.613	1	1	356	1
409	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:50.094	1	1	357	1
410	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:50.598	1	1	358	1
411	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:50.906	1	1	359	1
412	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:51.158	1	1	360	1
413	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:51.398	1	1	361	1
414	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:51.653	1	1	362	1
415	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:52.13	1	1	363	1
416	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:52.641	1	1	364	1
417	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:53.142	1	1	365	1
418	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:53.421	1	1	366	1
419	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:53.678	1	1	367	1
420	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:53.916	1	1	368	1
421	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:54.162	1	1	369	1
422	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:54.628	1	1	370	1
423	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:55.133	1	1	371	1
424	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:55.60	1	1	372	1
425	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:55.88	1	1	373	1
426	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:56.129	1	1	374	1
427	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:56.372	1	1	375	1
428	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:56.613	1	1	376	1
429	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:57.028	1	1	377	1
430	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:57.555	1	1	378	1
431	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:58.048	1	1	379	1
432	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:58.376	1	1	380	1
433	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:58.621	1	1	381	1
434	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:58.865	1	1	382	1
435	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:59.099	1	1	383	1
436	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:59.443	1	1	384	1
437	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:10:59.924	1	1	385	1
438	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:00.426	1	1	386	1
439	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:00.901	1	1	387	1
440	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:01.187	1	1	388	1
441	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:01.438	1	1	389	1
442	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:01.689	1	1	390	1
443	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:01.944	1	1	391	1
444	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:02.394	1	1	392	1
445	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:02.883	1	1	393	1
446	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:03.381	1	1	394	1
447	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:03.721	1	1	395	1
448	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:03.971	1	1	396	1
449	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:04.212	1	1	397	1
450	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:04.464	1	1	398	1
451	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:04.822	1	1	399	1
452	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:05.322	1	1	400	1
453	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:05.844	1	1	401	1
454	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:06.172	1	1	402	1
455	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:06.427	1	1	403	1
456	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:06.668	1	1	404	1
457	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:06.91	1	1	405	1
458	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:07.316	1	1	406	1
459	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:07.794	1	1	407	1
460	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:08.31	1	1	408	1
461	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:08.696	1	1	409	1
462	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:08.938	1	1	410	1
463	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:09.173	1	1	411	1
464	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:09.421	1	1	412	1
465	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:09.768	1	1	413	1
466	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:10.256	1	1	414	1
467	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:10.742	1	1	415	1
468	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:11.187	1	1	416	1
469	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:11.43	1	1	417	1
470	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:11.669	1	1	418	1
471	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:11.919	1	1	419	1
472	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:12.234	1	1	420	1
473	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:12.703	1	1	421	1
474	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:13.171	1	1	422	1
475	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:13.659	1	1	423	1
476	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:13.969	1	1	424	1
477	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:14.211	1	1	425	1
478	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:14.453	1	1	426	1
479	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:14.705	1	1	427	1
480	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:15.095	1	1	428	1
481	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:15.526	1	1	429	1
482	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:15.945	1	1	430	1
483	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:16.613	1	1	431	1
484	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:16.861	1	1	432	1
485	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:17.109	1	1	433	1
486	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:17.369	1	1	434	1
487	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:17.67	1	1	435	1
488	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:18.19	1	1	436	1
489	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:18.674	1	1	437	1
490	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:19.12	1	1	438	1
491	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:19.416	1	1	439	1
492	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:19.668	1	1	440	1
493	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:19.924	1	1	441	1
494	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:20.164	1	1	442	1
495	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:20.604	1	1	443	1
496	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:21.08	1	1	444	1
497	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:21.557	1	1	445	1
498	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:21.947	1	1	446	1
499	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:22.19	1	1	447	1
500	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:22.446	1	1	448	1
501	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:22.689	1	1	449	1
502	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:23.052	1	1	450	1
503	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:23.533	1	1	451	1
504	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:23.985	1	1	452	1
505	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:24.451	1	1	453	1
506	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:24.746	1	1	454	1
507	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:25.006	1	1	455	1
508	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:25.245	1	1	456	1
509	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:25.49	1	1	457	1
510	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:25.919	1	1	458	1
511	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:26.387	1	1	459	1
512	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:26.849	1	1	460	1
513	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:27.251	1	1	461	1
514	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:27.501	1	1	462	1
515	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:27.741	1	1	463	1
516	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:27.992	1	1	464	1
517	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:28.283	1	1	465	1
518	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:28.769	1	1	466	1
519	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:29.25	1	1	467	1
520	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:29.724	1	1	468	1
521	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:30.027	1	1	469	1
522	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:30.262	1	1	470	1
523	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:30.513	1	1	471	1
524	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:30.76	1	1	472	1
525	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:31.185	1	1	473	1
526	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:31.668	1	1	474	1
527	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:32.169	1	1	475	1
528	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:32.562	1	1	476	1
529	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:32.80	1	1	477	1
530	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:33.059	1	1	478	1
531	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:33.301	1	1	479	1
532	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:33.628	1	1	480	1
533	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:34.093	1	1	481	1
534	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:34.638	1	1	482	1
535	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:35.16	1	1	483	1
536	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:35.399	1	1	484	1
537	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:35.661	1	1	485	1
538	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:35.917	1	1	486	1
539	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:36.325	1	1	487	1
540	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:36.853	1	1	488	1
541	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:37.337	1	1	489	1
542	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:37.724	1	1	490	1
543	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:37.972	1	1	491	1
544	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:38.219	1	1	492	1
545	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:38.464	1	1	493	1
546	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:38.796	1	1	494	1
547	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:39.259	1	1	495	1
548	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:39.698	1	1	496	1
549	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:40.16	1	1	497	1
550	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:40.476	1	1	498	1
551	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:40.725	1	1	499	1
552	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:40.97	1	1	500	1
553	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:41.217	1	1	501	1
554	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:41.625	1	1	502	1
555	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:42.073	1	1	503	1
556	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:42.548	1	1	504	1
557	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:43.021	1	1	505	1
558	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:43.304	1	1	506	1
559	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:43.556	1	1	507	1
560	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:43.811	1	1	508	1
561	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:44.053	1	1	509	1
562	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:44.507	1	1	510	1
563	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:44.983	1	1	511	1
564	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:45.435	1	1	512	1
565	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:45.784	1	1	513	1
566	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:46.042	1	1	514	1
567	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:46.303	1	1	515	1
568	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:46.546	1	1	516	1
569	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:46.908	1	1	517	1
570	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:47.367	1	1	518	1
571	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:47.833	1	1	519	1
572	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:48.325	1	1	520	1
573	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:48.597	1	1	521	1
574	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:48.856	1	1	522	1
575	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:49.10	1	1	523	1
576	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:49.337	1	1	524	1
577	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:49.796	1	1	525	1
578	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:50.246	1	1	526	1
579	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:50.738	1	1	527	1
580	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:51.102	1	1	528	1
581	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:51.361	1	1	529	1
582	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:51.606	1	1	530	1
583	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:51.851	1	1	531	1
584	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:52.268	1	1	532	1
585	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:52.759	1	1	533	1
586	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:53.214	1	1	534	1
587	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:53.635	1	1	535	1
588	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:53.895	1	1	536	1
589	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:54.139	1	1	537	1
590	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:54.372	1	1	538	1
591	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:54.733	1	1	539	1
592	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:55.206	1	1	540	1
593	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:55.72	1	1	541	1
594	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:56.113	1	1	542	1
595	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:56.356	1	1	543	1
596	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:56.613	1	1	544	1
597	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:56.853	1	1	545	1
598	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:57.165	1	1	546	1
599	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:57.627	1	1	547	1
600	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:58.108	1	1	548	1
601	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:58.59	1	1	549	1
602	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:58.909	1	1	550	1
603	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:59.157	1	1	551	1
604	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:59.394	1	1	552	1
605	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:11:59.644	1	1	553	1
606	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:00.048	1	1	554	1
607	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:00.501	1	1	555	1
608	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:00.991	1	1	556	1
609	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:01.424	1	1	557	1
610	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:02.218	1	1	558	1
611	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:02.582	1	1	559	1
612	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:03.031	1	1	560	1
613	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:03.32	1	1	561	1
614	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:03.556	1	1	562	1
615	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:03.821	1	1	563	1
616	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:04.062	1	1	564	1
617	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:04.403	1	1	565	1
618	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:04.842	1	1	566	1
619	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:05.253	1	1	567	1
620	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:05.728	1	1	568	1
621	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:06.108	1	1	569	1
622	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:06.35	1	1	570	1
623	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:06.60	1	1	571	1
624	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:06.841	1	1	572	1
625	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:07.118	1	1	573	1
626	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:07.578	1	1	574	1
627	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:08.058	1	1	575	1
628	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:08.529	1	1	576	1
629	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:08.926	1	1	577	1
630	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:09.182	1	1	578	1
631	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:09.431	1	1	579	1
632	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:09.674	1	1	580	1
633	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:10.028	1	1	581	1
634	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:10.493	1	1	582	1
635	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:10.992	1	1	583	1
636	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:11.422	1	1	584	1
637	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:11.67	1	1	585	1
638	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:11.91	1	1	586	1
639	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:12.15	1	1	587	1
640	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:12.451	1	1	588	1
641	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:12.921	1	1	589	1
642	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:13.36	1	1	590	1
643	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:13.819	1	1	591	1
644	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:14.139	1	1	592	1
645	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:14.379	1	1	593	1
646	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:14.625	1	1	594	1
647	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:14.864	1	1	595	1
648	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:15.229	1	1	596	1
649	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:15.696	1	1	597	1
650	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:16.446	1	1	598	1
651	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:16.825	1	1	599	1
652	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:17.071	1	1	600	1
653	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:17.31	1	1	601	1
654	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:17.545	1	1	602	1
655	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:18.003	1	1	603	1
656	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:18.506	1	1	604	1
657	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:19.008	1	1	605	1
658	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:19.323	1	1	606	1
659	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:19.556	1	1	607	1
660	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:19.805	1	1	608	1
661	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:20.04	1	1	609	1
662	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:20.456	1	1	610	1
663	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:20.95	1	1	611	1
664	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:21.397	1	1	612	1
665	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:21.839	1	1	613	1
666	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:22.095	1	1	614	1
667	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:22.337	1	1	615	1
668	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:22.571	1	1	616	1
669	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:22.82	1	1	617	1
670	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:23.315	1	1	618	1
671	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:23.812	1	1	619	1
672	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:24.302	1	1	620	1
673	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:24.593	1	1	621	1
674	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:24.849	1	1	622	1
675	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:25.089	1	1	623	1
676	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:25.328	1	1	624	1
677	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:25.744	1	1	625	1
678	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:26.223	1	1	626	1
679	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:26.727	1	1	627	1
680	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:27.111	1	1	628	1
681	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:27.361	1	1	629	1
682	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:27.60	1	1	630	1
683	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:27.847	1	1	631	1
684	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:28.155	1	1	632	1
685	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:28.623	1	1	633	1
686	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:29.098	1	1	634	1
687	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:29.562	1	1	635	1
688	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:29.935	1	1	636	1
689	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:30.176	1	1	637	1
690	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:30.413	1	1	638	1
691	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:30.659	1	1	639	1
692	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:30.975	1	1	640	1
693	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:31.448	1	1	641	1
694	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:31.948	1	1	642	1
695	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:32.369	1	1	643	1
696	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:32.614	1	1	644	1
697	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:32.848	1	1	645	1
698	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:33.085	1	1	646	1
699	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:33.401	1	1	647	1
700	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:33.888	1	1	648	1
701	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:34.388	1	1	649	1
702	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:34.853	1	1	650	1
703	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:35.139	1	1	651	1
704	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:35.382	1	1	652	1
705	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:35.619	1	1	653	1
706	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:35.875	1	1	654	1
707	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:36.273	1	1	655	1
708	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:36.755	1	1	656	1
709	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:37.266	1	1	657	1
710	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:37.66	1	1	658	1
711	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:37.911	1	1	659	1
712	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:38.145	1	1	660	1
713	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:38.387	1	1	661	1
714	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:38.724	1	1	662	1
715	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:39.212	1	1	663	1
716	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:39.703	1	1	664	1
717	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:40.181	1	1	665	1
718	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:40.475	1	1	666	1
719	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:40.713	1	1	667	1
720	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:40.97	1	1	668	1
721	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:41.214	1	1	669	1
722	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:41.654	1	1	670	1
723	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:42.118	1	1	671	1
724	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:42.618	1	1	672	1
725	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:42.943	1	1	673	1
726	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:43.179	1	1	674	1
727	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:43.423	1	1	675	1
728	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:43.669	1	1	676	1
729	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:44.012	1	1	677	1
730	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:44.504	1	1	678	1
731	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:45.001	1	1	679	1
732	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:45.486	1	1	680	1
733	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:45.724	1	1	681	1
734	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:45.969	1	1	682	1
735	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:46.222	1	1	683	1
736	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:46.46	1	1	684	1
737	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:46.892	1	1	685	1
738	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:47.348	1	1	686	1
739	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:47.811	1	1	687	1
740	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:48.224	1	1	688	1
741	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:48.473	1	1	689	1
742	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:48.723	1	1	690	1
743	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:48.961	1	1	691	1
744	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:49.269	1	1	692	1
745	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:49.759	1	1	693	1
746	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:50.218	1	1	694	1
747	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:50.733	1	1	695	1
748	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:51.044	1	1	696	1
749	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:51.291	1	1	697	1
750	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:51.526	1	1	698	1
751	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:51.784	1	1	699	1
752	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:52.193	1	1	700	1
753	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:52.673	1	1	701	1
754	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:53.171	1	1	702	1
755	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:53.505	1	1	703	1
756	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:53.759	1	1	704	1
757	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:53.999	1	1	705	1
758	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:54.236	1	1	706	1
759	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:54.575	1	1	707	1
760	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:55.067	1	1	708	1
761	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:55.521	1	1	709	1
762	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:56.006	1	1	710	1
763	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:56.303	1	1	711	1
764	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:56.549	1	1	712	1
765	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:56.793	1	1	713	1
766	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:57.038	1	1	714	1
767	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:57.426	1	1	715	1
768	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:57.888	1	1	716	1
769	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:58.405	1	1	717	1
770	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:58.822	1	1	718	1
771	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:59.076	1	1	719	1
772	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:59.322	1	1	720	1
773	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:59.572	1	1	721	1
774	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:12:59.90	1	1	722	1
775	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:00.343	1	1	723	1
776	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:00.837	1	1	724	1
777	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:01.327	1	1	725	1
778	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:01.617	1	1	726	1
779	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:01.864	1	1	727	1
780	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:02.112	1	1	728	1
781	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:02.355	1	1	729	1
782	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:02.738	1	1	730	1
783	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:03.208	1	1	731	1
784	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:03.685	1	1	732	1
785	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:04.125	1	1	733	1
786	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:04.369	1	1	734	1
787	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:04.621	1	1	735	1
788	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:04.866	1	1	736	1
789	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:05.192	1	1	737	1
790	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:05.695	1	1	738	1
791	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:06.178	1	1	739	1
792	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:06.605	1	1	740	1
793	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:06.842	1	1	741	1
794	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:07.093	1	1	742	1
795	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:07.332	1	1	743	1
796	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:07.626	1	1	744	1
797	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:08.088	1	1	745	1
798	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:08.585	1	1	746	1
799	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:09.061	1	1	747	1
800	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:09.375	1	1	748	1
801	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:09.62	1	1	749	1
802	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:09.877	1	1	750	1
803	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:10.108	1	1	751	1
804	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:10.544	1	1	752	1
805	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:10.966	1	1	753	1
806	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:11.484	1	1	754	1
807	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:11.901	1	1	755	1
808	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:12.153	1	1	756	1
809	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:12.397	1	1	757	1
810	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:12.656	1	1	758	1
811	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:12.989	1	1	759	1
812	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:13.441	1	1	760	1
813	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:13.977	1	1	761	1
814	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:14.377	1	1	762	1
815	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:14.627	1	1	763	1
816	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:14.885	1	1	764	1
817	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:15.121	1	1	765	1
818	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:15.436	1	1	766	1
819	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:15.918	1	1	767	1
820	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:16.813	1	1	768	1
821	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:17.095	1	1	769	1
822	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:17.337	1	1	770	1
823	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:17.576	1	1	771	1
824	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:17.825	1	1	772	1
825	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:18.23	1	1	773	1
826	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:18.717	1	1	774	1
827	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:19.193	1	1	775	1
828	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:19.589	1	1	776	1
829	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:19.829	1	1	777	1
830	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:20.078	1	1	778	1
831	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:20.32	1	1	779	1
832	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:20.626	1	1	780	1
833	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:21.082	1	1	781	1
834	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:21.579	1	1	782	1
835	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:22.074	1	1	783	1
836	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:22.382	1	1	784	1
837	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:22.633	1	1	785	1
838	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:22.886	1	1	786	1
839	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:23.139	1	1	787	1
840	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:23.518	1	1	788	1
841	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:23.964	1	1	789	1
842	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:24.452	1	1	790	1
843	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:24.875	1	1	791	1
844	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:25.179	1	1	792	1
845	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:25.422	1	1	793	1
846	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:25.68	1	1	794	1
847	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:25.923	1	1	795	1
848	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:26.388	1	1	796	1
849	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:26.861	1	1	797	1
850	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:27.364	1	1	798	1
851	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:27.676	1	1	799	1
852	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:27.937	1	1	800	1
853	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:28.183	1	1	801	1
854	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:28.433	1	1	802	1
855	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:28.841	1	1	803	1
856	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:29.312	1	1	804	1
857	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:29.765	1	1	805	1
858	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:30.208	1	1	806	1
859	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:30.487	1	1	807	1
860	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:30.736	1	1	808	1
861	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:30.994	1	1	809	1
862	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:31.235	1	1	810	1
863	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:31.651	1	1	811	1
864	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:32.148	1	1	812	1
865	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:32.588	1	1	813	1
866	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:33.03	1	1	814	1
867	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:33.314	1	1	815	1
868	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:33.555	1	1	816	1
869	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:33.789	1	1	817	1
870	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:34.045	1	1	818	1
871	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:34.516	1	1	819	1
872	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:35.138	1	1	820	1
873	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:35.601	1	1	821	1
874	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:35.975	1	1	822	1
875	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:36.212	1	1	823	1
876	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:36.458	1	1	824	1
877	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:36.694	1	1	825	1
878	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:37	1	1	826	1
879	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:37.478	1	1	827	1
880	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:37.928	1	1	828	1
881	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:38.381	1	1	829	1
882	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:38.766	1	1	830	1
883	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:39.003	1	1	831	1
884	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:39.248	1	1	832	1
885	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:39.482	1	1	833	1
886	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:39.811	1	1	834	1
887	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:40.30	1	1	835	1
888	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:40.81	1	1	836	1
889	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:41.244	1	1	837	1
890	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:41.49	1	1	838	1
891	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:41.736	1	1	839	1
892	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:41.981	1	1	840	1
893	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:42.297	1	1	841	1
894	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:42.803	1	1	842	1
895	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:43.263	1	1	843	1
896	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:43.752	1	1	844	1
897	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:44.046	1	1	845	1
898	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:44.295	1	1	846	1
899	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:44.54	1	1	847	1
900	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:44.802	1	1	848	1
901	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:45.211	1	1	849	1
902	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:45.677	1	1	850	1
903	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:46.154	1	1	851	1
904	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:46.56	1	1	852	1
905	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:46.81	1	1	853	1
906	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:47.061	1	1	854	1
907	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:47.303	1	1	855	1
908	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:47.633	1	1	856	1
909	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:48.09	1	1	857	1
910	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:48.539	1	1	858	1
911	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:49.036	1	1	859	1
912	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:49.353	1	1	860	1
913	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:49.589	1	1	861	1
914	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:49.834	1	1	862	1
915	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:50.076	1	1	863	1
916	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:50.517	1	1	864	1
917	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:50.984	1	1	865	1
918	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:51.488	1	1	866	1
919	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:51.861	1	1	867	1
920	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:52.104	1	1	868	1
921	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:52.351	1	1	869	1
922	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:52.594	1	1	870	1
923	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:52.918	1	1	871	1
924	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:53.419	1	1	872	1
925	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:53.867	1	1	873	1
926	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:54.383	1	1	874	1
927	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:54.629	1	1	875	1
928	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:54.883	1	1	876	1
929	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:55.113	1	1	877	1
930	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:55.445	1	1	878	1
931	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:55.909	1	1	879	1
932	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:56.371	1	1	880	1
933	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:56.852	1	1	881	1
934	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:57.143	1	1	882	1
935	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:57.383	1	1	883	1
936	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:57.632	1	1	884	1
937	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:57.876	1	1	885	1
938	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:58.31	1	1	886	1
939	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:58.816	1	1	887	1
940	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:59.294	1	1	888	1
941	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:59.619	1	1	889	1
942	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:13:59.873	1	1	890	1
943	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:00.111	1	1	891	1
944	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:00.388	1	1	892	1
945	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:00.83	1	1	893	1
946	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:01.331	1	1	894	1
947	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:01.848	1	1	895	1
948	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:02.149	1	1	896	1
949	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:02.40	1	1	897	1
950	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:02.644	1	1	898	1
951	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:02.894	1	1	899	1
952	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:03.344	1	1	900	1
953	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:03.845	1	1	901	1
954	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:04.319	1	1	902	1
955	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:04.646	1	1	903	1
956	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:04.907	1	1	904	1
957	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:05.143	1	1	905	1
958	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:05.394	1	1	906	1
959	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:05.812	1	1	907	1
960	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:06.251	1	1	908	1
961	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:06.748	1	1	909	1
962	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:07.163	1	1	910	1
963	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:07.406	1	1	911	1
964	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:07.659	1	1	912	1
965	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:07.899	1	1	913	1
966	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:08.238	1	1	914	1
967	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:08.654	1	1	915	1
968	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:09.112	1	1	916	1
969	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:09.565	1	1	917	1
970	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:10.002	1	1	918	1
971	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:10.263	1	1	919	1
972	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:10.499	1	1	920	1
973	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:10.741	1	1	921	1
974	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:10.978	1	1	922	1
975	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:11.416	1	1	923	1
976	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:11.944	1	1	924	1
977	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:12.425	1	1	925	1
978	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:12.793	1	1	926	1
979	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:13.04	1	1	927	1
980	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:13.283	1	1	928	1
981	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:13.53	1	1	929	1
982	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:13.855	1	1	930	1
983	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:14.329	1	1	931	1
984	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:14.83	1	1	932	1
985	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:15.253	1	1	933	1
986	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:15.499	1	1	934	1
987	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:15.744	1	1	935	1
988	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:15.998	1	1	936	1
989	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:16.573	1	1	937	1
990	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:17.128	1	1	938	1
991	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:17.657	1	1	939	1
992	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:17.90	1	1	940	1
993	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:18.134	1	1	941	1
994	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:18.393	1	1	942	1
995	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:18.658	1	1	943	1
996	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:19.122	1	1	944	1
997	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:19.62	1	1	945	1
998	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:20.067	1	1	946	1
999	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:20.399	1	1	947	1
1000	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:20.643	1	1	948	1
1001	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:20.897	1	1	949	1
1002	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:21.135	1	1	950	1
1003	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:21.464	1	1	951	1
1004	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:21.952	1	1	952	1
1005	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:22.474	1	1	953	1
1006	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:22.95	1	1	954	1
1007	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:23.237	1	1	955	1
1008	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:23.476	1	1	956	1
1009	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:23.721	1	1	957	1
1010	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:23.957	1	1	958	1
1011	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:24.353	1	1	959	1
1012	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:24.89	1	1	960	1
1013	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:25.309	1	1	961	1
1014	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:25.696	1	1	962	1
1015	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:25.937	1	1	963	1
1016	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:26.192	1	1	964	1
1017	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:26.436	1	1	965	1
1018	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:26.748	1	1	966	1
1019	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:27.23	1	1	967	1
1020	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:27.729	1	1	968	1
1021	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:28.22	1	1	969	1
1022	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:28.526	1	1	970	1
1023	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:28.773	1	1	971	1
1024	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:29.017	1	1	972	1
1025	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:29.254	1	1	973	1
1026	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:29.696	1	1	974	1
1027	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:30.184	1	1	975	1
1028	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:30.686	1	1	976	1
1029	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:31.063	1	1	977	1
1030	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:31.301	1	1	978	1
1031	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:31.546	1	1	979	1
1032	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:31.798	1	1	980	1
1033	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:32.139	1	1	981	1
1034	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:32.618	1	1	982	1
1035	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:33.084	1	1	983	1
1036	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:33.532	1	1	984	1
1037	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:33.838	1	1	985	1
1038	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:34.094	1	1	986	1
1039	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:34.334	1	1	987	1
1040	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:34.59	1	1	988	1
1041	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:34.977	1	1	989	1
1042	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:35.443	1	1	990	1
1043	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:35.949	1	1	991	1
1044	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:36.334	1	1	992	1
1045	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:36.579	1	1	993	1
1046	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:36.827	1	1	994	1
1047	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:37.084	1	1	995	1
1048	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:37.411	1	1	996	1
1049	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:37.875	1	1	997	1
1050	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:38.323	1	1	998	1
1051	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:38.796	1	1	999	1
1052	\N	\N	\N	\N	\N	\N	\N	Baggins	Bilbo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:39.089	1	1	1000	1
1053	\N	\N	\N	\N	\N	\N	\N	Baggins	Bilbo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:39.333	1	1	1001	1
1054	\N	123 Main Rd.	\N	Vancouver	BC	V6B2E2	CA	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:39.595	1	1	1002	1
1055	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	61	2	55512345	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:39.84	1	1	1003	1
1056	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:40.24	1	1	1004	1
1057	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:40.741	1	1	1005	1
1058	\N	321 Main Rd.	\N	Vancouver	BC	V6B2E2	CA	LastName	Frodo	\N	\N	61	2	55554321	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:41.21	1	1	1006	1
1059	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:41.607	1	1	1007	1
1060	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:41.862	1	1	1008	1
1061	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:42.131	1	1	1009	1
1062	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:42.378	1	1	1010	1
1063	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:42.705	1	1	1011	1
1064	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:43.171	1	1	1012	1
1065	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:43.638	1	1	1013	1
1066	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:44.114	1	1	1014	1
1067	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:44.413	1	1	1015	1
1068	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:44.67	1	1	1016	1
1069	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:44.929	1	1	1017	1
1070	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:45.173	1	1	1018	1
1071	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:45.63	1	1	1019	1
1072	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:46.123	1	1	1020	1
1073	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:46.576	1	1	1021	1
1074	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:46.886	1	1	1022	1
1075	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:47.132	1	1	1023	1
1076	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:47.383	1	1	1024	1
1077	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:47.639	1	1	1025	1
1078	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:48.042	1	1	1026	1
1079	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:48.511	1	1	1027	1
1080	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:49.077	1	1	1028	1
1081	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:49.422	1	1	1029	1
1082	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:49.679	1	1	1030	1
1083	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:49.918	1	1	1031	1
1084	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:50.166	1	1	1032	1
1085	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:50.548	1	1	1033	1
1086	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:51.006	1	1	1034	1
1087	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:51.509	1	1	1035	1
1088	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:51.974	1	1	1036	1
1089	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:52.269	1	1	1037	1
1090	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:52.51	1	1	1038	1
1091	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:52.753	1	1	1039	1
1092	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:53.01	1	1	1040	1
1093	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:53.459	1	1	1041	1
1094	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:53.938	1	1	1042	1
1095	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:54.373	1	1	1043	1
1096	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:54.785	1	1	1044	1
1097	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:55.025	1	1	1045	1
1098	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:55.27	1	1	1046	1
1099	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:55.52	1	1	1047	1
1100	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:55.835	1	1	1048	1
1101	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:56.298	1	1	1049	1
1102	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:56.816	1	1	1050	1
1103	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:57.221	1	1	1051	1
1104	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:57.47	1	1	1052	1
1105	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:57.715	1	1	1053	1
1106	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:57.983	1	1	1054	1
1107	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:58.301	1	1	1055	1
1108	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:58.744	1	1	1056	1
1109	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:59.216	1	1	1057	1
1110	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:14:59.668	1	1	1058	1
1111	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:15:00.061	1	1	1059	1
1112	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:15:00.30	1	1	1060	1
1113	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:15:00.549	1	1	1061	1
1114	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:15:00.801	1	1	1062	1
1115	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:15:01.126	1	1	1063	1
1116	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:15:01.57	1	1	1064	1
1117	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:15:02.09	1	1	1065	1
1118	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:15:02.584	1	1	1066	1
1119	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:15:02.874	1	1	1067	1
1120	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:15:03.122	1	1	1068	1
1121	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:15:03.364	1	1	1069	1
1122	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:15:03.616	1	1	1070	1
1123	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:15:04.076	1	1	1071	1
1124	\N	\N	\N	\N	BC	\N	AF	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 12:15:04.579	1	1	1072	1
112500	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	payment-router-currency-1@test.com	2009-04-08 22:00:53.927	1	1	10730	4
112501	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	payment-router-currency-2@test.com	2009-04-08 22:01:32.286	1	1	10731	4
112601	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	partner2@partners.com	2009-06-23 16:30:54.845	1	1	10741	1
112607	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	partner-customer1@partners.com	2009-06-23 20:33:44.596	1	1	10746	1
112608	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	partner-customer2@partners.com	2009-06-23 20:34:03.47	1	1	10747	1
112609	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	partner-customer3@partners.com	2009-06-23 20:34:20.542	1	1	10748	1
112600	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	partner1@partners.com	2009-06-23 16:25:44.594	1	1	10740	4
112602	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	partner3@partners.com	2009-06-23 16:37:05.548	1	1	10742	4
112603	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 10:10:01.034	1	1	10743	1
112604	\N	\N	\N	\N	\N	\N	\N	Baggins	Frodo	\N	\N	\N	\N	\N	\N	\N	\N	frodo@shire.com	2007-09-12 10:10:02.556	1	1	10744	1
112800	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	a@a.com	2009-10-15 11:12:45.18	1	1	10750	1
112900	Long Distance Plan A	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-01@test.com	2009-12-15 16:17:40.847	1	1	10760	5
112901	Long Distance Plan B	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-02@test.com	2009-12-15 16:18:05.824	1	1	10761	4
112902	Long Distance Plan, 1000 min	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-03@test.com	2009-12-15 16:18:30.48	1	1	10762	4
113000	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-04@test.com	2009-12-17 13:25:11.977	1	1	10770	1
113001	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-05@test.com	2009-12-17 13:25:32.606	1	1	10771	1
113002	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-06@test.com	2009-12-17 13:34:24.15	1	1	10772	1
113003	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-07@test.com	2009-12-17 13:34:40.954	1	1	10773	1
113004	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-08@test.com	2009-12-17 13:35:04.242	1	1	10774	1
113005	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-09@test.com	2009-12-17 13:35:15.887	1	1	10775	1
113006	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-10@test.com	2009-12-17 13:36:45.165	1	1	10776	1
113007	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-11@test.com	2009-12-17 13:37:21.137	1	1	10777	1
113008	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-12@test.com	2009-12-17 13:37:33.539	1	1	10778	1
113009	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-13@test.com	2009-12-17 13:38:25.725	1	1	10779	1
113010	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-14@test.com	2009-12-17 13:38:54.151	1	1	10780	1
113011	\N	\N	\N	\N	\N	\N	CA	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	mediation-batch-test-15@test.com	2009-12-17 13:39:09.738	1	1	10781	1
114604	\N								XYZ AP	\N	\N	\N	\N		\N	\N	\N		2011-02-04 02:59:40.027	0	1	10942	1
11311	\N	No. 5 Jalan McArthur, 45, 7th Floor	\N	Bandar Seri Begawan	\N	BS8711 	BR	Srinivasan	Vasha	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10791	1
11312	\N	No. 1 Jalan McArthur, 4A, 4th Floor	\N	Bandar Seri Begawan	\N	BS8711 	BR	Srinivas	Vashanti	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10792	1
11313	\N	No. 5, Jalan Budiman, Taman Kin	\N	Bandar Seri Begawan	\N	BS8711 	BR	Srinivas	Thiru	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10793	1
11314	\N	Spg 2169, Unit No 9, Block F Junjongan Light Industrial Park, Mukim Pengkalan Batu	\N	Bandar Seri Begawan	\N	BS8711 	BR	Said	Nasha	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10794	1
11315	\N	40, Jalan Simpang Empat	\N	Bandar Seri Begawan	\N	BS8711 	BR	Zahman	Rahim	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10795	1
11316	\N	No. 24A-2, Jalan Bebatik, Mukim Sengkurong	\N	Bandar Seri Begawan	\N	BS8711 	BR	Mohd	Zaiham	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10796	1
11317	\N	A-2, Jalan Simpang Empat	\N	Bandar Seri Begawan	\N	BS8711 	BR	Halim	Noor	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10797	1
11318	\N	68, Kampong Salar Industrial Estate,Spg 557, Jalan Muara	\N	Bandar Seri Begawan	\N	BU1429	BR	Abdullah	Nizam	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10798	1
11319	\N	28-GB, Sri TTDI Apartment	\N	Bandar Seri Begawan	\N	BS8711 	BR	Abdullah	Zaman	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10799	1
11320	\N	No. 7, Ground Floor, Jalan Roberts	\N	Bandar Seri Begawan	\N	BS8711 	BR	Ibraham	Ahmad	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10800	1
114628	\N								Network Group	\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:06:39.039	0	1	10954	1
11330	\N	Spg 2169, Unit No 15, Block F Junjongan Light Industrial Park, Mukim Pengkalan Batu	\N	Bandar Seri Begawan	\N	BS8711 	BR	Saad	Azlin	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10810	1
11333	\N	11, Jalan Enggang,Taman Keramat Taman Keramat	\N	Bandar Seri Begawan	\N	BS8711 	BR	Ariffin	Zarina	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10813	1
11337	\N	Spg 2169, Unit No 20, Block F Junjongan Light Industrial Park, Mukim Pengkalan Batu	\N	Bandar Seri Begawan	\N	BS8711 	BR	Ahmad	Yusof	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10817	1
11340	\N	12, Kampong CStar, Spg 57, Jalan Mara	\N	Bandar Seri Begawan	\N	BU1429	BR	Hussien	Jeffrey	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10820	1
11342	\N	Spg 2169, Unit No 25, Block F Junjongan Light Industrial Park, Mukim Pengkalan Batu	\N	Bandar Seri Begawan	\N	BS8711 	BR	Johan	Eizu	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10822	1
11343	\N	18, Kampong AlorStar, Spg 557, Jalan Mutiara	\N	Bandar Seri Begawan	\N	BU1429	BR	Budiman	Adnan	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10823	1
11347	\N	214, Kampong Setia, Spg 57, Jalan Maju	\N	Bandar Seri Begawan	\N	BU1429	BR	Abdullah	Noor	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10827	1
11351	\N	99C Jalan Mckerron, Kuala Belait	\N	Bandar Seri Begawan	\N	BS8711 	BR	Hussien	Saiful	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10831	1
11353	\N	6, Kampong Salar Industrial Estate,Spg 557, Jalan Muara	\N	Bandar Seri Begawan	\N	BU1429	BR	Hussien	Syalwa	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10833	1
11354	\N	65, Taman Bukit Jaya, Jalan Antarabangsa	\N	Bandar Seri Begawan	\N	BU1429	BR	Halim	Azila	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10834	1
11356	\N	61, Kampong Salar Industrial Estate,Spg 557, Jalan Muara	\N	Bandar Seri Begawan	\N	BU1429	BR	Muhamad	Arifin	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10836	1
11357	\N	65, Taman Desaria, Jalan Tegas	\N	Bandar Seri Begawan	\N	BU1429	BR	Yusof	Osman	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10837	1
11359	\N	201, Kampong Damai, Spg 57, Jalan Desa Cemerlang	\N	Bandar Seri Begawan	\N	BU1429	BR	Zariff	Osman	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10839	1
11360	\N	18, Kampong AlorStar, Spg 557, Jalan Mutiara	\N	Bandar Seri Begawan	\N	BU1429	BR	Hussien	Adnan	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10840	1
114600	\N								XYZ Global Berhad	\N	\N	\N	\N		\N	\N	\N	mail@xyzglobal.com	2011-02-04 02:55:33.679	0	1	10940	1
114601	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 02:55:33.764	0	1	\N	0
114602	\N								CEO Global	\N	\N	\N	\N		\N	\N	\N		2011-02-04 02:58:06.621	0	1	10941	1
114603	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 02:58:06.666	0	1	\N	0
114605	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 02:59:40.064	0	1	\N	0
11325	\N	90, Jalan Simpang Empat	\N	Bandar Seri Begawan	\N	BS8711 	BR	George	Anthony	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10805	1
11324	\N	56-ET, Sri TTDI Apartment	\N	Bandar Seri Begawan	\N	BS8711 	BR	Johan	Sanj	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10804	1
11327	\N	No. 76A-2, Jalan Bebatik, Mukim Sengkurong	\N	Bandar Seri Begawan	\N	BS8711 	BR	Abdullah	Azhan	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10807	1
11326	\N	No. 12, Ground Floor, Jalan Roberts	\N	Bandar Seri Begawan	\N	BS8711 	BR	Saad	Adrin	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10806	1
11328	\N	290, Jalan TTDI	\N	Bandar Seri Begawan	\N	BS8711 	BR	Ismail	Mohamed	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10808	1
11329	\N	No. 23, 1st Floor, Jalan Roberts	\N	Bandar Seri Begawan	\N	BS8711 	BR	Ismail	Harun	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10809	1
11331	\N	D5, Shakirin Complex, Simpang 88, Kiulap	\N	Bandar Seri Begawan	\N	BS8711 	BR	Julianna	Azlin	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10811	1
11332	\N	523, Shakirin Parade, Simpang 20, Kiulap	\N	Bandar Seri Begawan	\N	BS8711 	BR	Krishna	Suriyah	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10812	1
11335	\N	Lot 13 - 15, Serasa Industrial Complex. PO Box 1031 BSB	\N	Bandar Seri Begawan	\N	BS8672	BR	Mohd	Yus	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10815	1
11334	\N	No. 5, Jalan Bebatik, Mukim Sengkurong	\N	Bandar Seri Begawan	\N	BS8711 	BR	Mohamed	Hamad	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10814	1
11336	\N	Komplex Perindustrian Beribi II, Km7, Gadong	\N	Bandar Seri Begawan	\N	BS8711 	BR	Mohd	Saadiah	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10816	1
11338	\N	No. 45, Serasa Industrial Complex. PO Box 1031 BSB	\N	Bandar Seri Begawan	\N	BS8672	BR	Yusof	Mohamed	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10818	1
11341	\N	No. 75, Jalan Bebatik, Mukim Sengkurong	\N	Bandar Seri Begawan	\N	BS8711 	BR	Kasim	Azerina	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10821	1
11344	\N	263-AB, Sri TTDI Apartment	\N	Bandar Seri Begawan	\N	BS8711 	BR	Gordan	Jeffrey	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10824	1
11346	\N	No. 35, Jalan Bebatik, Mukim Sengkurong	\N	Bandar Seri Begawan	\N	BS8711 	BR	Gregory	Johan	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10826	1
11345	\N	D5, Sha Complex, Simpang 99, Kiulap	\N	Bandar Seri Begawan	\N	BS8711 	BR	Fitri	Nuryaman	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10825	1
11348	\N	No. 124A-8, Jalan Bebatik, Mukim Sengkurong	\N	Bandar Seri Begawan	\N	BS8711 	BR	Smith	John	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10828	1
11350	\N	123, Sha Parade, Simpang 99, Kiulap	\N	Bandar Seri Begawan	\N	BS8711 	BR	Abdullah	Din	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10830	1
11349	\N	No. 56, Jalan PJS 1, MAS Garden	\N	Bandar Seri Begawan	\N	BS8711 	BR	Zaman	Zulkifli	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10829	1
11358	\N	No. 5, Jalan PJS 56, Mayang Garden	\N	Bandar Seri Begawan	\N	BS8711 	BR	Mohamad	Yusairi	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10838	1
11355	\N	No. 3, Jalan PJS 91, MAS Garden	\N	Bandar Seri Begawan	\N	BS8711 	BR	Osman	Ahmad	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10835	1
11352	\N	23, Jalan TTDI	\N	Bandar Seri Begawan	\N	BS8711 	BR	Chen	Gordan	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10832	1
11339	\N	43-WE, Sri TTDI Apartment	\N	Bandar Seri Begawan	\N	BS8711 	BR	Yusof	Zarina	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10819	1
11321	\N	20, Jalan TTDI	\N	Bandar Seri Begawan	\N	BS8711 	BR	Wong	George	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10801	1
114606	\N								XYZ EU	\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:00:21.381	0	1	10943	1
114607	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:00:21.45	0	1	\N	0
114608	\N								XYZ OT	\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:00:47.046	0	1	10944	1
114609	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:00:47.084	0	1	\N	0
114610	\N								XYZ ASEAN	\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:01:27.225	0	1	10945	1
114611	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:01:27.256	0	1	\N	0
114612	\N								XYZ Malaysia	\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:02:47.713	0	1	10946	1
114613	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:02:47.759	0	1	\N	0
114614	\N								XYZ Brunei	\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:03:14.132	0	1	10947	1
114615	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:03:14.158	0	1	\N	0
114616	\N								MD XYZ Brunei	\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:04:08.25	0	1	10948	1
114617	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:04:08.331	0	1	\N	0
114618	\N								Marketing DIv	\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:04:39.24	0	1	10949	1
114619	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:04:39.268	0	1	\N	0
114620	\N								Product DIV	\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:05:04.061	0	1	10950	1
114621	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:05:04.097	0	1	\N	0
114622	\N								CS DIV	\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:05:19.848	0	1	10951	1
114623	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:05:19.903	0	1	\N	0
114624	\N								Operation DIV	\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:05:46.07	0	1	10952	1
114625	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:05:46.10	0	1	\N	0
114626	\N								Billing Group	\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:06:14.737	0	1	10953	1
114627	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:06:14.768	0	1	\N	0
114632	\N								Others Group	\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:07:11.815	0	1	10956	1
114633	\N									\N	\N	\N	\N		\N	\N	\N		2011-02-04 03:07:11.931	0	1	\N	0
11322	\N	Y-14-2, Tropicana Resort Jalan Simpang	\N	Bandar Seri Begawan	\N	BS8711 	BR	Lee	David	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10802	1
11323	\N	No. 715, Ground Floor, Jalan Roberts	\N	Bandar Seri Begawan	\N	BS8711 	BR	Krishna	Vasanthi	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-04 00:00:00	0	1	10803	1
114700	\N	No. 5 Jalan McArthur, 45, 7th Floor	\N	Bandar Seri Begawan	\N	BS8711 	BR	Srinivasan	Vasha	\N	\N	\N	\N	\N	\N	\N	\N	\N	2011-02-15 16:50:37.505	0	1	\N	1
2	Telekom Austria Group	Lassallestraße 9	\N	Vienna	\N	1020	AT	Strator	Admin	\N	\N	\N	123	321-1234	\N	\N	\N	admin@prancingpony.me	2007-03-18 00:00:00	0	1	1	1
\.


--
-- Data for Name: contact_field; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY contact_field (id, type_id, contact_id, content, optlock) FROM stdin;
1	2	3	FAKE_2	1
2	1	3	255.255.255.0	1
11	2	85	FAKE_2	1
12	1	85	255.255.255.1	1
13	3	95	255.255.255.2	1
21	2	125	FAKE_2	1
22	1	125	serial-from-ws	1
23	2	126	FAKE_2	1
24	1	126	serial-from-ws	1
25	2	127	FAKE_2	1
26	1	127	serial-from-ws	1
27	2	128	FAKE_2	1
28	1	128	serial-from-ws	1
29	2	129	FAKE_2	1
30	1	129	serial-from-ws	1
31	2	130	FAKE_2	1
32	1	130	serial-from-ws	1
33	2	131	FAKE_2	1
34	1	131	serial-from-ws	1
35	2	132	FAKE_2	1
36	1	132	serial-from-ws	1
37	2	133	FAKE_2	1
38	1	133	serial-from-ws	1
39	2	134	FAKE_2	1
40	1	134	serial-from-ws	1
41	2	135	FAKE_2	1
42	1	135	serial-from-ws	1
43	2	136	FAKE_2	1
44	1	136	serial-from-ws	1
45	2	137	FAKE_2	1
46	1	137	serial-from-ws	1
47	2	138	FAKE_2	1
48	1	138	serial-from-ws	1
49	2	139	FAKE_2	1
50	1	139	serial-from-ws	1
51	2	140	FAKE_2	1
52	1	140	serial-from-ws	1
53	2	141	FAKE_2	1
54	1	141	serial-from-ws	1
55	2	142	FAKE_2	1
56	1	142	serial-from-ws	1
57	2	143	FAKE_2	1
58	1	143	serial-from-ws	1
59	2	144	FAKE_2	1
60	1	144	serial-from-ws	1
61	2	145	FAKE_2	1
62	1	145	serial-from-ws	1
63	2	146	FAKE_2	1
64	1	146	serial-from-ws	1
65	2	147	FAKE_2	1
66	1	147	serial-from-ws	1
67	2	148	FAKE_2	1
68	1	148	serial-from-ws	1
69	2	149	FAKE_2	1
70	1	149	serial-from-ws	1
71	2	150	FAKE_2	1
72	1	150	serial-from-ws	1
73	2	151	FAKE_2	1
74	1	151	serial-from-ws	1
75	2	152	FAKE_2	1
76	1	152	serial-from-ws	1
77	2	153	FAKE_2	1
78	1	153	serial-from-ws	1
79	2	154	FAKE_2	1
80	1	154	serial-from-ws	1
81	2	155	FAKE_2	1
82	1	155	serial-from-ws	1
83	2	156	FAKE_2	1
84	1	156	serial-from-ws	1
85	2	157	FAKE_2	1
86	1	157	serial-from-ws	1
87	2	158	FAKE_2	1
88	1	158	serial-from-ws	1
89	2	159	FAKE_2	1
90	1	159	serial-from-ws	1
91	2	160	FAKE_2	1
92	1	160	serial-from-ws	1
93	2	161	FAKE_2	1
94	1	161	serial-from-ws	1
95	2	162	FAKE_2	1
96	1	162	serial-from-ws	1
97	2	163	FAKE_2	1
98	1	163	serial-from-ws	1
99	2	164	FAKE_2	1
100	1	164	serial-from-ws	1
101	2	165	FAKE_2	1
102	1	165	serial-from-ws	1
103	2	166	FAKE_2	1
104	1	166	serial-from-ws	1
105	2	167	FAKE_2	1
106	1	167	serial-from-ws	1
107	2	168	FAKE_2	1
108	1	168	serial-from-ws	1
109	2	169	FAKE_2	1
110	1	169	serial-from-ws	1
111	2	170	FAKE_2	1
112	1	170	serial-from-ws	1
113	2	171	FAKE_2	1
114	1	171	serial-from-ws	1
115	2	172	FAKE_2	1
116	1	172	serial-from-ws	1
117	2	173	FAKE_2	1
118	1	173	serial-from-ws	1
119	2	174	FAKE_2	1
120	1	174	serial-from-ws	1
121	2	175	FAKE_2	1
122	1	175	serial-from-ws	1
123	2	176	FAKE_2	1
124	1	176	serial-from-ws	1
125	2	177	FAKE_2	1
126	1	177	serial-from-ws	1
127	2	178	FAKE_2	1
128	1	178	serial-from-ws	1
129	2	179	FAKE_2	1
130	1	179	serial-from-ws	1
131	2	180	FAKE_2	1
132	1	180	serial-from-ws	1
133	2	181	FAKE_2	1
134	1	181	serial-from-ws	1
135	2	182	FAKE_2	1
136	1	182	serial-from-ws	1
137	2	183	FAKE_2	1
138	1	183	serial-from-ws	1
139	2	184	FAKE_2	1
140	1	184	serial-from-ws	1
141	2	185	FAKE_2	1
142	1	185	serial-from-ws	1
143	2	186	FAKE_2	1
144	1	186	serial-from-ws	1
145	2	187	FAKE_2	1
146	1	187	serial-from-ws	1
147	2	188	FAKE_2	1
148	1	188	serial-from-ws	1
149	2	189	FAKE_2	1
150	1	189	serial-from-ws	1
151	2	190	FAKE_2	1
152	1	190	serial-from-ws	1
153	2	191	FAKE_2	1
154	1	191	serial-from-ws	1
155	2	192	FAKE_2	1
156	1	192	serial-from-ws	1
157	2	193	FAKE_2	1
158	1	193	serial-from-ws	1
159	2	194	FAKE_2	1
160	1	194	serial-from-ws	1
161	2	195	FAKE_2	1
162	1	195	serial-from-ws	1
163	2	196	FAKE_2	1
164	1	196	serial-from-ws	1
165	2	197	FAKE_2	1
166	1	197	serial-from-ws	1
167	2	198	FAKE_2	1
168	1	198	serial-from-ws	1
169	2	199	FAKE_2	1
170	1	199	serial-from-ws	1
171	2	200	FAKE_2	1
172	1	200	serial-from-ws	1
173	2	201	FAKE_2	1
174	1	201	serial-from-ws	1
175	2	202	FAKE_2	1
176	1	202	serial-from-ws	1
177	2	203	FAKE_2	1
178	1	203	serial-from-ws	1
179	2	204	FAKE_2	1
180	1	204	serial-from-ws	1
181	2	205	FAKE_2	1
182	1	205	serial-from-ws	1
183	2	206	FAKE_2	1
184	1	206	serial-from-ws	1
185	2	207	FAKE_2	1
186	1	207	serial-from-ws	1
187	2	208	FAKE_2	1
188	1	208	serial-from-ws	1
189	2	209	FAKE_2	1
190	1	209	serial-from-ws	1
191	2	210	FAKE_2	1
192	1	210	serial-from-ws	1
193	2	211	FAKE_2	1
194	1	211	serial-from-ws	1
195	2	212	FAKE_2	1
196	1	212	serial-from-ws	1
197	2	213	FAKE_2	1
198	1	213	serial-from-ws	1
199	2	214	FAKE_2	1
200	1	214	serial-from-ws	1
201	2	215	FAKE_2	1
202	1	215	serial-from-ws	1
203	2	216	FAKE_2	1
204	1	216	serial-from-ws	1
205	2	217	FAKE_2	1
206	1	217	serial-from-ws	1
207	2	218	FAKE_2	1
208	1	218	serial-from-ws	1
209	2	219	FAKE_2	1
210	1	219	serial-from-ws	1
211	2	220	FAKE_2	1
212	1	220	serial-from-ws	1
213	2	221	FAKE_2	1
214	1	221	serial-from-ws	1
215	2	222	FAKE_2	1
216	1	222	serial-from-ws	1
217	2	223	FAKE_2	1
218	1	223	serial-from-ws	1
219	2	224	FAKE_2	1
220	1	224	serial-from-ws	1
221	2	225	FAKE_2	1
222	1	225	serial-from-ws	1
223	2	226	FAKE_2	1
224	1	226	serial-from-ws	1
225	2	227	FAKE_2	1
226	1	227	serial-from-ws	1
227	2	228	FAKE_2	1
228	1	228	serial-from-ws	1
229	2	229	FAKE_2	1
230	1	229	serial-from-ws	1
231	2	230	FAKE_2	1
232	1	230	serial-from-ws	1
233	2	231	FAKE_2	1
234	1	231	serial-from-ws	1
235	2	232	FAKE_2	1
236	1	232	serial-from-ws	1
237	2	233	FAKE_2	1
238	1	233	serial-from-ws	1
239	2	234	FAKE_2	1
240	1	234	serial-from-ws	1
241	2	235	FAKE_2	1
242	1	235	serial-from-ws	1
243	2	236	FAKE_2	1
244	1	236	serial-from-ws	1
245	2	237	FAKE_2	1
246	1	237	serial-from-ws	1
247	2	238	FAKE_2	1
248	1	238	serial-from-ws	1
249	2	239	FAKE_2	1
250	1	239	serial-from-ws	1
251	2	240	FAKE_2	1
252	1	240	serial-from-ws	1
253	2	241	FAKE_2	1
254	1	241	serial-from-ws	1
255	2	242	FAKE_2	1
256	1	242	serial-from-ws	1
257	2	243	FAKE_2	1
258	1	243	serial-from-ws	1
259	2	244	FAKE_2	1
260	1	244	serial-from-ws	1
261	2	245	FAKE_2	1
262	1	245	serial-from-ws	1
263	2	246	FAKE_2	1
264	1	246	serial-from-ws	1
265	2	247	FAKE_2	1
266	1	247	serial-from-ws	1
267	2	248	FAKE_2	1
268	1	248	serial-from-ws	1
269	2	249	FAKE_2	1
270	1	249	serial-from-ws	1
271	2	250	FAKE_2	1
272	1	250	serial-from-ws	1
273	2	251	FAKE_2	1
274	1	251	serial-from-ws	1
275	2	252	FAKE_2	1
276	1	252	serial-from-ws	1
277	2	253	FAKE_2	1
278	1	253	serial-from-ws	1
279	2	254	FAKE_2	1
280	1	254	serial-from-ws	1
281	2	255	FAKE_2	1
282	1	255	serial-from-ws	1
283	2	256	FAKE_2	1
284	1	256	serial-from-ws	1
285	2	257	FAKE_2	1
286	1	257	serial-from-ws	1
287	2	258	FAKE_2	1
288	1	258	serial-from-ws	1
289	2	259	FAKE_2	1
290	1	259	serial-from-ws	1
291	2	260	FAKE_2	1
292	1	260	serial-from-ws	1
293	2	261	FAKE_2	1
294	1	261	serial-from-ws	1
295	2	262	FAKE_2	1
296	1	262	serial-from-ws	1
297	2	263	FAKE_2	1
298	1	263	serial-from-ws	1
299	2	264	FAKE_2	1
300	1	264	serial-from-ws	1
301	2	265	FAKE_2	1
302	1	265	serial-from-ws	1
303	2	266	FAKE_2	1
304	1	266	serial-from-ws	1
305	2	267	FAKE_2	1
306	1	267	serial-from-ws	1
307	2	268	FAKE_2	1
308	1	268	serial-from-ws	1
309	2	269	FAKE_2	1
310	1	269	serial-from-ws	1
311	2	270	FAKE_2	1
312	1	270	serial-from-ws	1
313	2	271	FAKE_2	1
314	1	271	serial-from-ws	1
315	2	272	FAKE_2	1
316	1	272	serial-from-ws	1
317	2	273	FAKE_2	1
318	1	273	serial-from-ws	1
319	2	274	FAKE_2	1
320	1	274	serial-from-ws	1
321	2	275	FAKE_2	1
322	1	275	serial-from-ws	1
323	2	276	FAKE_2	1
324	1	276	serial-from-ws	1
325	2	277	FAKE_2	1
326	1	277	serial-from-ws	1
327	2	278	FAKE_2	1
328	1	278	serial-from-ws	1
329	2	279	FAKE_2	1
330	1	279	serial-from-ws	1
331	2	280	FAKE_2	1
332	1	280	serial-from-ws	1
333	2	281	FAKE_2	1
334	1	281	serial-from-ws	1
335	2	282	FAKE_2	1
336	1	282	serial-from-ws	1
337	2	283	FAKE_2	1
338	1	283	serial-from-ws	1
339	2	284	FAKE_2	1
340	1	284	serial-from-ws	1
341	2	285	FAKE_2	1
342	1	285	serial-from-ws	1
343	2	286	FAKE_2	1
344	1	286	serial-from-ws	1
345	2	287	FAKE_2	1
346	1	287	serial-from-ws	1
347	2	288	FAKE_2	1
348	1	288	serial-from-ws	1
349	2	289	FAKE_2	1
350	1	289	serial-from-ws	1
351	2	290	FAKE_2	1
352	1	290	serial-from-ws	1
353	2	291	FAKE_2	1
354	1	291	serial-from-ws	1
355	2	292	FAKE_2	1
356	1	292	serial-from-ws	1
357	2	293	FAKE_2	1
358	1	293	serial-from-ws	1
359	2	294	FAKE_2	1
360	1	294	serial-from-ws	1
361	2	295	FAKE_2	1
362	1	295	serial-from-ws	1
363	2	296	FAKE_2	1
364	1	296	serial-from-ws	1
365	2	297	FAKE_2	1
366	1	297	serial-from-ws	1
367	2	298	FAKE_2	1
368	1	298	serial-from-ws	1
369	2	299	FAKE_2	1
370	1	299	serial-from-ws	1
371	2	300	FAKE_2	1
372	1	300	serial-from-ws	1
373	2	301	FAKE_2	1
374	1	301	serial-from-ws	1
375	2	302	FAKE_2	1
376	1	302	serial-from-ws	1
377	2	303	FAKE_2	1
378	1	303	serial-from-ws	1
379	2	304	FAKE_2	1
380	1	304	serial-from-ws	1
381	2	305	FAKE_2	1
382	1	305	serial-from-ws	1
383	2	306	FAKE_2	1
384	1	306	serial-from-ws	1
385	2	307	FAKE_2	1
386	1	307	serial-from-ws	1
387	2	308	FAKE_2	1
388	1	308	serial-from-ws	1
389	2	309	FAKE_2	1
390	1	309	serial-from-ws	1
391	2	310	FAKE_2	1
392	1	310	serial-from-ws	1
393	2	311	FAKE_2	1
394	1	311	serial-from-ws	1
395	2	312	FAKE_2	1
396	1	312	serial-from-ws	1
397	2	313	FAKE_2	1
398	1	313	serial-from-ws	1
399	2	314	FAKE_2	1
400	1	314	serial-from-ws	1
401	2	315	FAKE_2	1
402	1	315	serial-from-ws	1
403	2	316	FAKE_2	1
404	1	316	serial-from-ws	1
405	2	317	FAKE_2	1
406	1	317	serial-from-ws	1
407	2	318	FAKE_2	1
408	1	318	serial-from-ws	1
409	2	319	FAKE_2	1
410	1	319	serial-from-ws	1
411	2	320	FAKE_2	1
412	1	320	serial-from-ws	1
413	2	321	FAKE_2	1
414	1	321	serial-from-ws	1
415	2	322	FAKE_2	1
416	1	322	serial-from-ws	1
417	2	323	FAKE_2	1
418	1	323	serial-from-ws	1
419	2	324	FAKE_2	1
420	1	324	serial-from-ws	1
421	2	325	FAKE_2	1
422	1	325	serial-from-ws	1
423	2	326	FAKE_2	1
424	1	326	serial-from-ws	1
425	2	327	FAKE_2	1
426	1	327	serial-from-ws	1
427	2	328	FAKE_2	1
428	1	328	serial-from-ws	1
429	2	329	FAKE_2	1
430	1	329	serial-from-ws	1
431	2	330	FAKE_2	1
432	1	330	serial-from-ws	1
433	2	331	FAKE_2	1
434	1	331	serial-from-ws	1
435	2	332	FAKE_2	1
436	1	332	serial-from-ws	1
437	2	333	FAKE_2	1
438	1	333	serial-from-ws	1
439	2	334	FAKE_2	1
440	1	334	serial-from-ws	1
441	2	335	FAKE_2	1
442	1	335	serial-from-ws	1
443	2	336	FAKE_2	1
444	1	336	serial-from-ws	1
445	2	337	FAKE_2	1
446	1	337	serial-from-ws	1
447	2	338	FAKE_2	1
448	1	338	serial-from-ws	1
449	2	339	FAKE_2	1
450	1	339	serial-from-ws	1
451	2	340	FAKE_2	1
452	1	340	serial-from-ws	1
453	2	341	FAKE_2	1
454	1	341	serial-from-ws	1
455	2	342	FAKE_2	1
456	1	342	serial-from-ws	1
457	2	343	FAKE_2	1
458	1	343	serial-from-ws	1
459	2	344	FAKE_2	1
460	1	344	serial-from-ws	1
461	2	345	FAKE_2	1
462	1	345	serial-from-ws	1
463	2	346	FAKE_2	1
464	1	346	serial-from-ws	1
465	2	347	FAKE_2	1
466	1	347	serial-from-ws	1
467	2	348	FAKE_2	1
468	1	348	serial-from-ws	1
469	2	349	FAKE_2	1
470	1	349	serial-from-ws	1
471	2	350	FAKE_2	1
472	1	350	serial-from-ws	1
473	2	351	FAKE_2	1
474	1	351	serial-from-ws	1
475	2	352	FAKE_2	1
476	1	352	serial-from-ws	1
477	2	353	FAKE_2	1
478	1	353	serial-from-ws	1
479	2	354	FAKE_2	1
480	1	354	serial-from-ws	1
481	2	355	FAKE_2	1
482	1	355	serial-from-ws	1
483	2	356	FAKE_2	1
484	1	356	serial-from-ws	1
485	2	357	FAKE_2	1
486	1	357	serial-from-ws	1
487	2	358	FAKE_2	1
488	1	358	serial-from-ws	1
489	2	359	FAKE_2	1
490	1	359	serial-from-ws	1
491	2	360	FAKE_2	1
492	1	360	serial-from-ws	1
493	2	361	FAKE_2	1
494	1	361	serial-from-ws	1
495	2	362	FAKE_2	1
496	1	362	serial-from-ws	1
497	2	363	FAKE_2	1
498	1	363	serial-from-ws	1
499	2	364	FAKE_2	1
500	1	364	serial-from-ws	1
501	2	365	FAKE_2	1
502	1	365	serial-from-ws	1
503	2	366	FAKE_2	1
504	1	366	serial-from-ws	1
505	2	367	FAKE_2	1
506	1	367	serial-from-ws	1
507	2	368	FAKE_2	1
508	1	368	serial-from-ws	1
509	2	369	FAKE_2	1
510	1	369	serial-from-ws	1
511	2	370	FAKE_2	1
512	1	370	serial-from-ws	1
513	2	371	FAKE_2	1
514	1	371	serial-from-ws	1
515	2	372	FAKE_2	1
516	1	372	serial-from-ws	1
517	2	373	FAKE_2	1
518	1	373	serial-from-ws	1
519	2	374	FAKE_2	1
520	1	374	serial-from-ws	1
521	2	375	FAKE_2	1
522	1	375	serial-from-ws	1
523	2	376	FAKE_2	1
524	1	376	serial-from-ws	1
525	2	377	FAKE_2	1
526	1	377	serial-from-ws	1
527	2	378	FAKE_2	1
528	1	378	serial-from-ws	1
529	2	379	FAKE_2	1
530	1	379	serial-from-ws	1
531	2	380	FAKE_2	1
532	1	380	serial-from-ws	1
533	2	381	FAKE_2	1
534	1	381	serial-from-ws	1
535	2	382	FAKE_2	1
536	1	382	serial-from-ws	1
537	2	383	FAKE_2	1
538	1	383	serial-from-ws	1
539	2	384	FAKE_2	1
540	1	384	serial-from-ws	1
541	2	385	FAKE_2	1
542	1	385	serial-from-ws	1
543	2	386	FAKE_2	1
544	1	386	serial-from-ws	1
545	2	387	FAKE_2	1
546	1	387	serial-from-ws	1
547	2	388	FAKE_2	1
548	1	388	serial-from-ws	1
549	2	389	FAKE_2	1
550	1	389	serial-from-ws	1
551	2	390	FAKE_2	1
552	1	390	serial-from-ws	1
553	2	391	FAKE_2	1
554	1	391	serial-from-ws	1
555	2	392	FAKE_2	1
556	1	392	serial-from-ws	1
557	2	393	FAKE_2	1
558	1	393	serial-from-ws	1
559	2	394	FAKE_2	1
560	1	394	serial-from-ws	1
561	2	395	FAKE_2	1
562	1	395	serial-from-ws	1
563	2	396	FAKE_2	1
564	1	396	serial-from-ws	1
565	2	397	FAKE_2	1
566	1	397	serial-from-ws	1
567	2	398	FAKE_2	1
568	1	398	serial-from-ws	1
569	2	399	FAKE_2	1
570	1	399	serial-from-ws	1
571	2	400	FAKE_2	1
572	1	400	serial-from-ws	1
573	2	401	FAKE_2	1
574	1	401	serial-from-ws	1
575	2	402	FAKE_2	1
576	1	402	serial-from-ws	1
577	2	403	FAKE_2	1
578	1	403	serial-from-ws	1
579	2	404	FAKE_2	1
580	1	404	serial-from-ws	1
581	2	405	FAKE_2	1
582	1	405	serial-from-ws	1
583	2	406	FAKE_2	1
584	1	406	serial-from-ws	1
585	2	407	FAKE_2	1
586	1	407	serial-from-ws	1
587	2	408	FAKE_2	1
588	1	408	serial-from-ws	1
589	2	409	FAKE_2	1
590	1	409	serial-from-ws	1
591	2	410	FAKE_2	1
592	1	410	serial-from-ws	1
593	2	411	FAKE_2	1
594	1	411	serial-from-ws	1
595	2	412	FAKE_2	1
596	1	412	serial-from-ws	1
597	2	413	FAKE_2	1
598	1	413	serial-from-ws	1
599	2	414	FAKE_2	1
600	1	414	serial-from-ws	1
601	2	415	FAKE_2	1
602	1	415	serial-from-ws	1
603	2	416	FAKE_2	1
604	1	416	serial-from-ws	1
605	2	417	FAKE_2	1
606	1	417	serial-from-ws	1
607	2	418	FAKE_2	1
608	1	418	serial-from-ws	1
609	2	419	FAKE_2	1
610	1	419	serial-from-ws	1
611	2	420	FAKE_2	1
612	1	420	serial-from-ws	1
613	2	421	FAKE_2	1
614	1	421	serial-from-ws	1
615	2	422	FAKE_2	1
616	1	422	serial-from-ws	1
617	2	423	FAKE_2	1
618	1	423	serial-from-ws	1
619	2	424	FAKE_2	1
620	1	424	serial-from-ws	1
621	2	425	FAKE_2	1
622	1	425	serial-from-ws	1
623	2	426	FAKE_2	1
624	1	426	serial-from-ws	1
625	2	427	FAKE_2	1
626	1	427	serial-from-ws	1
627	2	428	FAKE_2	1
628	1	428	serial-from-ws	1
629	2	429	FAKE_2	1
630	1	429	serial-from-ws	1
631	2	430	FAKE_2	1
632	1	430	serial-from-ws	1
633	2	431	FAKE_2	1
634	1	431	serial-from-ws	1
635	2	432	FAKE_2	1
636	1	432	serial-from-ws	1
637	2	433	FAKE_2	1
638	1	433	serial-from-ws	1
639	2	434	FAKE_2	1
640	1	434	serial-from-ws	1
641	2	435	FAKE_2	1
642	1	435	serial-from-ws	1
643	2	436	FAKE_2	1
644	1	436	serial-from-ws	1
645	2	437	FAKE_2	1
646	1	437	serial-from-ws	1
647	2	438	FAKE_2	1
648	1	438	serial-from-ws	1
649	2	439	FAKE_2	1
650	1	439	serial-from-ws	1
651	2	440	FAKE_2	1
652	1	440	serial-from-ws	1
653	2	441	FAKE_2	1
654	1	441	serial-from-ws	1
655	2	442	FAKE_2	1
656	1	442	serial-from-ws	1
657	2	443	FAKE_2	1
658	1	443	serial-from-ws	1
659	2	444	FAKE_2	1
660	1	444	serial-from-ws	1
661	2	445	FAKE_2	1
662	1	445	serial-from-ws	1
663	2	446	FAKE_2	1
664	1	446	serial-from-ws	1
665	2	447	FAKE_2	1
666	1	447	serial-from-ws	1
667	2	448	FAKE_2	1
668	1	448	serial-from-ws	1
669	2	449	FAKE_2	1
670	1	449	serial-from-ws	1
671	2	450	FAKE_2	1
672	1	450	serial-from-ws	1
673	2	451	FAKE_2	1
674	1	451	serial-from-ws	1
675	2	452	FAKE_2	1
676	1	452	serial-from-ws	1
677	2	453	FAKE_2	1
678	1	453	serial-from-ws	1
679	2	454	FAKE_2	1
680	1	454	serial-from-ws	1
681	2	455	FAKE_2	1
682	1	455	serial-from-ws	1
683	2	456	FAKE_2	1
684	1	456	serial-from-ws	1
685	2	457	FAKE_2	1
686	1	457	serial-from-ws	1
687	2	458	FAKE_2	1
688	1	458	serial-from-ws	1
689	2	459	FAKE_2	1
690	1	459	serial-from-ws	1
691	2	460	FAKE_2	1
692	1	460	serial-from-ws	1
693	2	461	FAKE_2	1
694	1	461	serial-from-ws	1
695	2	462	FAKE_2	1
696	1	462	serial-from-ws	1
697	2	463	FAKE_2	1
698	1	463	serial-from-ws	1
699	2	464	FAKE_2	1
700	1	464	serial-from-ws	1
701	2	465	FAKE_2	1
702	1	465	serial-from-ws	1
703	2	466	FAKE_2	1
704	1	466	serial-from-ws	1
705	2	467	FAKE_2	1
706	1	467	serial-from-ws	1
707	2	468	FAKE_2	1
708	1	468	serial-from-ws	1
709	2	469	FAKE_2	1
710	1	469	serial-from-ws	1
711	2	470	FAKE_2	1
712	1	470	serial-from-ws	1
713	2	471	FAKE_2	1
714	1	471	serial-from-ws	1
715	2	472	FAKE_2	1
716	1	472	serial-from-ws	1
717	2	473	FAKE_2	1
718	1	473	serial-from-ws	1
719	2	474	FAKE_2	1
720	1	474	serial-from-ws	1
721	2	475	FAKE_2	1
722	1	475	serial-from-ws	1
723	2	476	FAKE_2	1
724	1	476	serial-from-ws	1
725	2	477	FAKE_2	1
726	1	477	serial-from-ws	1
727	2	478	FAKE_2	1
728	1	478	serial-from-ws	1
729	2	479	FAKE_2	1
730	1	479	serial-from-ws	1
731	2	480	FAKE_2	1
732	1	480	serial-from-ws	1
733	2	481	FAKE_2	1
734	1	481	serial-from-ws	1
735	2	482	FAKE_2	1
736	1	482	serial-from-ws	1
737	2	483	FAKE_2	1
738	1	483	serial-from-ws	1
739	2	484	FAKE_2	1
740	1	484	serial-from-ws	1
741	2	485	FAKE_2	1
742	1	485	serial-from-ws	1
743	2	486	FAKE_2	1
744	1	486	serial-from-ws	1
745	2	487	FAKE_2	1
746	1	487	serial-from-ws	1
747	2	488	FAKE_2	1
748	1	488	serial-from-ws	1
749	2	489	FAKE_2	1
750	1	489	serial-from-ws	1
751	2	490	FAKE_2	1
752	1	490	serial-from-ws	1
753	2	491	FAKE_2	1
754	1	491	serial-from-ws	1
755	2	492	FAKE_2	1
756	1	492	serial-from-ws	1
757	2	493	FAKE_2	1
758	1	493	serial-from-ws	1
759	2	494	FAKE_2	1
760	1	494	serial-from-ws	1
761	2	495	FAKE_2	1
762	1	495	serial-from-ws	1
763	2	496	FAKE_2	1
764	1	496	serial-from-ws	1
765	2	497	FAKE_2	1
766	1	497	serial-from-ws	1
767	2	498	FAKE_2	1
768	1	498	serial-from-ws	1
769	2	499	FAKE_2	1
770	1	499	serial-from-ws	1
771	2	500	FAKE_2	1
772	1	500	serial-from-ws	1
773	2	501	FAKE_2	1
774	1	501	serial-from-ws	1
775	2	502	FAKE_2	1
776	1	502	serial-from-ws	1
777	2	503	FAKE_2	1
778	1	503	serial-from-ws	1
779	2	504	FAKE_2	1
780	1	504	serial-from-ws	1
781	2	505	FAKE_2	1
782	1	505	serial-from-ws	1
783	2	506	FAKE_2	1
784	1	506	serial-from-ws	1
785	2	507	FAKE_2	1
786	1	507	serial-from-ws	1
787	2	508	FAKE_2	1
788	1	508	serial-from-ws	1
789	2	509	FAKE_2	1
790	1	509	serial-from-ws	1
791	2	510	FAKE_2	1
792	1	510	serial-from-ws	1
793	2	511	FAKE_2	1
794	1	511	serial-from-ws	1
795	2	512	FAKE_2	1
796	1	512	serial-from-ws	1
797	2	513	FAKE_2	1
798	1	513	serial-from-ws	1
799	2	514	FAKE_2	1
800	1	514	serial-from-ws	1
801	2	515	FAKE_2	1
802	1	515	serial-from-ws	1
803	2	516	FAKE_2	1
804	1	516	serial-from-ws	1
805	2	517	FAKE_2	1
806	1	517	serial-from-ws	1
807	2	518	FAKE_2	1
808	1	518	serial-from-ws	1
809	2	519	FAKE_2	1
810	1	519	serial-from-ws	1
811	2	520	FAKE_2	1
812	1	520	serial-from-ws	1
813	2	521	FAKE_2	1
814	1	521	serial-from-ws	1
815	2	522	FAKE_2	1
816	1	522	serial-from-ws	1
817	2	523	FAKE_2	1
818	1	523	serial-from-ws	1
819	2	524	FAKE_2	1
820	1	524	serial-from-ws	1
821	2	525	FAKE_2	1
822	1	525	serial-from-ws	1
823	2	526	FAKE_2	1
824	1	526	serial-from-ws	1
825	2	527	FAKE_2	1
826	1	527	serial-from-ws	1
827	2	528	FAKE_2	1
828	1	528	serial-from-ws	1
829	2	529	FAKE_2	1
830	1	529	serial-from-ws	1
831	2	530	FAKE_2	1
832	1	530	serial-from-ws	1
833	2	531	FAKE_2	1
834	1	531	serial-from-ws	1
835	2	532	FAKE_2	1
836	1	532	serial-from-ws	1
837	2	533	FAKE_2	1
838	1	533	serial-from-ws	1
839	2	534	FAKE_2	1
840	1	534	serial-from-ws	1
841	2	535	FAKE_2	1
842	1	535	serial-from-ws	1
843	2	536	FAKE_2	1
844	1	536	serial-from-ws	1
845	2	537	FAKE_2	1
846	1	537	serial-from-ws	1
847	2	538	FAKE_2	1
848	1	538	serial-from-ws	1
849	2	539	FAKE_2	1
850	1	539	serial-from-ws	1
851	2	540	FAKE_2	1
852	1	540	serial-from-ws	1
853	2	541	FAKE_2	1
854	1	541	serial-from-ws	1
855	2	542	FAKE_2	1
856	1	542	serial-from-ws	1
857	2	543	FAKE_2	1
858	1	543	serial-from-ws	1
859	2	544	FAKE_2	1
860	1	544	serial-from-ws	1
861	2	545	FAKE_2	1
862	1	545	serial-from-ws	1
863	2	546	FAKE_2	1
864	1	546	serial-from-ws	1
865	2	547	FAKE_2	1
866	1	547	serial-from-ws	1
867	2	548	FAKE_2	1
868	1	548	serial-from-ws	1
869	2	549	FAKE_2	1
870	1	549	serial-from-ws	1
871	2	550	FAKE_2	1
872	1	550	serial-from-ws	1
873	2	551	FAKE_2	1
874	1	551	serial-from-ws	1
875	2	552	FAKE_2	1
876	1	552	serial-from-ws	1
877	2	553	FAKE_2	1
878	1	553	serial-from-ws	1
879	2	554	FAKE_2	1
880	1	554	serial-from-ws	1
881	2	555	FAKE_2	1
882	1	555	serial-from-ws	1
883	2	556	FAKE_2	1
884	1	556	serial-from-ws	1
885	2	557	FAKE_2	1
886	1	557	serial-from-ws	1
887	2	558	FAKE_2	1
888	1	558	serial-from-ws	1
889	2	559	FAKE_2	1
890	1	559	serial-from-ws	1
891	2	560	FAKE_2	1
892	1	560	serial-from-ws	1
893	2	561	FAKE_2	1
894	1	561	serial-from-ws	1
895	2	562	FAKE_2	1
896	1	562	serial-from-ws	1
897	2	563	FAKE_2	1
898	1	563	serial-from-ws	1
899	2	564	FAKE_2	1
900	1	564	serial-from-ws	1
901	2	565	FAKE_2	1
902	1	565	serial-from-ws	1
903	2	566	FAKE_2	1
904	1	566	serial-from-ws	1
905	2	567	FAKE_2	1
906	1	567	serial-from-ws	1
907	2	568	FAKE_2	1
908	1	568	serial-from-ws	1
909	2	569	FAKE_2	1
910	1	569	serial-from-ws	1
911	2	570	FAKE_2	1
912	1	570	serial-from-ws	1
913	2	571	FAKE_2	1
914	1	571	serial-from-ws	1
915	2	572	FAKE_2	1
916	1	572	serial-from-ws	1
917	2	573	FAKE_2	1
918	1	573	serial-from-ws	1
919	2	574	FAKE_2	1
920	1	574	serial-from-ws	1
921	2	575	FAKE_2	1
922	1	575	serial-from-ws	1
923	2	576	FAKE_2	1
924	1	576	serial-from-ws	1
925	2	577	FAKE_2	1
926	1	577	serial-from-ws	1
927	2	578	FAKE_2	1
928	1	578	serial-from-ws	1
929	2	579	FAKE_2	1
930	1	579	serial-from-ws	1
931	2	580	FAKE_2	1
932	1	580	serial-from-ws	1
933	2	581	FAKE_2	1
934	1	581	serial-from-ws	1
935	2	582	FAKE_2	1
936	1	582	serial-from-ws	1
937	2	583	FAKE_2	1
938	1	583	serial-from-ws	1
939	2	584	FAKE_2	1
940	1	584	serial-from-ws	1
941	2	585	FAKE_2	1
942	1	585	serial-from-ws	1
943	2	586	FAKE_2	1
944	1	586	serial-from-ws	1
945	2	587	FAKE_2	1
946	1	587	serial-from-ws	1
947	2	588	FAKE_2	1
948	1	588	serial-from-ws	1
949	2	589	FAKE_2	1
950	1	589	serial-from-ws	1
951	2	590	FAKE_2	1
952	1	590	serial-from-ws	1
953	2	591	FAKE_2	1
954	1	591	serial-from-ws	1
955	2	592	FAKE_2	1
956	1	592	serial-from-ws	1
957	2	593	FAKE_2	1
958	1	593	serial-from-ws	1
959	2	594	FAKE_2	1
960	1	594	serial-from-ws	1
961	2	595	FAKE_2	1
962	1	595	serial-from-ws	1
963	2	596	FAKE_2	1
964	1	596	serial-from-ws	1
965	2	597	FAKE_2	1
966	1	597	serial-from-ws	1
967	2	598	FAKE_2	1
968	1	598	serial-from-ws	1
969	2	599	FAKE_2	1
970	1	599	serial-from-ws	1
971	2	600	FAKE_2	1
972	1	600	serial-from-ws	1
973	2	601	FAKE_2	1
974	1	601	serial-from-ws	1
975	2	602	FAKE_2	1
976	1	602	serial-from-ws	1
977	2	603	FAKE_2	1
978	1	603	serial-from-ws	1
979	2	604	FAKE_2	1
980	1	604	serial-from-ws	1
981	2	605	FAKE_2	1
982	1	605	serial-from-ws	1
983	2	606	FAKE_2	1
984	1	606	serial-from-ws	1
985	2	607	FAKE_2	1
986	1	607	serial-from-ws	1
987	2	608	FAKE_2	1
988	1	608	serial-from-ws	1
989	2	609	FAKE_2	1
990	1	609	serial-from-ws	1
991	2	610	FAKE_2	1
992	1	610	serial-from-ws	1
993	2	611	FAKE_2	1
994	1	611	serial-from-ws	1
995	2	612	FAKE_2	1
996	1	612	serial-from-ws	1
997	2	613	FAKE_2	1
998	1	613	serial-from-ws	1
999	2	614	FAKE_2	1
1000	1	614	serial-from-ws	1
1001	2	615	FAKE_2	1
1002	1	615	serial-from-ws	1
1003	2	616	FAKE_2	1
1004	1	616	serial-from-ws	1
1005	2	617	FAKE_2	1
1006	1	617	serial-from-ws	1
1007	2	618	FAKE_2	1
1008	1	618	serial-from-ws	1
1009	2	619	FAKE_2	1
1010	1	619	serial-from-ws	1
1011	2	620	FAKE_2	1
1012	1	620	serial-from-ws	1
1013	2	621	FAKE_2	1
1014	1	621	serial-from-ws	1
1015	2	622	FAKE_2	1
1016	1	622	serial-from-ws	1
1017	2	623	FAKE_2	1
1018	1	623	serial-from-ws	1
1019	2	624	FAKE_2	1
1020	1	624	serial-from-ws	1
1021	2	625	FAKE_2	1
1022	1	625	serial-from-ws	1
1023	2	626	FAKE_2	1
1024	1	626	serial-from-ws	1
1025	2	627	FAKE_2	1
1026	1	627	serial-from-ws	1
1027	2	628	FAKE_2	1
1028	1	628	serial-from-ws	1
1029	2	629	FAKE_2	1
1030	1	629	serial-from-ws	1
1031	2	630	FAKE_2	1
1032	1	630	serial-from-ws	1
1033	2	631	FAKE_2	1
1034	1	631	serial-from-ws	1
1035	2	632	FAKE_2	1
1036	1	632	serial-from-ws	1
1037	2	633	FAKE_2	1
1038	1	633	serial-from-ws	1
1039	2	634	FAKE_2	1
1040	1	634	serial-from-ws	1
1041	2	635	FAKE_2	1
1042	1	635	serial-from-ws	1
1043	2	636	FAKE_2	1
1044	1	636	serial-from-ws	1
1045	2	637	FAKE_2	1
1046	1	637	serial-from-ws	1
1047	2	638	FAKE_2	1
1048	1	638	serial-from-ws	1
1049	2	639	FAKE_2	1
1050	1	639	serial-from-ws	1
1051	2	640	FAKE_2	1
1052	1	640	serial-from-ws	1
1053	2	641	FAKE_2	1
1054	1	641	serial-from-ws	1
1055	2	642	FAKE_2	1
1056	1	642	serial-from-ws	1
1057	2	643	FAKE_2	1
1058	1	643	serial-from-ws	1
1059	2	644	FAKE_2	1
1060	1	644	serial-from-ws	1
1061	2	645	FAKE_2	1
1062	1	645	serial-from-ws	1
1063	2	646	FAKE_2	1
1064	1	646	serial-from-ws	1
1065	2	647	FAKE_2	1
1066	1	647	serial-from-ws	1
1067	2	648	FAKE_2	1
1068	1	648	serial-from-ws	1
1069	2	649	FAKE_2	1
1070	1	649	serial-from-ws	1
1071	2	650	FAKE_2	1
1072	1	650	serial-from-ws	1
1073	2	651	FAKE_2	1
1074	1	651	serial-from-ws	1
1075	2	652	FAKE_2	1
1076	1	652	serial-from-ws	1
1077	2	653	FAKE_2	1
1078	1	653	serial-from-ws	1
1079	2	654	FAKE_2	1
1080	1	654	serial-from-ws	1
1081	2	655	FAKE_2	1
1082	1	655	serial-from-ws	1
1083	2	656	FAKE_2	1
1084	1	656	serial-from-ws	1
1085	2	657	FAKE_2	1
1086	1	657	serial-from-ws	1
1087	2	658	FAKE_2	1
1088	1	658	serial-from-ws	1
1089	2	659	FAKE_2	1
1090	1	659	serial-from-ws	1
1091	2	660	FAKE_2	1
1092	1	660	serial-from-ws	1
1093	2	661	FAKE_2	1
1094	1	661	serial-from-ws	1
1095	2	662	FAKE_2	1
1096	1	662	serial-from-ws	1
1097	2	663	FAKE_2	1
1098	1	663	serial-from-ws	1
1099	2	664	FAKE_2	1
1100	1	664	serial-from-ws	1
1101	2	665	FAKE_2	1
1102	1	665	serial-from-ws	1
1103	2	666	FAKE_2	1
1104	1	666	serial-from-ws	1
1105	2	667	FAKE_2	1
1106	1	667	serial-from-ws	1
1107	2	668	FAKE_2	1
1108	1	668	serial-from-ws	1
1109	2	669	FAKE_2	1
1110	1	669	serial-from-ws	1
1111	2	670	FAKE_2	1
1112	1	670	serial-from-ws	1
1113	2	671	FAKE_2	1
1114	1	671	serial-from-ws	1
1115	2	672	FAKE_2	1
1116	1	672	serial-from-ws	1
1117	2	673	FAKE_2	1
1118	1	673	serial-from-ws	1
1119	2	674	FAKE_2	1
1120	1	674	serial-from-ws	1
1121	2	675	FAKE_2	1
1122	1	675	serial-from-ws	1
1123	2	676	FAKE_2	1
1124	1	676	serial-from-ws	1
1125	2	677	FAKE_2	1
1126	1	677	serial-from-ws	1
1127	2	678	FAKE_2	1
1128	1	678	serial-from-ws	1
1129	2	679	FAKE_2	1
1130	1	679	serial-from-ws	1
1131	2	680	FAKE_2	1
1132	1	680	serial-from-ws	1
1133	2	681	FAKE_2	1
1134	1	681	serial-from-ws	1
1135	2	682	FAKE_2	1
1136	1	682	serial-from-ws	1
1137	2	683	FAKE_2	1
1138	1	683	serial-from-ws	1
1139	2	684	FAKE_2	1
1140	1	684	serial-from-ws	1
1141	2	685	FAKE_2	1
1142	1	685	serial-from-ws	1
1143	2	686	FAKE_2	1
1144	1	686	serial-from-ws	1
1145	2	687	FAKE_2	1
1146	1	687	serial-from-ws	1
1147	2	688	FAKE_2	1
1148	1	688	serial-from-ws	1
1149	2	689	FAKE_2	1
1150	1	689	serial-from-ws	1
1151	2	690	FAKE_2	1
1152	1	690	serial-from-ws	1
1153	2	691	FAKE_2	1
1154	1	691	serial-from-ws	1
1155	2	692	FAKE_2	1
1156	1	692	serial-from-ws	1
1157	2	693	FAKE_2	1
1158	1	693	serial-from-ws	1
1159	2	694	FAKE_2	1
1160	1	694	serial-from-ws	1
1161	2	695	FAKE_2	1
1162	1	695	serial-from-ws	1
1163	2	696	FAKE_2	1
1164	1	696	serial-from-ws	1
1165	2	697	FAKE_2	1
1166	1	697	serial-from-ws	1
1167	2	698	FAKE_2	1
1168	1	698	serial-from-ws	1
1169	2	699	FAKE_2	1
1170	1	699	serial-from-ws	1
1171	2	700	FAKE_2	1
1172	1	700	serial-from-ws	1
1173	2	701	FAKE_2	1
1174	1	701	serial-from-ws	1
1175	2	702	FAKE_2	1
1176	1	702	serial-from-ws	1
1177	2	703	FAKE_2	1
1178	1	703	serial-from-ws	1
1179	2	704	FAKE_2	1
1180	1	704	serial-from-ws	1
1181	2	705	FAKE_2	1
1182	1	705	serial-from-ws	1
1183	2	706	FAKE_2	1
1184	1	706	serial-from-ws	1
1185	2	707	FAKE_2	1
1186	1	707	serial-from-ws	1
1187	2	708	FAKE_2	1
1188	1	708	serial-from-ws	1
1189	2	709	FAKE_2	1
1190	1	709	serial-from-ws	1
1191	2	710	FAKE_2	1
1192	1	710	serial-from-ws	1
1193	2	711	FAKE_2	1
1194	1	711	serial-from-ws	1
1195	2	712	FAKE_2	1
1196	1	712	serial-from-ws	1
1197	2	713	FAKE_2	1
1198	1	713	serial-from-ws	1
1199	2	714	FAKE_2	1
1200	1	714	serial-from-ws	1
1201	2	715	FAKE_2	1
1202	1	715	serial-from-ws	1
1203	2	716	FAKE_2	1
1204	1	716	serial-from-ws	1
1205	2	717	FAKE_2	1
1206	1	717	serial-from-ws	1
1207	2	718	FAKE_2	1
1208	1	718	serial-from-ws	1
1209	2	719	FAKE_2	1
1210	1	719	serial-from-ws	1
1211	2	720	FAKE_2	1
1212	1	720	serial-from-ws	1
1213	2	721	FAKE_2	1
1214	1	721	serial-from-ws	1
1215	2	722	FAKE_2	1
1216	1	722	serial-from-ws	1
1217	2	723	FAKE_2	1
1218	1	723	serial-from-ws	1
1219	2	724	FAKE_2	1
1220	1	724	serial-from-ws	1
1221	2	725	FAKE_2	1
1222	1	725	serial-from-ws	1
1223	2	726	FAKE_2	1
1224	1	726	serial-from-ws	1
1225	2	727	FAKE_2	1
1226	1	727	serial-from-ws	1
1227	2	728	FAKE_2	1
1228	1	728	serial-from-ws	1
1229	2	729	FAKE_2	1
1230	1	729	serial-from-ws	1
1231	2	730	FAKE_2	1
1232	1	730	serial-from-ws	1
1233	2	731	FAKE_2	1
1234	1	731	serial-from-ws	1
1235	2	732	FAKE_2	1
1236	1	732	serial-from-ws	1
1237	2	733	FAKE_2	1
1238	1	733	serial-from-ws	1
1239	2	734	FAKE_2	1
1240	1	734	serial-from-ws	1
1241	2	735	FAKE_2	1
1242	1	735	serial-from-ws	1
1243	2	736	FAKE_2	1
1244	1	736	serial-from-ws	1
1245	2	737	FAKE_2	1
1246	1	737	serial-from-ws	1
1247	2	738	FAKE_2	1
1248	1	738	serial-from-ws	1
1249	2	739	FAKE_2	1
1250	1	739	serial-from-ws	1
1251	2	740	FAKE_2	1
1252	1	740	serial-from-ws	1
1253	2	741	FAKE_2	1
1254	1	741	serial-from-ws	1
1255	2	742	FAKE_2	1
1256	1	742	serial-from-ws	1
1257	2	743	FAKE_2	1
1258	1	743	serial-from-ws	1
1259	2	744	FAKE_2	1
1260	1	744	serial-from-ws	1
1261	2	745	FAKE_2	1
1262	1	745	serial-from-ws	1
1263	2	746	FAKE_2	1
1264	1	746	serial-from-ws	1
1265	2	747	FAKE_2	1
1266	1	747	serial-from-ws	1
1267	2	748	FAKE_2	1
1268	1	748	serial-from-ws	1
1269	2	749	FAKE_2	1
1270	1	749	serial-from-ws	1
1271	2	750	FAKE_2	1
1272	1	750	serial-from-ws	1
1273	2	751	FAKE_2	1
1274	1	751	serial-from-ws	1
1275	2	752	FAKE_2	1
1276	1	752	serial-from-ws	1
1277	2	753	FAKE_2	1
1278	1	753	serial-from-ws	1
1279	2	754	FAKE_2	1
1280	1	754	serial-from-ws	1
1281	2	755	FAKE_2	1
1282	1	755	serial-from-ws	1
1283	2	756	FAKE_2	1
1284	1	756	serial-from-ws	1
1285	2	757	FAKE_2	1
1286	1	757	serial-from-ws	1
1287	2	758	FAKE_2	1
1288	1	758	serial-from-ws	1
1289	2	759	FAKE_2	1
1290	1	759	serial-from-ws	1
1291	2	760	FAKE_2	1
1292	1	760	serial-from-ws	1
1293	2	761	FAKE_2	1
1294	1	761	serial-from-ws	1
1295	2	762	FAKE_2	1
1296	1	762	serial-from-ws	1
1297	2	763	FAKE_2	1
1298	1	763	serial-from-ws	1
1299	2	764	FAKE_2	1
1300	1	764	serial-from-ws	1
1301	2	765	FAKE_2	1
1302	1	765	serial-from-ws	1
1303	2	766	FAKE_2	1
1304	1	766	serial-from-ws	1
1305	2	767	FAKE_2	1
1306	1	767	serial-from-ws	1
1307	2	768	FAKE_2	1
1308	1	768	serial-from-ws	1
1309	2	769	FAKE_2	1
1310	1	769	serial-from-ws	1
1311	2	770	FAKE_2	1
1312	1	770	serial-from-ws	1
1313	2	771	FAKE_2	1
1314	1	771	serial-from-ws	1
1315	2	772	FAKE_2	1
1316	1	772	serial-from-ws	1
1317	2	773	FAKE_2	1
1318	1	773	serial-from-ws	1
1319	2	774	FAKE_2	1
1320	1	774	serial-from-ws	1
1321	2	775	FAKE_2	1
1322	1	775	serial-from-ws	1
1323	2	776	FAKE_2	1
1324	1	776	serial-from-ws	1
1325	2	777	FAKE_2	1
1326	1	777	serial-from-ws	1
1327	2	778	FAKE_2	1
1328	1	778	serial-from-ws	1
1329	2	779	FAKE_2	1
1330	1	779	serial-from-ws	1
1331	2	780	FAKE_2	1
1332	1	780	serial-from-ws	1
1333	2	781	FAKE_2	1
1334	1	781	serial-from-ws	1
1335	2	782	FAKE_2	1
1336	1	782	serial-from-ws	1
1337	2	783	FAKE_2	1
1338	1	783	serial-from-ws	1
1339	2	784	FAKE_2	1
1340	1	784	serial-from-ws	1
1341	2	785	FAKE_2	1
1342	1	785	serial-from-ws	1
1343	2	786	FAKE_2	1
1344	1	786	serial-from-ws	1
1345	2	787	FAKE_2	1
1346	1	787	serial-from-ws	1
1347	2	788	FAKE_2	1
1348	1	788	serial-from-ws	1
1349	2	789	FAKE_2	1
1350	1	789	serial-from-ws	1
1351	2	790	FAKE_2	1
1352	1	790	serial-from-ws	1
1353	2	791	FAKE_2	1
1354	1	791	serial-from-ws	1
1355	2	792	FAKE_2	1
1356	1	792	serial-from-ws	1
1357	2	793	FAKE_2	1
1358	1	793	serial-from-ws	1
1359	2	794	FAKE_2	1
1360	1	794	serial-from-ws	1
1361	2	795	FAKE_2	1
1362	1	795	serial-from-ws	1
1363	2	796	FAKE_2	1
1364	1	796	serial-from-ws	1
1365	2	797	FAKE_2	1
1366	1	797	serial-from-ws	1
1367	2	798	FAKE_2	1
1368	1	798	serial-from-ws	1
1369	2	799	FAKE_2	1
1370	1	799	serial-from-ws	1
1371	2	800	FAKE_2	1
1372	1	800	serial-from-ws	1
1373	2	801	FAKE_2	1
1374	1	801	serial-from-ws	1
1375	2	802	FAKE_2	1
1376	1	802	serial-from-ws	1
1377	2	803	FAKE_2	1
1378	1	803	serial-from-ws	1
1379	2	804	FAKE_2	1
1380	1	804	serial-from-ws	1
1381	2	805	FAKE_2	1
1382	1	805	serial-from-ws	1
1383	2	806	FAKE_2	1
1384	1	806	serial-from-ws	1
1385	2	807	FAKE_2	1
1386	1	807	serial-from-ws	1
1387	2	808	FAKE_2	1
1388	1	808	serial-from-ws	1
1389	2	809	FAKE_2	1
1390	1	809	serial-from-ws	1
1391	2	810	FAKE_2	1
1392	1	810	serial-from-ws	1
1393	2	811	FAKE_2	1
1394	1	811	serial-from-ws	1
1395	2	812	FAKE_2	1
1396	1	812	serial-from-ws	1
1397	2	813	FAKE_2	1
1398	1	813	serial-from-ws	1
1399	2	814	FAKE_2	1
1400	1	814	serial-from-ws	1
1401	2	815	FAKE_2	1
1402	1	815	serial-from-ws	1
1403	2	816	FAKE_2	1
1404	1	816	serial-from-ws	1
1405	2	817	FAKE_2	1
1406	1	817	serial-from-ws	1
1407	2	818	FAKE_2	1
1408	1	818	serial-from-ws	1
1409	2	819	FAKE_2	1
1410	1	819	serial-from-ws	1
1411	2	820	FAKE_2	1
1412	1	820	serial-from-ws	1
1413	2	821	FAKE_2	1
1414	1	821	serial-from-ws	1
1415	2	822	FAKE_2	1
1416	1	822	serial-from-ws	1
1417	2	823	FAKE_2	1
1418	1	823	serial-from-ws	1
1419	2	824	FAKE_2	1
1420	1	824	serial-from-ws	1
1421	2	825	FAKE_2	1
1422	1	825	serial-from-ws	1
1423	2	826	FAKE_2	1
1424	1	826	serial-from-ws	1
1425	2	827	FAKE_2	1
1426	1	827	serial-from-ws	1
1427	2	828	FAKE_2	1
1428	1	828	serial-from-ws	1
1429	2	829	FAKE_2	1
1430	1	829	serial-from-ws	1
1431	2	830	FAKE_2	1
1432	1	830	serial-from-ws	1
1433	2	831	FAKE_2	1
1434	1	831	serial-from-ws	1
1435	2	832	FAKE_2	1
1436	1	832	serial-from-ws	1
1437	2	833	FAKE_2	1
1438	1	833	serial-from-ws	1
1439	2	834	FAKE_2	1
1440	1	834	serial-from-ws	1
1441	2	835	FAKE_2	1
1442	1	835	serial-from-ws	1
1443	2	836	FAKE_2	1
1444	1	836	serial-from-ws	1
1445	2	837	FAKE_2	1
1446	1	837	serial-from-ws	1
1447	2	838	FAKE_2	1
1448	1	838	serial-from-ws	1
1449	2	839	FAKE_2	1
1450	1	839	serial-from-ws	1
1451	2	840	FAKE_2	1
1452	1	840	serial-from-ws	1
1453	2	841	FAKE_2	1
1454	1	841	serial-from-ws	1
1455	2	842	FAKE_2	1
1456	1	842	serial-from-ws	1
1457	2	843	FAKE_2	1
1458	1	843	serial-from-ws	1
1459	2	844	FAKE_2	1
1460	1	844	serial-from-ws	1
1461	2	845	FAKE_2	1
1462	1	845	serial-from-ws	1
1463	2	846	FAKE_2	1
1464	1	846	serial-from-ws	1
1465	2	847	FAKE_2	1
1466	1	847	serial-from-ws	1
1467	2	848	FAKE_2	1
1468	1	848	serial-from-ws	1
1469	2	849	FAKE_2	1
1470	1	849	serial-from-ws	1
1471	2	850	FAKE_2	1
1472	1	850	serial-from-ws	1
1473	2	851	FAKE_2	1
1474	1	851	serial-from-ws	1
1475	2	852	FAKE_2	1
1476	1	852	serial-from-ws	1
1477	2	853	FAKE_2	1
1478	1	853	serial-from-ws	1
1479	2	854	FAKE_2	1
1480	1	854	serial-from-ws	1
1481	2	855	FAKE_2	1
1482	1	855	serial-from-ws	1
1483	2	856	FAKE_2	1
1484	1	856	serial-from-ws	1
1485	2	857	FAKE_2	1
1486	1	857	serial-from-ws	1
1487	2	858	FAKE_2	1
1488	1	858	serial-from-ws	1
1489	2	859	FAKE_2	1
1490	1	859	serial-from-ws	1
1491	2	860	FAKE_2	1
1492	1	860	serial-from-ws	1
1493	2	861	FAKE_2	1
1494	1	861	serial-from-ws	1
1495	2	862	FAKE_2	1
1496	1	862	serial-from-ws	1
1497	2	863	FAKE_2	1
1498	1	863	serial-from-ws	1
1499	2	864	FAKE_2	1
1500	1	864	serial-from-ws	1
1501	2	865	FAKE_2	1
1502	1	865	serial-from-ws	1
1503	2	866	FAKE_2	1
1504	1	866	serial-from-ws	1
1505	2	867	FAKE_2	1
1506	1	867	serial-from-ws	1
1507	2	868	FAKE_2	1
1508	1	868	serial-from-ws	1
1509	2	869	FAKE_2	1
1510	1	869	serial-from-ws	1
1511	2	870	FAKE_2	1
1512	1	870	serial-from-ws	1
1513	2	871	FAKE_2	1
1514	1	871	serial-from-ws	1
1515	2	872	FAKE_2	1
1516	1	872	serial-from-ws	1
1517	2	873	FAKE_2	1
1518	1	873	serial-from-ws	1
1519	2	874	FAKE_2	1
1520	1	874	serial-from-ws	1
1521	2	875	FAKE_2	1
1522	1	875	serial-from-ws	1
1523	2	876	FAKE_2	1
1524	1	876	serial-from-ws	1
1525	2	877	FAKE_2	1
1526	1	877	serial-from-ws	1
1527	2	878	FAKE_2	1
1528	1	878	serial-from-ws	1
1529	2	879	FAKE_2	1
1530	1	879	serial-from-ws	1
1531	2	880	FAKE_2	1
1532	1	880	serial-from-ws	1
1533	2	881	FAKE_2	1
1534	1	881	serial-from-ws	1
1535	2	882	FAKE_2	1
1536	1	882	serial-from-ws	1
1537	2	883	FAKE_2	1
1538	1	883	serial-from-ws	1
1539	2	884	FAKE_2	1
1540	1	884	serial-from-ws	1
1541	2	885	FAKE_2	1
1542	1	885	serial-from-ws	1
1543	2	886	FAKE_2	1
1544	1	886	serial-from-ws	1
1545	2	887	FAKE_2	1
1546	1	887	serial-from-ws	1
1547	2	888	FAKE_2	1
1548	1	888	serial-from-ws	1
1549	2	889	FAKE_2	1
1550	1	889	serial-from-ws	1
1551	2	890	FAKE_2	1
1552	1	890	serial-from-ws	1
1553	2	891	FAKE_2	1
1554	1	891	serial-from-ws	1
1555	2	892	FAKE_2	1
1556	1	892	serial-from-ws	1
1557	2	893	FAKE_2	1
1558	1	893	serial-from-ws	1
1559	2	894	FAKE_2	1
1560	1	894	serial-from-ws	1
1561	2	895	FAKE_2	1
1562	1	895	serial-from-ws	1
1563	2	896	FAKE_2	1
1564	1	896	serial-from-ws	1
1565	2	897	FAKE_2	1
1566	1	897	serial-from-ws	1
1567	2	898	FAKE_2	1
1568	1	898	serial-from-ws	1
1569	2	899	FAKE_2	1
1570	1	899	serial-from-ws	1
1571	2	900	FAKE_2	1
1572	1	900	serial-from-ws	1
1573	2	901	FAKE_2	1
1574	1	901	serial-from-ws	1
1575	2	902	FAKE_2	1
1576	1	902	serial-from-ws	1
1577	2	903	FAKE_2	1
1578	1	903	serial-from-ws	1
1579	2	904	FAKE_2	1
1580	1	904	serial-from-ws	1
1581	2	905	FAKE_2	1
1582	1	905	serial-from-ws	1
1583	2	906	FAKE_2	1
1584	1	906	serial-from-ws	1
1585	2	907	FAKE_2	1
1586	1	907	serial-from-ws	1
1587	2	908	FAKE_2	1
1588	1	908	serial-from-ws	1
1589	2	909	FAKE_2	1
1590	1	909	serial-from-ws	1
1591	2	910	FAKE_2	1
1592	1	910	serial-from-ws	1
1593	2	911	FAKE_2	1
1594	1	911	serial-from-ws	1
1595	2	912	FAKE_2	1
1596	1	912	serial-from-ws	1
1597	2	913	FAKE_2	1
1598	1	913	serial-from-ws	1
1599	2	914	FAKE_2	1
1600	1	914	serial-from-ws	1
1601	2	915	FAKE_2	1
1602	1	915	serial-from-ws	1
1603	2	916	FAKE_2	1
1604	1	916	serial-from-ws	1
1605	2	917	FAKE_2	1
1606	1	917	serial-from-ws	1
1607	2	918	FAKE_2	1
1608	1	918	serial-from-ws	1
1609	2	919	FAKE_2	1
1610	1	919	serial-from-ws	1
1611	2	920	FAKE_2	1
1612	1	920	serial-from-ws	1
1613	2	921	FAKE_2	1
1614	1	921	serial-from-ws	1
1615	2	922	FAKE_2	1
1616	1	922	serial-from-ws	1
1617	2	923	FAKE_2	1
1618	1	923	serial-from-ws	1
1619	2	924	FAKE_2	1
1620	1	924	serial-from-ws	1
1621	2	925	FAKE_2	1
1622	1	925	serial-from-ws	1
1623	2	926	FAKE_2	1
1624	1	926	serial-from-ws	1
1625	2	927	FAKE_2	1
1626	1	927	serial-from-ws	1
1627	2	928	FAKE_2	1
1628	1	928	serial-from-ws	1
1629	2	929	FAKE_2	1
1630	1	929	serial-from-ws	1
1631	2	930	FAKE_2	1
1632	1	930	serial-from-ws	1
1633	2	931	FAKE_2	1
1634	1	931	serial-from-ws	1
1635	2	932	FAKE_2	1
1636	1	932	serial-from-ws	1
1637	2	933	FAKE_2	1
1638	1	933	serial-from-ws	1
1639	2	934	FAKE_2	1
1640	1	934	serial-from-ws	1
1641	2	935	FAKE_2	1
1642	1	935	serial-from-ws	1
1643	2	936	FAKE_2	1
1644	1	936	serial-from-ws	1
1645	2	937	FAKE_2	1
1646	1	937	serial-from-ws	1
1647	2	938	FAKE_2	1
1648	1	938	serial-from-ws	1
1649	2	939	FAKE_2	1
1650	1	939	serial-from-ws	1
1651	2	940	FAKE_2	1
1652	1	940	serial-from-ws	1
1653	2	941	FAKE_2	1
1654	1	941	serial-from-ws	1
1655	2	942	FAKE_2	1
1656	1	942	serial-from-ws	1
1657	2	943	FAKE_2	1
1658	1	943	serial-from-ws	1
1659	2	944	FAKE_2	1
1660	1	944	serial-from-ws	1
1661	2	945	FAKE_2	1
1662	1	945	serial-from-ws	1
1663	2	946	FAKE_2	1
1664	1	946	serial-from-ws	1
1665	2	947	FAKE_2	1
1666	1	947	serial-from-ws	1
1667	2	948	FAKE_2	1
1668	1	948	serial-from-ws	1
1669	2	949	FAKE_2	1
1670	1	949	serial-from-ws	1
1671	2	950	FAKE_2	1
1672	1	950	serial-from-ws	1
1673	2	951	FAKE_2	1
1674	1	951	serial-from-ws	1
1675	2	952	FAKE_2	1
1676	1	952	serial-from-ws	1
1677	2	953	FAKE_2	1
1678	1	953	serial-from-ws	1
1679	2	954	FAKE_2	1
1680	1	954	serial-from-ws	1
1681	2	955	FAKE_2	1
1682	1	955	serial-from-ws	1
1683	2	956	FAKE_2	1
1684	1	956	serial-from-ws	1
1685	2	957	FAKE_2	1
1686	1	957	serial-from-ws	1
1687	2	958	FAKE_2	1
1688	1	958	serial-from-ws	1
1689	2	959	FAKE_2	1
1690	1	959	serial-from-ws	1
1691	2	960	FAKE_2	1
1692	1	960	serial-from-ws	1
1693	2	961	FAKE_2	1
1694	1	961	serial-from-ws	1
1695	2	962	FAKE_2	1
1696	1	962	serial-from-ws	1
1697	2	963	FAKE_2	1
1698	1	963	serial-from-ws	1
1699	2	964	FAKE_2	1
1700	1	964	serial-from-ws	1
1701	2	965	FAKE_2	1
1702	1	965	serial-from-ws	1
1703	2	966	FAKE_2	1
1704	1	966	serial-from-ws	1
1705	2	967	FAKE_2	1
1706	1	967	serial-from-ws	1
1707	2	968	FAKE_2	1
1708	1	968	serial-from-ws	1
1709	2	969	FAKE_2	1
1710	1	969	serial-from-ws	1
1711	2	970	FAKE_2	1
1712	1	970	serial-from-ws	1
1713	2	971	FAKE_2	1
1714	1	971	serial-from-ws	1
1715	2	972	FAKE_2	1
1716	1	972	serial-from-ws	1
1717	2	973	FAKE_2	1
1718	1	973	serial-from-ws	1
1719	2	974	FAKE_2	1
1720	1	974	serial-from-ws	1
1721	2	975	FAKE_2	1
1722	1	975	serial-from-ws	1
1723	2	976	FAKE_2	1
1724	1	976	serial-from-ws	1
1725	2	977	FAKE_2	1
1726	1	977	serial-from-ws	1
1727	2	978	FAKE_2	1
1728	1	978	serial-from-ws	1
1729	2	979	FAKE_2	1
1730	1	979	serial-from-ws	1
1731	2	980	FAKE_2	1
1732	1	980	serial-from-ws	1
1733	2	981	FAKE_2	1
1734	1	981	serial-from-ws	1
1735	2	982	FAKE_2	1
1736	1	982	serial-from-ws	1
1737	2	983	FAKE_2	1
1738	1	983	serial-from-ws	1
1739	2	984	FAKE_2	1
1740	1	984	serial-from-ws	1
1741	2	985	FAKE_2	1
1742	1	985	serial-from-ws	1
1743	2	986	FAKE_2	1
1744	1	986	serial-from-ws	1
1745	2	987	FAKE_2	1
1746	1	987	serial-from-ws	1
1747	2	988	FAKE_2	1
1748	1	988	serial-from-ws	1
1749	2	989	FAKE_2	1
1750	1	989	serial-from-ws	1
1751	2	990	FAKE_2	1
1752	1	990	serial-from-ws	1
1753	2	991	FAKE_2	1
1754	1	991	serial-from-ws	1
1755	2	992	FAKE_2	1
1756	1	992	serial-from-ws	1
1757	2	993	FAKE_2	1
1758	1	993	serial-from-ws	1
1759	2	994	FAKE_2	1
1760	1	994	serial-from-ws	1
1761	2	995	FAKE_2	1
1762	1	995	serial-from-ws	1
1763	2	996	FAKE_2	1
1764	1	996	serial-from-ws	1
1765	2	997	FAKE_2	1
1766	1	997	serial-from-ws	1
1767	2	998	FAKE_2	1
1768	1	998	serial-from-ws	1
1769	2	999	FAKE_2	1
1770	1	999	serial-from-ws	1
1771	2	1000	FAKE_2	1
1772	1	1000	serial-from-ws	1
1773	2	1001	FAKE_2	1
1774	1	1001	serial-from-ws	1
1775	2	1002	FAKE_2	1
1776	1	1002	serial-from-ws	1
1777	2	1003	FAKE_2	1
1778	1	1003	serial-from-ws	1
1779	2	1004	FAKE_2	1
1780	1	1004	serial-from-ws	1
1781	2	1005	FAKE_2	1
1782	1	1005	serial-from-ws	1
1783	2	1006	FAKE_2	1
1784	1	1006	serial-from-ws	1
1785	2	1007	FAKE_2	1
1786	1	1007	serial-from-ws	1
1787	2	1008	FAKE_2	1
1788	1	1008	serial-from-ws	1
1789	2	1009	FAKE_2	1
1790	1	1009	serial-from-ws	1
1791	2	1010	FAKE_2	1
1792	1	1010	serial-from-ws	1
1793	2	1011	FAKE_2	1
1794	1	1011	serial-from-ws	1
1795	2	1012	FAKE_2	1
1796	1	1012	serial-from-ws	1
1797	2	1013	FAKE_2	1
1798	1	1013	serial-from-ws	1
1799	2	1014	FAKE_2	1
1800	1	1014	serial-from-ws	1
1801	2	1015	FAKE_2	1
1802	1	1015	serial-from-ws	1
1803	2	1016	FAKE_2	1
1804	1	1016	serial-from-ws	1
1805	2	1017	FAKE_2	1
1806	1	1017	serial-from-ws	1
1807	2	1018	FAKE_2	1
1808	1	1018	serial-from-ws	1
1809	2	1019	FAKE_2	1
1810	1	1019	serial-from-ws	1
1811	2	1020	FAKE_2	1
1812	1	1020	serial-from-ws	1
1813	2	1021	FAKE_2	1
1814	1	1021	serial-from-ws	1
1815	2	1022	FAKE_2	1
1816	1	1022	serial-from-ws	1
1817	2	1023	FAKE_2	1
1818	1	1023	serial-from-ws	1
1819	2	1024	FAKE_2	1
1820	1	1024	serial-from-ws	1
1821	2	1025	FAKE_2	1
1822	1	1025	serial-from-ws	1
1823	2	1026	FAKE_2	1
1824	1	1026	serial-from-ws	1
1825	2	1027	FAKE_2	1
1826	1	1027	serial-from-ws	1
1827	2	1028	FAKE_2	1
1828	1	1028	serial-from-ws	1
1829	2	1029	FAKE_2	1
1830	1	1029	serial-from-ws	1
1831	2	1030	FAKE_2	1
1832	1	1030	serial-from-ws	1
1833	2	1031	FAKE_2	1
1834	1	1031	serial-from-ws	1
1835	2	1032	FAKE_2	1
1836	1	1032	serial-from-ws	1
1837	2	1033	FAKE_2	1
1838	1	1033	serial-from-ws	1
1839	2	1034	FAKE_2	1
1840	1	1034	serial-from-ws	1
1841	2	1035	FAKE_2	1
1842	1	1035	serial-from-ws	1
1843	2	1036	FAKE_2	1
1844	1	1036	serial-from-ws	1
1845	2	1037	FAKE_2	1
1846	1	1037	serial-from-ws	1
1847	2	1038	FAKE_2	1
1848	1	1038	serial-from-ws	1
1849	2	1039	FAKE_2	1
1850	1	1039	serial-from-ws	1
1851	2	1040	FAKE_2	1
1852	1	1040	serial-from-ws	1
1853	2	1041	FAKE_2	1
1854	1	1041	serial-from-ws	1
1855	2	1042	FAKE_2	1
1856	1	1042	serial-from-ws	1
1857	2	1043	FAKE_2	1
1858	1	1043	serial-from-ws	1
1859	2	1044	FAKE_2	1
1860	1	1044	serial-from-ws	1
1861	2	1045	FAKE_2	1
1862	1	1045	serial-from-ws	1
1863	2	1046	FAKE_2	1
1864	1	1046	serial-from-ws	1
1865	2	1047	FAKE_2	1
1866	1	1047	serial-from-ws	1
1867	2	1048	FAKE_2	1
1868	1	1048	serial-from-ws	1
1869	2	1049	FAKE_2	1
1870	1	1049	serial-from-ws	1
1871	2	1050	FAKE_2	1
1872	1	1050	serial-from-ws	1
1873	2	1051	FAKE_2	1
1874	1	1051	serial-from-ws	1
1875	2	1052	FAKE_2	1
1876	1	1052	serial-from-ws	1
1877	2	1053	FAKE_2	1
1878	1	1053	serial-from-ws	1
1879	2	1054	FAKE_2	1
1880	1	1054	serial-from-ws	1
1881	2	1055	FAKE_2	1
1882	1	1055	serial-from-ws	1
1883	2	1056	FAKE_2	1
1884	1	1056	serial-from-ws	1
1885	2	1057	FAKE_2	1
1886	1	1057	serial-from-ws	1
1887	2	1058	FAKE_2	1
1888	1	1058	serial-from-ws	1
1889	2	1059	FAKE_2	1
1890	1	1059	serial-from-ws	1
1891	2	1060	FAKE_2	1
1892	1	1060	serial-from-ws	1
1893	2	1061	FAKE_2	1
1894	1	1061	serial-from-ws	1
1895	2	1062	FAKE_2	1
1896	1	1062	serial-from-ws	1
1897	2	1063	FAKE_2	1
1898	1	1063	serial-from-ws	1
1899	2	1064	FAKE_2	1
1900	1	1064	serial-from-ws	1
1901	2	1065	FAKE_2	1
1902	1	1065	serial-from-ws	1
1903	2	1066	FAKE_2	1
1904	1	1066	serial-from-ws	1
1905	2	1067	FAKE_2	1
1906	1	1067	serial-from-ws	1
1907	2	1068	FAKE_2	1
1908	1	1068	serial-from-ws	1
1909	2	1069	FAKE_2	1
1910	1	1069	serial-from-ws	1
1911	2	1070	FAKE_2	1
1912	1	1070	serial-from-ws	1
1913	2	1071	FAKE_2	1
1914	1	1071	serial-from-ws	1
1915	2	1072	FAKE_2	1
1916	1	1072	serial-from-ws	1
1917	2	1073	FAKE_2	1
1918	1	1073	serial-from-ws	1
1919	2	1074	FAKE_2	1
1920	1	1074	serial-from-ws	1
1921	2	1075	FAKE_2	1
1922	1	1075	serial-from-ws	1
1923	2	1076	FAKE_2	1
1924	1	1076	serial-from-ws	1
1925	2	1077	FAKE_2	1
1926	1	1077	serial-from-ws	1
1927	2	1078	FAKE_2	1
1928	1	1078	serial-from-ws	1
1929	2	1079	FAKE_2	1
1930	1	1079	serial-from-ws	1
1931	2	1080	FAKE_2	1
1932	1	1080	serial-from-ws	1
1933	2	1081	FAKE_2	1
1934	1	1081	serial-from-ws	1
1935	2	1082	FAKE_2	1
1936	1	1082	serial-from-ws	1
1937	2	1083	FAKE_2	1
1938	1	1083	serial-from-ws	1
1939	2	1084	FAKE_2	1
1940	1	1084	serial-from-ws	1
1941	2	1085	FAKE_2	1
1942	1	1085	serial-from-ws	1
1943	2	1086	FAKE_2	1
1944	1	1086	serial-from-ws	1
1945	2	1087	FAKE_2	1
1946	1	1087	serial-from-ws	1
1947	2	1088	FAKE_2	1
1948	1	1088	serial-from-ws	1
1949	2	1089	FAKE_2	1
1950	1	1089	serial-from-ws	1
1951	2	1090	FAKE_2	1
1952	1	1090	serial-from-ws	1
1953	2	1091	FAKE_2	1
1954	1	1091	serial-from-ws	1
1955	2	1092	FAKE_2	1
1956	1	1092	serial-from-ws	1
1957	2	1093	FAKE_2	1
1958	1	1093	serial-from-ws	1
1959	2	1094	FAKE_2	1
1960	1	1094	serial-from-ws	1
1961	2	1095	FAKE_2	1
1962	1	1095	serial-from-ws	1
1963	2	1096	FAKE_2	1
1964	1	1096	serial-from-ws	1
1965	2	1097	FAKE_2	1
1966	1	1097	serial-from-ws	1
1967	2	1098	FAKE_2	1
1968	1	1098	serial-from-ws	1
1969	2	1099	FAKE_2	1
1970	1	1099	serial-from-ws	1
1971	2	1100	FAKE_2	1
1972	1	1100	serial-from-ws	1
1973	2	1101	FAKE_2	1
1974	1	1101	serial-from-ws	1
1975	2	1102	FAKE_2	1
1976	1	1102	serial-from-ws	1
1977	2	1103	FAKE_2	1
1978	1	1103	serial-from-ws	1
1979	2	1104	FAKE_2	1
1980	1	1104	serial-from-ws	1
1981	2	1105	FAKE_2	1
1982	1	1105	serial-from-ws	1
1983	2	1106	FAKE_2	1
1984	1	1106	serial-from-ws	1
1985	2	1107	FAKE_2	1
1986	1	1107	serial-from-ws	1
1987	2	1108	FAKE_2	1
1988	1	1108	serial-from-ws	1
1989	2	1109	FAKE_2	1
1990	1	1109	serial-from-ws	1
1991	2	1110	FAKE_2	1
1992	1	1110	serial-from-ws	1
1993	2	1111	FAKE_2	1
1994	1	1111	serial-from-ws	1
1995	2	1112	FAKE_2	1
1996	1	1112	serial-from-ws	1
1997	2	1113	FAKE_2	1
1998	1	1113	serial-from-ws	1
1999	2	1114	FAKE_2	1
2000	1	1114	serial-from-ws	1
2001	2	1115	FAKE_2	1
2002	1	1115	serial-from-ws	1
2003	2	1116	FAKE_2	1
2004	1	1116	serial-from-ws	1
2005	2	1117	FAKE_2	1
2006	1	1117	serial-from-ws	1
2007	2	1118	FAKE_2	1
2008	1	1118	serial-from-ws	1
2009	2	1119	FAKE_2	1
2010	1	1119	serial-from-ws	1
2011	2	1120	FAKE_2	1
2012	1	1120	serial-from-ws	1
2013	2	1121	FAKE_2	1
2014	1	1121	serial-from-ws	1
2015	2	1122	FAKE_2	1
2016	1	1122	serial-from-ws	1
2017	2	1123	FAKE_2	1
2018	1	1123	serial-from-ws	1
2019	2	1124	FAKE_2	1
2020	1	1124	serial-from-ws	1
2047	3	1057	123.123.123.123	1
2048	3	1128	123.123.123.123	1
2049	3	1058	124.124.124.124	1
202100	3	112500	255.255.255.3	1
202101	2	112500	CURRENCY_ROUTER	0
202102	1	112500		0
202103	3	112501	255.255.255.4	1
202104	2	112501	CURRENCY_ROUTER	0
202105	1	112501		0
202200	3	112600	255.255.255.5	1
202201	2	112600	FAKE_2	0
202202	1	112600		0
202300	3	112602	255.255.255.6	1
202301	2	112602	FAKE_2	0
202302	1	112602		0
202400	3	112700	255.255.255.7	1
202401	2	112700	FAKE_2	0
202402	1	112700	serial-from-ws	0
202500	3	112900		0
202501	2	112900		0
202502	1	112900		0
202503	3	112901		0
202504	2	112901		0
202505	1	112901		0
202506	3	112902		0
202507	2	112902		0
202508	1	112902		0
202600	3	114600		0
202601	2	114600		0
202602	1	114600		0
202603	3	114602		0
202604	2	114602		0
202605	1	114602		0
202606	3	114604		0
202607	2	114604		0
202608	1	114604		0
202609	3	114606		0
202610	2	114606		0
202611	1	114606		0
202612	3	114608		0
202613	2	114608		0
202614	1	114608		0
202615	3	114610		0
202616	2	114610		0
202617	1	114610		0
202618	3	114612		0
202619	2	114612		0
202620	1	114612		0
202621	3	114614		0
202622	2	114614		0
202623	1	114614		0
202624	3	114616		0
202625	2	114616		0
202626	1	114616		0
202627	3	114618		0
202628	2	114618		0
202629	1	114618		0
202630	3	114620		0
202631	2	114620		0
202632	1	114620		0
202633	3	114622		0
202634	2	114622		0
202635	1	114622		0
202636	3	114624		0
202637	2	114624		0
202638	1	114624		0
202639	3	114626		0
202640	2	114626		0
202641	1	114626		0
202642	3	114628		0
202643	2	114628		0
202644	1	114628		0
202645	3	114630		0
202646	2	114630		0
202647	1	114630		0
202648	3	114632		0
202649	2	114632		0
202650	1	114632		0
202700	3	114700		0
202701	2	114700		0
202702	1	114700		0
\.


--
-- Data for Name: contact_field_type; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY contact_field_type (id, entity_id, prompt_key, data_type, customer_readonly, optlock) FROM stdin;
1	1	placeholder_text	String	1	1
2	1	placeholder_text	String	1	1
3	1	placeholder_text	String	1	1
\.


--
-- Data for Name: contact_map; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY contact_map (id, contact_id, type_id, table_id, foreign_id, optlock) FROM stdin;
6780	1	1	5	1	1
6781	2	2	10	1	1
6782	3	2	10	2	1
6792	13	1	5	2	1
6793	14	3	10	12	1
6794	15	3	10	13	1
6804	25	1	39	5	1
6814	35	1	39	15	1
6824	45	1	39	25	1
6834	55	1	39	35	1
6844	65	2	10	33	1
6854	75	2	10	43	1
6864	85	1	39	45	1
6874	95	2	10	53	1
6875	96	1	39	55	1
6884	105	2	10	63	1
6885	106	1	39	65	1
6894	115	1	39	75	1
6904	125	2	10	73	1
6905	126	2	10	74	1
6906	127	2	10	75	1
6907	128	2	10	76	1
6908	129	2	10	77	1
6909	130	2	10	78	1
6910	131	2	10	79	1
6911	132	2	10	80	1
6912	133	2	10	81	1
6913	134	2	10	82	1
6914	135	2	10	83	1
6915	136	2	10	84	1
6916	137	2	10	85	1
6917	138	2	10	86	1
6918	139	2	10	87	1
6919	140	2	10	88	1
6920	141	2	10	89	1
6921	142	2	10	90	1
6922	143	2	10	91	1
6923	144	2	10	92	1
6924	145	2	10	93	1
6925	146	2	10	94	1
6926	147	2	10	95	1
6927	148	2	10	96	1
6928	149	2	10	97	1
6929	150	2	10	98	1
6930	151	2	10	99	1
6931	152	2	10	100	1
6932	153	2	10	101	1
6933	154	2	10	102	1
6934	155	2	10	103	1
6935	156	2	10	104	1
6936	157	2	10	105	1
6937	158	2	10	106	1
6938	159	2	10	107	1
6939	160	2	10	108	1
6940	161	2	10	109	1
6941	162	2	10	110	1
6942	163	2	10	111	1
6943	164	2	10	112	1
6944	165	2	10	113	1
6945	166	2	10	114	1
6946	167	2	10	115	1
6947	168	2	10	116	1
6948	169	2	10	117	1
6949	170	2	10	118	1
6950	171	2	10	119	1
6951	172	2	10	120	1
6952	173	2	10	121	1
6953	174	2	10	122	1
6954	175	2	10	123	1
6955	176	2	10	124	1
6956	177	2	10	125	1
6957	178	2	10	126	1
6958	179	2	10	127	1
6959	180	2	10	128	1
6960	181	2	10	129	1
6961	182	2	10	130	1
6962	183	2	10	131	1
6963	184	2	10	132	1
6964	185	2	10	133	1
6965	186	2	10	134	1
6966	187	2	10	135	1
6967	188	2	10	136	1
6968	189	2	10	137	1
6969	190	2	10	138	1
6970	191	2	10	139	1
6971	192	2	10	140	1
6972	193	2	10	141	1
6973	194	2	10	142	1
6974	195	2	10	143	1
6975	196	2	10	144	1
6976	197	2	10	145	1
6977	198	2	10	146	1
6978	199	2	10	147	1
6979	200	2	10	148	1
6980	201	2	10	149	1
6981	202	2	10	150	1
6982	203	2	10	151	1
6983	204	2	10	152	1
6984	205	2	10	153	1
6985	206	2	10	154	1
6986	207	2	10	155	1
6987	208	2	10	156	1
6988	209	2	10	157	1
6989	210	2	10	158	1
6990	211	2	10	159	1
6991	212	2	10	160	1
6992	213	2	10	161	1
6993	214	2	10	162	1
6994	215	2	10	163	1
6995	216	2	10	164	1
6996	217	2	10	165	1
6997	218	2	10	166	1
6998	219	2	10	167	1
6999	220	2	10	168	1
7000	221	2	10	169	1
7001	222	2	10	170	1
7002	223	2	10	171	1
7003	224	2	10	172	1
7004	225	2	10	173	1
7005	226	2	10	174	1
7006	227	2	10	175	1
7007	228	2	10	176	1
7008	229	2	10	177	1
7009	230	2	10	178	1
7010	231	2	10	179	1
7011	232	2	10	180	1
7012	233	2	10	181	1
7013	234	2	10	182	1
7014	235	2	10	183	1
7015	236	2	10	184	1
7016	237	2	10	185	1
7017	238	2	10	186	1
7018	239	2	10	187	1
7019	240	2	10	188	1
7020	241	2	10	189	1
7021	242	2	10	190	1
7022	243	2	10	191	1
7023	244	2	10	192	1
7024	245	2	10	193	1
7025	246	2	10	194	1
7026	247	2	10	195	1
7027	248	2	10	196	1
7028	249	2	10	197	1
7029	250	2	10	198	1
7030	251	2	10	199	1
7031	252	2	10	200	1
7032	253	2	10	201	1
7033	254	2	10	202	1
7034	255	2	10	203	1
7035	256	2	10	204	1
7036	257	2	10	205	1
7037	258	2	10	206	1
7038	259	2	10	207	1
7039	260	2	10	208	1
7040	261	2	10	209	1
7041	262	2	10	210	1
7042	263	2	10	211	1
7043	264	2	10	212	1
7044	265	2	10	213	1
7045	266	2	10	214	1
7046	267	2	10	215	1
7047	268	2	10	216	1
7048	269	2	10	217	1
7049	270	2	10	218	1
7050	271	2	10	219	1
7051	272	2	10	220	1
7052	273	2	10	221	1
7053	274	2	10	222	1
7054	275	2	10	223	1
7055	276	2	10	224	1
7056	277	2	10	225	1
7057	278	2	10	226	1
7058	279	2	10	227	1
7059	280	2	10	228	1
7060	281	2	10	229	1
7061	282	2	10	230	1
7062	283	2	10	231	1
7063	284	2	10	232	1
7064	285	2	10	233	1
7065	286	2	10	234	1
7066	287	2	10	235	1
7067	288	2	10	236	1
7068	289	2	10	237	1
7069	290	2	10	238	1
7070	291	2	10	239	1
7071	292	2	10	240	1
7072	293	2	10	241	1
7073	294	2	10	242	1
7074	295	2	10	243	1
7075	296	2	10	244	1
7076	297	2	10	245	1
7077	298	2	10	246	1
7078	299	2	10	247	1
7079	300	2	10	248	1
7080	301	2	10	249	1
7081	302	2	10	250	1
7082	303	2	10	251	1
7083	304	2	10	252	1
7084	305	2	10	253	1
7085	306	2	10	254	1
7086	307	2	10	255	1
7087	308	2	10	256	1
7088	309	2	10	257	1
7089	310	2	10	258	1
7090	311	2	10	259	1
7091	312	2	10	260	1
7092	313	2	10	261	1
7093	314	2	10	262	1
7094	315	2	10	263	1
7095	316	2	10	264	1
7096	317	2	10	265	1
7097	318	2	10	266	1
7098	319	2	10	267	1
7099	320	2	10	268	1
7100	321	2	10	269	1
7101	322	2	10	270	1
7102	323	2	10	271	1
7103	324	2	10	272	1
7104	325	2	10	273	1
7105	326	2	10	274	1
7106	327	2	10	275	1
7107	328	2	10	276	1
7108	329	2	10	277	1
7109	330	2	10	278	1
7110	331	2	10	279	1
7111	332	2	10	280	1
7112	333	2	10	281	1
7113	334	2	10	282	1
7114	335	2	10	283	1
7115	336	2	10	284	1
7116	337	2	10	285	1
7117	338	2	10	286	1
7118	339	2	10	287	1
7119	340	2	10	288	1
7120	341	2	10	289	1
7121	342	2	10	290	1
7122	343	2	10	291	1
7123	344	2	10	292	1
7124	345	2	10	293	1
7125	346	2	10	294	1
7126	347	2	10	295	1
7127	348	2	10	296	1
7128	349	2	10	297	1
7129	350	2	10	298	1
7130	351	2	10	299	1
7131	352	2	10	300	1
7132	353	2	10	301	1
7133	354	2	10	302	1
7134	355	2	10	303	1
7135	356	2	10	304	1
7136	357	2	10	305	1
7137	358	2	10	306	1
7138	359	2	10	307	1
7139	360	2	10	308	1
7140	361	2	10	309	1
7141	362	2	10	310	1
7142	363	2	10	311	1
7143	364	2	10	312	1
7144	365	2	10	313	1
7145	366	2	10	314	1
7146	367	2	10	315	1
7147	368	2	10	316	1
7148	369	2	10	317	1
7149	370	2	10	318	1
7150	371	2	10	319	1
7151	372	2	10	320	1
7152	373	2	10	321	1
7153	374	2	10	322	1
7154	375	2	10	323	1
7155	376	2	10	324	1
7156	377	2	10	325	1
7157	378	2	10	326	1
7158	379	2	10	327	1
7159	380	2	10	328	1
7160	381	2	10	329	1
7161	382	2	10	330	1
7162	383	2	10	331	1
7163	384	2	10	332	1
7164	385	2	10	333	1
7165	386	2	10	334	1
7166	387	2	10	335	1
7167	388	2	10	336	1
7168	389	2	10	337	1
7169	390	2	10	338	1
7170	391	2	10	339	1
7171	392	2	10	340	1
7172	393	2	10	341	1
7173	394	2	10	342	1
7174	395	2	10	343	1
7175	396	2	10	344	1
7176	397	2	10	345	1
7177	398	2	10	346	1
7178	399	2	10	347	1
7179	400	2	10	348	1
7180	401	2	10	349	1
7181	402	2	10	350	1
7182	403	2	10	351	1
7183	404	2	10	352	1
7184	405	2	10	353	1
7185	406	2	10	354	1
7186	407	2	10	355	1
7187	408	2	10	356	1
7188	409	2	10	357	1
7189	410	2	10	358	1
7190	411	2	10	359	1
7191	412	2	10	360	1
7192	413	2	10	361	1
7193	414	2	10	362	1
7194	415	2	10	363	1
7195	416	2	10	364	1
7196	417	2	10	365	1
7197	418	2	10	366	1
7198	419	2	10	367	1
7199	420	2	10	368	1
7200	421	2	10	369	1
7201	422	2	10	370	1
7202	423	2	10	371	1
7203	424	2	10	372	1
7204	425	2	10	373	1
7205	426	2	10	374	1
7206	427	2	10	375	1
7207	428	2	10	376	1
7208	429	2	10	377	1
7209	430	2	10	378	1
7210	431	2	10	379	1
7211	432	2	10	380	1
7212	433	2	10	381	1
7213	434	2	10	382	1
7214	435	2	10	383	1
7215	436	2	10	384	1
7216	437	2	10	385	1
7217	438	2	10	386	1
7218	439	2	10	387	1
7219	440	2	10	388	1
7220	441	2	10	389	1
7221	442	2	10	390	1
7222	443	2	10	391	1
7223	444	2	10	392	1
7224	445	2	10	393	1
7225	446	2	10	394	1
7226	447	2	10	395	1
7227	448	2	10	396	1
7228	449	2	10	397	1
7229	450	2	10	398	1
7230	451	2	10	399	1
7231	452	2	10	400	1
7232	453	2	10	401	1
7233	454	2	10	402	1
7234	455	2	10	403	1
7235	456	2	10	404	1
7236	457	2	10	405	1
7237	458	2	10	406	1
7238	459	2	10	407	1
7239	460	2	10	408	1
7240	461	2	10	409	1
7241	462	2	10	410	1
7242	463	2	10	411	1
7243	464	2	10	412	1
7244	465	2	10	413	1
7245	466	2	10	414	1
7246	467	2	10	415	1
7247	468	2	10	416	1
7248	469	2	10	417	1
7249	470	2	10	418	1
7250	471	2	10	419	1
7251	472	2	10	420	1
7252	473	2	10	421	1
7253	474	2	10	422	1
7254	475	2	10	423	1
7255	476	2	10	424	1
7256	477	2	10	425	1
7257	478	2	10	426	1
7258	479	2	10	427	1
7259	480	2	10	428	1
7260	481	2	10	429	1
7261	482	2	10	430	1
7262	483	2	10	431	1
7263	484	2	10	432	1
7264	485	2	10	433	1
7265	486	2	10	434	1
7266	487	2	10	435	1
7267	488	2	10	436	1
7268	489	2	10	437	1
7269	490	2	10	438	1
7270	491	2	10	439	1
7271	492	2	10	440	1
7272	493	2	10	441	1
7273	494	2	10	442	1
7274	495	2	10	443	1
7275	496	2	10	444	1
7276	497	2	10	445	1
7277	498	2	10	446	1
7278	499	2	10	447	1
7279	500	2	10	448	1
7280	501	2	10	449	1
7281	502	2	10	450	1
7282	503	2	10	451	1
7283	504	2	10	452	1
7284	505	2	10	453	1
7285	506	2	10	454	1
7286	507	2	10	455	1
7287	508	2	10	456	1
7288	509	2	10	457	1
7289	510	2	10	458	1
7290	511	2	10	459	1
7291	512	2	10	460	1
7292	513	2	10	461	1
7293	514	2	10	462	1
7294	515	2	10	463	1
7295	516	2	10	464	1
7296	517	2	10	465	1
7297	518	2	10	466	1
7298	519	2	10	467	1
7299	520	2	10	468	1
7300	521	2	10	469	1
7301	522	2	10	470	1
7302	523	2	10	471	1
7303	524	2	10	472	1
7304	525	2	10	473	1
7305	526	2	10	474	1
7306	527	2	10	475	1
7307	528	2	10	476	1
7308	529	2	10	477	1
7309	530	2	10	478	1
7310	531	2	10	479	1
7311	532	2	10	480	1
7312	533	2	10	481	1
7313	534	2	10	482	1
7314	535	2	10	483	1
7315	536	2	10	484	1
7316	537	2	10	485	1
7317	538	2	10	486	1
7318	539	2	10	487	1
7319	540	2	10	488	1
7320	541	2	10	489	1
7321	542	2	10	490	1
7322	543	2	10	491	1
7323	544	2	10	492	1
7324	545	2	10	493	1
7325	546	2	10	494	1
7326	547	2	10	495	1
7327	548	2	10	496	1
7328	549	2	10	497	1
7329	550	2	10	498	1
7330	551	2	10	499	1
7331	552	2	10	500	1
7332	553	2	10	501	1
7333	554	2	10	502	1
7334	555	2	10	503	1
7335	556	2	10	504	1
7336	557	2	10	505	1
7337	558	2	10	506	1
7338	559	2	10	507	1
7339	560	2	10	508	1
7340	561	2	10	509	1
7341	562	2	10	510	1
7342	563	2	10	511	1
7343	564	2	10	512	1
7344	565	2	10	513	1
7345	566	2	10	514	1
7346	567	2	10	515	1
7347	568	2	10	516	1
7348	569	2	10	517	1
7349	570	2	10	518	1
7350	571	2	10	519	1
7351	572	2	10	520	1
7352	573	2	10	521	1
7353	574	2	10	522	1
7354	575	2	10	523	1
7355	576	2	10	524	1
7356	577	2	10	525	1
7357	578	2	10	526	1
7358	579	2	10	527	1
7359	580	2	10	528	1
7360	581	2	10	529	1
7361	582	2	10	530	1
7362	583	2	10	531	1
7363	584	2	10	532	1
7364	585	2	10	533	1
7365	586	2	10	534	1
7366	587	2	10	535	1
7367	588	2	10	536	1
7368	589	2	10	537	1
7369	590	2	10	538	1
7370	591	2	10	539	1
7371	592	2	10	540	1
7372	593	2	10	541	1
7373	594	2	10	542	1
7374	595	2	10	543	1
7375	596	2	10	544	1
7376	597	2	10	545	1
7377	598	2	10	546	1
7378	599	2	10	547	1
7379	600	2	10	548	1
7380	601	2	10	549	1
7381	602	2	10	550	1
7382	603	2	10	551	1
7383	604	2	10	552	1
7384	605	2	10	553	1
7385	606	2	10	554	1
7386	607	2	10	555	1
7387	608	2	10	556	1
7388	609	2	10	557	1
7389	610	2	10	558	1
7390	611	2	10	559	1
7391	612	2	10	560	1
7392	613	2	10	561	1
7393	614	2	10	562	1
7394	615	2	10	563	1
7395	616	2	10	564	1
7396	617	2	10	565	1
7397	618	2	10	566	1
7398	619	2	10	567	1
7399	620	2	10	568	1
7400	621	2	10	569	1
7401	622	2	10	570	1
7402	623	2	10	571	1
7403	624	2	10	572	1
7404	625	2	10	573	1
7405	626	2	10	574	1
7406	627	2	10	575	1
7407	628	2	10	576	1
7408	629	2	10	577	1
7409	630	2	10	578	1
7410	631	2	10	579	1
7411	632	2	10	580	1
7412	633	2	10	581	1
7413	634	2	10	582	1
7414	635	2	10	583	1
7415	636	2	10	584	1
7416	637	2	10	585	1
7417	638	2	10	586	1
7418	639	2	10	587	1
7419	640	2	10	588	1
7420	641	2	10	589	1
7421	642	2	10	590	1
7422	643	2	10	591	1
7423	644	2	10	592	1
7424	645	2	10	593	1
7425	646	2	10	594	1
7426	647	2	10	595	1
7427	648	2	10	596	1
7428	649	2	10	597	1
7429	650	2	10	598	1
7430	651	2	10	599	1
7431	652	2	10	600	1
7432	653	2	10	601	1
7433	654	2	10	602	1
7434	655	2	10	603	1
7435	656	2	10	604	1
7436	657	2	10	605	1
7437	658	2	10	606	1
7438	659	2	10	607	1
7439	660	2	10	608	1
7440	661	2	10	609	1
7441	662	2	10	610	1
7442	663	2	10	611	1
7443	664	2	10	612	1
7444	665	2	10	613	1
7445	666	2	10	614	1
7446	667	2	10	615	1
7447	668	2	10	616	1
7448	669	2	10	617	1
7449	670	2	10	618	1
7450	671	2	10	619	1
7451	672	2	10	620	1
7452	673	2	10	621	1
7453	674	2	10	622	1
7454	675	2	10	623	1
7455	676	2	10	624	1
7456	677	2	10	625	1
7457	678	2	10	626	1
7458	679	2	10	627	1
7459	680	2	10	628	1
7460	681	2	10	629	1
7461	682	2	10	630	1
7462	683	2	10	631	1
7463	684	2	10	632	1
7464	685	2	10	633	1
7465	686	2	10	634	1
7466	687	2	10	635	1
7467	688	2	10	636	1
7468	689	2	10	637	1
7469	690	2	10	638	1
7470	691	2	10	639	1
7471	692	2	10	640	1
7472	693	2	10	641	1
7473	694	2	10	642	1
7474	695	2	10	643	1
7475	696	2	10	644	1
7476	697	2	10	645	1
7477	698	2	10	646	1
7478	699	2	10	647	1
7479	700	2	10	648	1
7480	701	2	10	649	1
7481	702	2	10	650	1
7482	703	2	10	651	1
7483	704	2	10	652	1
7484	705	2	10	653	1
7485	706	2	10	654	1
7486	707	2	10	655	1
7487	708	2	10	656	1
7488	709	2	10	657	1
7489	710	2	10	658	1
7490	711	2	10	659	1
7491	712	2	10	660	1
7492	713	2	10	661	1
7493	714	2	10	662	1
7494	715	2	10	663	1
7495	716	2	10	664	1
7496	717	2	10	665	1
7497	718	2	10	666	1
7498	719	2	10	667	1
7499	720	2	10	668	1
7500	721	2	10	669	1
7501	722	2	10	670	1
7502	723	2	10	671	1
7503	724	2	10	672	1
7504	725	2	10	673	1
7505	726	2	10	674	1
7506	727	2	10	675	1
7507	728	2	10	676	1
7508	729	2	10	677	1
7509	730	2	10	678	1
7510	731	2	10	679	1
7511	732	2	10	680	1
7512	733	2	10	681	1
7513	734	2	10	682	1
7514	735	2	10	683	1
7515	736	2	10	684	1
7516	737	2	10	685	1
7517	738	2	10	686	1
7518	739	2	10	687	1
7519	740	2	10	688	1
7520	741	2	10	689	1
7521	742	2	10	690	1
7522	743	2	10	691	1
7523	744	2	10	692	1
7524	745	2	10	693	1
7525	746	2	10	694	1
7526	747	2	10	695	1
7527	748	2	10	696	1
7528	749	2	10	697	1
7529	750	2	10	698	1
7530	751	2	10	699	1
7531	752	2	10	700	1
7532	753	2	10	701	1
7533	754	2	10	702	1
7534	755	2	10	703	1
7535	756	2	10	704	1
7536	757	2	10	705	1
7537	758	2	10	706	1
7538	759	2	10	707	1
7539	760	2	10	708	1
7540	761	2	10	709	1
7541	762	2	10	710	1
7542	763	2	10	711	1
7543	764	2	10	712	1
7544	765	2	10	713	1
7545	766	2	10	714	1
7546	767	2	10	715	1
7547	768	2	10	716	1
7548	769	2	10	717	1
7549	770	2	10	718	1
7550	771	2	10	719	1
7551	772	2	10	720	1
7552	773	2	10	721	1
7553	774	2	10	722	1
7554	775	2	10	723	1
7555	776	2	10	724	1
7556	777	2	10	725	1
7557	778	2	10	726	1
7558	779	2	10	727	1
7559	780	2	10	728	1
7560	781	2	10	729	1
7561	782	2	10	730	1
7562	783	2	10	731	1
7563	784	2	10	732	1
7564	785	2	10	733	1
7565	786	2	10	734	1
7566	787	2	10	735	1
7567	788	2	10	736	1
7568	789	2	10	737	1
7569	790	2	10	738	1
7570	791	2	10	739	1
7571	792	2	10	740	1
7572	793	2	10	741	1
7573	794	2	10	742	1
7574	795	2	10	743	1
7575	796	2	10	744	1
7576	797	2	10	745	1
7577	798	2	10	746	1
7578	799	2	10	747	1
7579	800	2	10	748	1
7580	801	2	10	749	1
7581	802	2	10	750	1
7582	803	2	10	751	1
7583	804	2	10	752	1
7584	805	2	10	753	1
7585	806	2	10	754	1
7586	807	2	10	755	1
7587	808	2	10	756	1
7588	809	2	10	757	1
7589	810	2	10	758	1
7590	811	2	10	759	1
7591	812	2	10	760	1
7592	813	2	10	761	1
7593	814	2	10	762	1
7594	815	2	10	763	1
7595	816	2	10	764	1
7596	817	2	10	765	1
7597	818	2	10	766	1
7598	819	2	10	767	1
7599	820	2	10	768	1
7600	821	2	10	769	1
7601	822	2	10	770	1
7602	823	2	10	771	1
7603	824	2	10	772	1
7604	825	2	10	773	1
7605	826	2	10	774	1
7606	827	2	10	775	1
7607	828	2	10	776	1
7608	829	2	10	777	1
7609	830	2	10	778	1
7610	831	2	10	779	1
7611	832	2	10	780	1
7612	833	2	10	781	1
7613	834	2	10	782	1
7614	835	2	10	783	1
7615	836	2	10	784	1
7616	837	2	10	785	1
7617	838	2	10	786	1
7618	839	2	10	787	1
7619	840	2	10	788	1
7620	841	2	10	789	1
7621	842	2	10	790	1
7622	843	2	10	791	1
7623	844	2	10	792	1
7624	845	2	10	793	1
7625	846	2	10	794	1
7626	847	2	10	795	1
7627	848	2	10	796	1
7628	849	2	10	797	1
7629	850	2	10	798	1
7630	851	2	10	799	1
7631	852	2	10	800	1
7632	853	2	10	801	1
7633	854	2	10	802	1
7634	855	2	10	803	1
7635	856	2	10	804	1
7636	857	2	10	805	1
7637	858	2	10	806	1
7638	859	2	10	807	1
7639	860	2	10	808	1
7640	861	2	10	809	1
7641	862	2	10	810	1
7642	863	2	10	811	1
7643	864	2	10	812	1
7644	865	2	10	813	1
7645	866	2	10	814	1
7646	867	2	10	815	1
7647	868	2	10	816	1
7648	869	2	10	817	1
7649	870	2	10	818	1
7650	871	2	10	819	1
7651	872	2	10	820	1
7652	873	2	10	821	1
7653	874	2	10	822	1
7654	875	2	10	823	1
7655	876	2	10	824	1
7656	877	2	10	825	1
7657	878	2	10	826	1
7658	879	2	10	827	1
7659	880	2	10	828	1
7660	881	2	10	829	1
7661	882	2	10	830	1
7662	883	2	10	831	1
7663	884	2	10	832	1
7664	885	2	10	833	1
7665	886	2	10	834	1
7666	887	2	10	835	1
7667	888	2	10	836	1
7668	889	2	10	837	1
7669	890	2	10	838	1
7670	891	2	10	839	1
7671	892	2	10	840	1
7672	893	2	10	841	1
7673	894	2	10	842	1
7674	895	2	10	843	1
7675	896	2	10	844	1
7676	897	2	10	845	1
7677	898	2	10	846	1
7678	899	2	10	847	1
7679	900	2	10	848	1
7680	901	2	10	849	1
7681	902	2	10	850	1
7682	903	2	10	851	1
7683	904	2	10	852	1
7684	905	2	10	853	1
7685	906	2	10	854	1
7686	907	2	10	855	1
7687	908	2	10	856	1
7688	909	2	10	857	1
7689	910	2	10	858	1
7690	911	2	10	859	1
7691	912	2	10	860	1
7692	913	2	10	861	1
7693	914	2	10	862	1
7694	915	2	10	863	1
7695	916	2	10	864	1
7696	917	2	10	865	1
7697	918	2	10	866	1
7698	919	2	10	867	1
7699	920	2	10	868	1
7700	921	2	10	869	1
7701	922	2	10	870	1
7702	923	2	10	871	1
7703	924	2	10	872	1
7704	925	2	10	873	1
7705	926	2	10	874	1
7706	927	2	10	875	1
7707	928	2	10	876	1
7708	929	2	10	877	1
7709	930	2	10	878	1
7710	931	2	10	879	1
7711	932	2	10	880	1
7712	933	2	10	881	1
7713	934	2	10	882	1
7714	935	2	10	883	1
7715	936	2	10	884	1
7716	937	2	10	885	1
7717	938	2	10	886	1
7718	939	2	10	887	1
7719	940	2	10	888	1
7720	941	2	10	889	1
7721	942	2	10	890	1
7722	943	2	10	891	1
7723	944	2	10	892	1
7724	945	2	10	893	1
7725	946	2	10	894	1
7726	947	2	10	895	1
7727	948	2	10	896	1
7728	949	2	10	897	1
7729	950	2	10	898	1
7730	951	2	10	899	1
7731	952	2	10	900	1
7732	953	2	10	901	1
7733	954	2	10	902	1
7734	955	2	10	903	1
7735	956	2	10	904	1
7736	957	2	10	905	1
7737	958	2	10	906	1
7738	959	2	10	907	1
7739	960	2	10	908	1
7740	961	2	10	909	1
7741	962	2	10	910	1
7742	963	2	10	911	1
7743	964	2	10	912	1
7744	965	2	10	913	1
7745	966	2	10	914	1
7746	967	2	10	915	1
7747	968	2	10	916	1
7748	969	2	10	917	1
7749	970	2	10	918	1
7750	971	2	10	919	1
7751	972	2	10	920	1
7752	973	2	10	921	1
7753	974	2	10	922	1
7754	975	2	10	923	1
7755	976	2	10	924	1
7756	977	2	10	925	1
7757	978	2	10	926	1
7758	979	2	10	927	1
7759	980	2	10	928	1
7760	981	2	10	929	1
7761	982	2	10	930	1
7762	983	2	10	931	1
7763	984	2	10	932	1
7764	985	2	10	933	1
7765	986	2	10	934	1
7766	987	2	10	935	1
7767	988	2	10	936	1
7768	989	2	10	937	1
7769	990	2	10	938	1
7770	991	2	10	939	1
7771	992	2	10	940	1
7772	993	2	10	941	1
7773	994	2	10	942	1
7774	995	2	10	943	1
7775	996	2	10	944	1
7776	997	2	10	945	1
7777	998	2	10	946	1
7778	999	2	10	947	1
7779	1000	2	10	948	1
7780	1001	2	10	949	1
7781	1002	2	10	950	1
7782	1003	2	10	951	1
7783	1004	2	10	952	1
7784	1005	2	10	953	1
7785	1006	2	10	954	1
7786	1007	2	10	955	1
7787	1008	2	10	956	1
7788	1009	2	10	957	1
7789	1010	2	10	958	1
7790	1011	2	10	959	1
7791	1012	2	10	960	1
7792	1013	2	10	961	1
7793	1014	2	10	962	1
7794	1015	2	10	963	1
7795	1016	2	10	964	1
7796	1017	2	10	965	1
7797	1018	2	10	966	1
7798	1019	2	10	967	1
7799	1020	2	10	968	1
7800	1021	2	10	969	1
7801	1022	2	10	970	1
7802	1023	2	10	971	1
7803	1024	2	10	972	1
7804	1025	2	10	973	1
7805	1026	2	10	974	1
7806	1027	2	10	975	1
7807	1028	2	10	976	1
7808	1029	2	10	977	1
7809	1030	2	10	978	1
7810	1031	2	10	979	1
7811	1032	2	10	980	1
7812	1033	2	10	981	1
7813	1034	2	10	982	1
7814	1035	2	10	983	1
7815	1036	2	10	984	1
7816	1037	2	10	985	1
7817	1038	2	10	986	1
7818	1039	2	10	987	1
7819	1040	2	10	988	1
7820	1041	2	10	989	1
7821	1042	2	10	990	1
7822	1043	2	10	991	1
7823	1044	2	10	992	1
7824	1045	2	10	993	1
7825	1046	2	10	994	1
7826	1047	2	10	995	1
7827	1048	2	10	996	1
7828	1049	2	10	997	1
7829	1050	2	10	998	1
7830	1051	2	10	999	1
7831	1052	2	10	1000	1
7832	1053	2	10	1001	1
7833	1054	2	10	1002	1
7834	1055	2	10	1003	1
7835	1056	2	10	1004	1
7836	1057	2	10	1005	1
7837	1058	2	10	1006	1
7838	1059	2	10	1007	1
7839	1060	2	10	1008	1
7840	1061	2	10	1009	1
7841	1062	2	10	1010	1
7842	1063	2	10	1011	1
7843	1064	2	10	1012	1
7844	1065	2	10	1013	1
7845	1066	2	10	1014	1
7846	1067	2	10	1015	1
7847	1068	2	10	1016	1
7848	1069	2	10	1017	1
7849	1070	2	10	1018	1
7850	1071	2	10	1019	1
7851	1072	2	10	1020	1
7852	1073	2	10	1021	1
7853	1074	2	10	1022	1
7854	1075	2	10	1023	1
7855	1076	2	10	1024	1
7856	1077	2	10	1025	1
7857	1078	2	10	1026	1
7858	1079	2	10	1027	1
7859	1080	2	10	1028	1
7860	1081	2	10	1029	1
7861	1082	2	10	1030	1
7862	1083	2	10	1031	1
7863	1084	2	10	1032	1
7864	1085	2	10	1033	1
7865	1086	2	10	1034	1
7866	1087	2	10	1035	1
7867	1088	2	10	1036	1
7868	1089	2	10	1037	1
7869	1090	2	10	1038	1
7870	1091	2	10	1039	1
7871	1092	2	10	1040	1
7872	1093	2	10	1041	1
7873	1094	2	10	1042	1
7874	1095	2	10	1043	1
7875	1096	2	10	1044	1
7876	1097	2	10	1045	1
7877	1098	2	10	1046	1
7878	1099	2	10	1047	1
7879	1100	2	10	1048	1
7880	1101	2	10	1049	1
7881	1102	2	10	1050	1
7882	1103	2	10	1051	1
7883	1104	2	10	1052	1
7884	1105	2	10	1053	1
7885	1106	2	10	1054	1
7886	1107	2	10	1055	1
7887	1108	2	10	1056	1
7888	1109	2	10	1057	1
7889	1110	2	10	1058	1
7890	1111	2	10	1059	1
7891	1112	2	10	1060	1
7892	1113	2	10	1061	1
7893	1114	2	10	1062	1
7894	1115	2	10	1063	1
7895	1116	2	10	1064	1
7896	1117	2	10	1065	1
7897	1118	2	10	1066	1
7898	1119	2	10	1067	1
7899	1120	2	10	1068	1
7900	1121	2	10	1069	1
7901	1122	2	10	1070	1
7902	1123	2	10	1071	1
7903	1124	2	10	1072	1
790400	112500	2	10	10730	1
790401	112501	2	10	10731	1
790500	112600	2	10	10740	1
790501	112601	2	10	10741	1
790502	112602	2	10	10742	1
790507	112607	2	10	10746	1
790508	112608	2	10	10747	1
790509	112609	2	10	10748	1
790600	112700	1	39	8500	1
790700	112800	2	10	10750	1
790800	112900	2	10	10760	1
790801	112901	2	10	10761	1
790802	112902	2	10	10762	1
790900	113000	2	10	10770	1
790901	113001	2	10	10771	1
790902	113002	2	10	10772	1
790903	113003	2	10	10773	1
790904	113004	2	10	10774	1
790905	113005	2	10	10775	1
790906	113006	2	10	10776	1
790907	113007	2	10	10777	1
790908	113008	2	10	10778	1
790909	113009	2	10	10779	1
790910	113010	2	10	10780	1
790911	113011	2	10	10781	1
791000	114600	2	10	10940	1
791001	114601	4	10	10940	1
791002	114602	2	10	10941	1
791003	114603	4	10	10941	1
791004	114604	2	10	10942	1
791005	114605	4	10	10942	1
791006	114606	2	10	10943	1
791007	114607	4	10	10943	1
791008	114608	2	10	10944	1
791009	114609	4	10	10944	1
791010	114610	2	10	10945	1
791011	114611	4	10	10945	1
791012	114612	2	10	10946	1
791013	114613	4	10	10946	1
791014	114614	2	10	10947	1
791015	114615	4	10	10947	1
791016	114616	2	10	10948	1
791017	114617	4	10	10948	1
791018	114618	2	10	10949	1
791019	114619	4	10	10949	1
791020	114620	2	10	10950	1
791021	114621	4	10	10950	1
791022	114622	2	10	10951	1
791023	114623	4	10	10951	1
791024	114624	2	10	10952	1
791025	114625	4	10	10952	1
791026	114626	2	10	10953	1
791027	114627	4	10	10953	1
791028	114628	2	10	10954	1
791029	114629	4	10	10954	1
791030	114630	2	10	10955	1
791031	114631	4	10	10955	1
791032	114632	2	10	10956	1
791033	114633	4	10	10956	1
791100	114700	1	39	8600	1
\.


--
-- Data for Name: contact_type; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY contact_type (id, entity_id, is_primary, optlock) FROM stdin;
1	\N	\N	0
2	1	1	0
3	2	1	0
4	1	0	0
\.


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY country (id, code) FROM stdin;
1	AF
2	AL
3	DZ
4	AS
5	AD
6	AO
7	AI
8	AQ
9	AG
10	AR
11	AM
12	AW
13	AU
14	AT
15	AZ
16	BS
17	BH
18	BD
19	BB
20	BY
21	BE
22	BZ
23	BJ
24	BM
25	BT
26	BO
27	BA
28	BW
29	BV
30	BR
31	IO
32	BN
33	BG
34	BF
35	BI
36	KH
37	CM
38	CA
39	CV
40	KY
41	CF
42	TD
43	CL
44	CN
45	CX
46	CC
47	CO
48	KM
49	CG
50	CK
51	CR
52	CI
53	HR
54	CU
55	CY
56	CZ
57	CD
58	DK
59	DJ
60	DM
61	DO
62	TP
63	EC
64	EG
65	SV
66	GQ
67	ER
68	EE
69	ET
70	FK
71	FO
72	FJ
73	FI
74	FR
75	GF
76	PF
77	TF
78	GA
79	GM
80	GE
81	DE
82	GH
83	GI
84	GR
85	GL
86	GD
87	GP
88	GU
89	GT
90	GN
91	GW
92	GY
93	HT
94	HM
95	HN
96	HK
97	HU
98	IS
99	IN
100	ID
101	IR
102	IQ
103	IE
104	IL
105	IT
106	JM
107	JP
108	JO
109	KZ
110	KE
111	KI
112	KR
113	KW
114	KG
115	LA
116	LV
117	LB
118	LS
119	LR
120	LY
121	LI
122	LT
123	LU
124	MO
125	MK
126	MG
127	MW
128	MY
129	MV
130	ML
131	MT
132	MH
133	MQ
134	MR
135	MU
136	YT
137	MX
138	FM
139	MD
140	MC
141	MN
142	MS
143	MA
144	MZ
145	MM
146	NA
147	NR
148	NP
149	NL
150	AN
151	NC
152	NZ
153	NI
154	NE
155	NG
156	NU
157	NF
158	KP
159	MP
160	NO
161	OM
162	PK
163	PW
164	PA
165	PG
166	PY
167	PE
168	PH
169	PN
170	PL
171	PT
172	PR
173	QA
174	RE
175	RO
176	RU
177	RW
178	WS
179	SM
180	ST
181	SA
182	SN
183	YU
184	SC
185	SL
186	SG
187	SK
188	SI
189	SB
190	SO
191	ZA
192	GS
193	ES
194	LK
195	SH
196	KN
197	LC
198	PM
199	VC
200	SD
201	SR
202	SJ
203	SZ
204	SE
205	CH
206	SY
207	TW
208	TJ
209	TZ
210	TH
211	TG
212	TK
213	TO
214	TT
215	TN
216	TR
217	TM
218	TC
219	TV
220	UG
221	UA
222	AE
223	UK
224	US
225	UM
226	UY
227	UZ
228	VU
229	VA
230	VE
231	VN
232	VG
233	VI
234	WF
235	YE
236	ZM
237	ZW
\.


--
-- Data for Name: credit_card; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY credit_card (id, cc_number, cc_number_plain, cc_expiry, name, cc_type, deleted, gateway_key, optlock) FROM stdin;
1	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	5b33bc3de451b536128d58a67e34cc69	2	0	\N	1
2	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	5b33bc3de451b536128d58a67e34cc69	2	0	\N	1
3	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	5b33bc3de451b536128d58a67e34cc69	2	0	\N	1
13	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
14	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
15	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
16	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
17	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
18	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
19	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
20	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
21	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
22	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
23	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
24	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
25	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
26	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
27	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
28	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
29	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
30	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
31	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
32	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
33	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
34	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
35	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
36	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
37	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
38	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
39	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
40	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
41	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
42	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
43	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
44	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
45	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
46	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
47	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
48	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
49	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
50	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
51	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
52	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
53	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
54	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
55	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
56	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
57	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
58	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
59	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
60	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
61	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
62	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
63	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
64	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
65	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
66	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
67	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
68	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
69	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
70	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
71	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
72	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
73	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
74	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
75	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
76	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
77	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
78	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
79	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
80	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
81	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
82	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
83	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
84	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
85	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
86	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
87	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
88	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
89	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
90	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
91	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
92	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
93	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
94	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
95	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
96	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
97	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
98	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
99	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
100	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
101	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
102	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
103	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
104	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
105	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
106	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
107	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
108	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
109	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
110	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
111	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
112	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
113	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
114	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
115	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
116	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
117	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
118	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
119	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
120	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
121	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
122	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
123	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
124	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
125	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
126	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
127	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
128	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
129	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
130	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
131	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
132	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
133	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
134	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
135	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
136	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
137	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
138	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
139	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
140	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
141	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
142	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
143	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
144	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
145	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
146	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
147	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
148	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
149	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
150	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
151	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
152	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
153	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
154	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
155	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
156	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
157	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
158	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
159	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
160	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
161	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
162	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
163	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
164	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
165	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
166	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
167	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
168	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
169	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
170	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
171	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
172	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
173	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
174	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
175	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
176	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
177	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
178	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
179	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
180	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
181	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
182	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
183	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
184	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
185	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
186	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
187	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
188	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
189	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
190	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
191	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
192	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
193	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
194	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
195	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
196	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
197	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
198	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
199	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
200	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
201	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
202	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
203	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
204	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
205	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
206	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
207	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
208	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
209	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
210	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
211	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
212	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
213	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
214	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
215	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
216	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
217	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
218	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
219	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
220	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
221	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
222	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
223	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
224	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
225	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
226	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
227	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
228	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
229	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
230	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
231	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
232	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
233	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
234	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
235	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
236	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
237	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
238	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
239	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
240	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
241	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
242	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
243	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
244	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
245	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
246	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
247	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
248	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
249	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
250	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
251	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
252	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
253	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
254	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
255	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
256	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
257	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
258	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
259	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
260	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
261	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
262	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
263	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
264	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
265	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
266	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
267	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
268	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
269	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
270	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
271	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
272	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
273	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
274	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
275	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
276	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
277	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
278	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
279	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
280	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
281	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
282	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
283	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
284	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
285	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
286	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
287	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
288	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
289	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
290	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
291	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
292	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
293	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
294	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
295	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
296	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
297	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
298	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
299	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
300	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2000-10-10	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
301	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
302	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
303	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
304	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
305	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
306	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
307	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
308	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
309	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
310	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
311	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
312	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
313	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
314	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
315	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
316	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
317	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
318	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
319	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
320	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
321	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
322	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
323	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
324	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
325	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
326	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
327	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
328	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
329	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
330	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
331	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
332	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
333	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
334	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
335	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
336	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
337	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
338	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
339	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
340	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
341	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
342	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
343	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
344	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
345	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
346	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
347	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
348	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
349	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
350	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
351	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
352	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
353	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
354	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
355	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
356	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
357	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
358	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
359	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
360	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
361	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
362	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
363	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
364	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
365	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
366	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
367	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
368	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
369	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
370	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
371	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
372	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
373	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
374	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
375	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
376	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
377	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
378	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
379	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
380	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
381	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
382	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
383	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
384	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
385	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
386	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
387	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
388	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
389	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
390	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
391	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
392	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
393	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
394	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
395	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
396	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
397	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
398	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
399	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
400	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
401	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
402	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
403	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
404	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
405	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
406	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
407	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
408	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
409	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
410	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
411	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
412	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
413	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
414	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
415	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
416	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
417	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
418	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
419	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
420	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
421	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
422	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
423	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
424	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
425	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
426	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
427	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
428	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
429	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
430	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
431	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
432	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
433	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
434	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
435	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
436	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
437	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
438	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
439	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
440	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
441	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
442	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
443	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
444	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
445	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
446	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
447	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
448	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
449	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
450	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
451	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
452	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
453	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
454	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
455	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
456	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
457	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
458	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
459	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
460	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
461	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
462	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
463	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
464	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
465	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
466	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
467	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
468	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
469	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
470	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
471	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
472	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
473	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
474	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
475	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
476	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
477	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
478	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
479	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
480	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
481	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
482	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
483	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
484	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
485	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
486	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
487	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
488	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
489	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
490	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
491	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
492	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
493	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
494	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
495	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
496	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
497	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
498	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
499	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
500	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
501	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
502	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
503	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
504	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
505	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
506	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
507	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
508	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
509	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
510	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
511	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
512	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
513	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
514	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
515	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
516	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
517	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
518	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
519	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
520	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
521	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
522	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
523	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
524	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
525	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
526	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
527	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
528	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
529	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
530	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
531	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
532	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
533	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
534	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
535	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
536	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
537	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
538	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
539	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
540	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
541	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
542	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
543	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
544	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
545	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
546	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
547	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
548	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
549	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
550	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
551	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
552	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
553	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
554	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
555	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
556	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
557	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
558	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
559	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
560	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
561	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
562	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
563	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
564	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
565	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
566	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
567	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
568	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
569	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
570	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
571	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
572	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
573	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
574	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
575	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
576	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
577	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
578	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
579	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
580	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
581	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
582	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
583	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
584	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
585	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
586	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
587	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
588	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
589	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
590	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
591	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
592	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
593	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
594	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
595	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
596	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
597	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
598	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
599	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
600	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
601	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
602	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
603	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
604	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
605	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
606	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
607	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
608	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
609	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
610	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
611	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
612	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
613	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
614	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
615	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
616	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
617	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
618	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
619	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
620	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
621	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
622	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
623	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
624	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
625	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
626	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
627	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
628	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
629	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
630	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
631	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
632	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
633	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
634	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
635	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
636	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
637	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
638	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
639	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
640	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
641	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
642	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
643	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
644	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
645	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
646	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
647	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
648	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
649	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
650	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
651	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
652	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
653	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
654	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
655	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
656	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
657	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
658	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
659	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
660	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
661	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
662	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
663	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
664	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
665	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
666	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
667	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
668	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
669	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
670	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
671	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
672	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
673	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
674	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
675	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
676	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
677	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
678	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
679	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
680	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
681	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
682	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
683	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
684	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
685	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
686	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
687	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
688	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
689	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
690	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
691	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
692	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
693	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
694	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
695	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
696	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
697	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
698	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
699	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
700	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
701	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
702	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
703	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
704	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
705	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
706	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
707	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
708	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
709	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
710	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
711	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
712	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
713	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
714	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
715	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
716	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
717	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
718	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
719	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
720	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
721	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
722	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
723	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
724	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
725	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
726	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
727	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
728	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
729	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
730	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
731	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
732	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
733	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
734	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
735	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
736	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
737	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
738	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
739	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
740	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
741	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
742	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
743	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
744	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
745	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
746	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
747	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
748	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
749	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
750	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
751	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
752	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
753	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
754	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
755	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
756	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
757	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
758	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
759	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
760	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
761	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
762	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
763	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
764	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
765	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
766	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
767	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
768	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
769	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
770	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
771	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
772	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
773	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
774	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
775	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
776	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
777	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
778	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
779	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
780	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
781	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
782	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
783	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
784	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
785	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
786	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
787	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
788	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
789	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
790	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
791	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
792	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
793	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
794	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
795	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
796	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
797	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
798	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
799	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
800	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
801	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
802	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
803	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
804	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
805	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
806	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
807	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
808	a14159733ae22ce59f51625df2bd1c0649788742506e5046	1152	2100-09-12	4e176666a76ca846f70bcfb531675281	2	0	\N	2
809	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
810	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
811	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
812	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
813	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
814	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
815	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
816	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
817	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
818	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
819	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
820	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
821	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
822	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
823	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
824	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
825	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
826	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
827	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
828	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
829	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
830	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
831	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
832	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
833	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
834	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
835	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
836	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
837	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
838	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
839	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
840	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
841	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
842	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
843	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
844	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
845	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
846	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
847	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
848	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
849	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
850	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
851	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
852	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
853	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
854	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
855	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
856	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
857	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
858	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
859	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
860	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
861	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
862	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
863	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
864	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
865	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
866	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
867	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
868	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
869	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
870	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
871	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
872	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
873	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
874	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
875	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
876	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
877	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
878	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
879	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
880	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
881	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
882	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
883	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
884	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
885	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
886	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
887	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
888	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
889	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
890	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
891	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
892	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
893	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
894	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
895	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
896	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
897	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
898	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
899	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
900	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
901	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
902	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
903	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
904	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
905	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
906	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
907	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
908	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
909	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
910	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
911	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
912	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
913	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
914	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
915	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
916	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
917	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
918	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
919	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
920	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
921	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
922	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
923	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
924	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
925	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
926	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
927	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
928	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
929	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
930	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
931	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
932	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
933	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
934	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
935	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
936	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
937	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
938	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
939	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
940	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
941	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
942	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
943	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
944	1411cc96f356985d8d08b6b6a0e64c3b898f4d626891ac18	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
945	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
946	f82a46e8a554c7fcd8ce7d60ced0b87f8f33d12d36d2b62d	5100	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	3
947	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
948	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
949	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
950	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
951	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
952	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
953	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
954	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
955	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
956	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
957	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
958	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
959	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
960	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
961	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
962	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
963	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
964	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
965	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
966	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
967	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
968	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
969	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
970	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
971	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
972	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
973	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
974	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
975	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
976	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
977	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
978	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
979	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
980	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
981	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
982	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
983	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
984	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
985	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
986	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
987	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
988	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
989	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
990	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
991	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
992	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
993	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
994	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
995	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
996	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
997	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
998	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
999	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
1000	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
1001	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
1002	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
1003	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
1004	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
1005	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
1006	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
1007	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
1008	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
1009	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
1010	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
1011	a14159733ae22ce5191aa6581adbba919b5a2c13644c41d8	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
1012	a14159733ae22ce59f51625df2bd1c0649788742506e5046	\N	2100-09-12	ea4d589626fcac984227f4657e3ec7b3	2	0	\N	1
1013	1411cc96f356985d8d08b6b6a0e64c3b898f4d626891ac18	\N	2100-09-12	\N	2	0	\N	1
101300	9cda913406c15ad25dc3601f8e1baf66	2222	2100-12-01	5064e904bdf462834a9a6ae961d7f8cfdb7296a638472486	2	0	\N	0
101301	9cda913406c15ad25dc3601f8e1baf66	2222	2100-12-01	5064e904bdf462834a9a6ae961d7f8cf6dfff96e1e08386c	2	0	\N	0
101400	a14159733ae22ce59f51625df2bd1c0649788742506e5046	1152	2100-09-01	09a86cc260cf65aa620eebea721886a0	2	0	\N	0
101401	a14159733ae22ce59f51625df2bd1c0649788742506e5046	1152	2100-09-01	e8b96c5abe318acf5c4e84e2b8452c25	2	0	\N	0
101500	a14159733ae22ce59f51625df2bd1c0649788742506e5046	1152	2011-12-01	e0c85a45dff5de33672c266ada39c0daa29b67082f45f344	2	0	\N	0
\.


--
-- Data for Name: currency; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY currency (id, symbol, code, country_code) FROM stdin;
1	US$	USD	US
2	C$	CAD	CA
3	&#8364;	EUR	EU
4	&#165;	JPY	JP
5	&#163;	GBP	UK
6	&#8361;	KRW	KR
7	Sf	CHF	CH
8	SeK	SEK	SE
9	S$	SGD	SG
10	M$	MYR	MY
11	$	AUD	AU
12	B$	BND	BN
\.


--
-- Data for Name: currency_entity_map; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY currency_entity_map (currency_id, entity_id) FROM stdin;
1	2
1	1
3	1
\.


--
-- Data for Name: currency_exchange; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY currency_exchange (id, entity_id, currency_id, rate, create_datetime, optlock) FROM stdin;
1	0	2	1.3250000000	2004-03-09 00:00:00	1
2	0	3	0.8118000000	2004-03-09 00:00:00	1
3	0	4	111.4000000000	2004-03-09 00:00:00	1
4	0	5	0.5479000000	2004-03-09 00:00:00	1
5	0	6	1171.0000000000	2004-03-09 00:00:00	1
6	0	7	1.2300000000	2004-07-06 00:00:00	1
7	0	8	7.4700000000	2004-07-06 00:00:00	1
10	0	9	1.6800000000	2004-10-12 00:00:00	1
11	0	10	3.8000000000	2004-10-12 00:00:00	1
25	0	11	1.2880000000	2007-01-25 00:00:00	1
250	1	11	1.5000000000	2008-11-28 14:32:16.652	0
251	1	12	0.7865960000	2011-02-08 00:00:00	1
252	0	12	0.7865960000	2011-02-09 00:00:00	0
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY customer (id, user_id, partner_id, referral_fee_paid, invoice_delivery_method_id, notes, auto_payment_type, due_date_unit_id, due_date_value, df_fm, parent_id, is_parent, exclude_aging, invoice_child, current_order_id, optlock, balance_type, dynamic_balance, credit_limit, auto_recharge) FROM stdin;
2	13	\N	0	1	\N	1	\N	\N	\N	\N	0	0	\N	\N	1	1	\N	\N	\N
12	23	\N	0	1	\N	1	3	\N	0	\N	0	0	\N	\N	1	1	\N	\N	\N
22	33	\N	0	1	\N	1	\N	\N	\N	\N	0	0	\N	\N	1	1	\N	\N	\N
32	43	\N	0	1	\N	1	\N	\N	\N	\N	1	0	\N	\N	1	1	\N	\N	\N
42	53	\N	0	1	\N	1	3	\N	0	\N	0	0	\N	\N	1	1	\N	\N	\N
52	63	\N	0	1	\N	1	3	\N	0	\N	0	0	\N	\N	1	1	\N	\N	\N
62	73	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
63	74	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
64	75	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
65	76	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
66	77	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
67	78	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
68	79	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
69	80	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
70	81	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
71	82	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
72	83	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
73	84	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
74	85	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
75	86	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
76	87	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
77	88	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
78	89	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
79	90	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
80	91	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
81	92	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
82	93	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
83	94	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
84	95	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
85	96	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
86	97	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
87	98	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
88	99	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
89	100	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
90	101	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
91	102	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
92	103	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
93	104	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
94	105	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
95	106	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
96	107	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
97	108	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
98	109	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
99	110	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
100	111	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
101	112	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
102	113	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
103	114	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
104	115	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
105	116	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
106	117	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
107	118	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
108	119	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
109	120	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
111	122	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
112	123	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
113	124	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
114	125	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
116	127	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
117	128	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
118	129	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
119	130	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
120	131	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
121	132	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
122	133	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
123	134	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
124	135	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
125	136	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
126	137	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
127	138	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
128	139	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
129	140	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
130	141	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
131	142	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
132	143	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
133	144	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
134	145	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
135	146	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
136	147	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
137	148	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
138	149	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
139	150	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
140	151	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
141	152	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
142	153	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
143	154	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
144	155	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
145	156	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
146	157	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
147	158	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
148	159	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
149	160	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
150	161	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
151	162	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
152	163	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
153	164	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
154	165	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
155	166	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
156	167	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
157	168	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
158	169	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
159	170	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
160	171	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
161	172	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
162	173	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
163	174	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
164	175	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
165	176	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
166	177	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
167	178	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
168	179	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
169	180	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
170	181	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
171	182	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
172	183	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
173	184	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
115	126	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	2	1	0.0000000000	0.0000000000	\N
110	121	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	2	1	0.0000000000	0.0000000000	\N
174	185	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
175	186	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
176	187	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
177	188	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
178	189	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
179	190	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
180	191	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
181	192	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
182	193	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
183	194	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
184	195	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
185	196	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
186	197	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
187	198	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
188	199	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
189	200	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
190	201	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
191	202	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
192	203	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
193	204	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
194	205	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
195	206	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
196	207	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
197	208	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
198	209	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
199	210	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
200	211	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
201	212	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
202	213	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
203	214	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
204	215	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
205	216	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
206	217	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
207	218	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
208	219	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
209	220	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
210	221	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
211	222	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
212	223	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
213	224	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
214	225	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
215	226	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
216	227	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
217	228	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
218	229	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
219	230	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
220	231	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
221	232	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
222	233	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
223	234	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
224	235	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
225	236	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
226	237	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
227	238	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
228	239	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
229	240	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
230	241	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
231	242	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
232	243	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
233	244	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
234	245	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
235	246	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
236	247	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
237	248	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
238	249	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
239	250	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
240	251	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
241	252	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
242	253	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
243	254	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
244	255	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
245	256	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
246	257	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
247	258	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
248	259	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
249	260	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
250	261	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
251	262	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
252	263	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
253	264	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
254	265	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
255	266	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
256	267	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
257	268	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
258	269	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
259	270	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
260	271	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
261	272	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
262	273	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
263	274	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
264	275	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
265	276	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
266	277	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
267	278	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
268	279	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
269	280	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
270	281	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
271	282	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
272	283	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
273	284	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
274	285	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
275	286	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
276	287	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
277	288	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
278	289	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
279	290	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
280	291	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
281	292	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
282	293	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
283	294	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
284	295	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
285	296	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
286	297	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
287	298	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
288	299	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
289	300	\N	\N	3	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
290	301	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
291	302	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
292	303	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
293	304	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
294	305	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
295	306	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
296	307	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
297	308	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
298	309	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
299	310	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
300	311	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
301	312	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
302	313	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
303	314	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
304	315	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
305	316	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
306	317	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
307	318	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
308	319	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
309	320	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
310	321	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
311	322	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
312	323	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
313	324	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
314	325	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
315	326	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
316	327	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
317	328	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
318	329	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
319	330	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
320	331	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
321	332	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
322	333	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
323	334	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
324	335	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
325	336	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
326	337	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
327	338	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
328	339	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
329	340	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
330	341	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
331	342	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
332	343	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
333	344	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
334	345	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
335	346	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
336	347	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
337	348	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
338	349	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
339	350	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
340	351	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
341	352	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
342	353	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
343	354	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
344	355	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
345	356	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
346	357	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
347	358	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
348	359	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
349	360	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
350	361	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
351	362	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
352	363	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
353	364	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
354	365	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
355	366	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
356	367	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
357	368	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
358	369	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
359	370	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
360	371	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
361	372	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
362	373	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
363	374	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
364	375	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
365	376	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
366	377	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
367	378	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
368	379	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
369	380	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
370	381	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
371	382	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
372	383	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
373	384	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
374	385	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
375	386	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
376	387	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
377	388	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
378	389	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
379	390	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
380	391	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
381	392	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
382	393	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
383	394	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
384	395	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
385	396	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
386	397	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
387	398	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
388	399	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
389	400	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
390	401	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
391	402	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
392	403	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
393	404	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
394	405	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
395	406	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
396	407	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
397	408	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
398	409	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
399	410	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
400	411	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
401	412	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
402	413	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
403	414	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
404	415	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
405	416	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
406	417	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
407	418	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
408	419	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
409	420	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
410	421	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
411	422	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
412	423	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
413	424	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
414	425	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
415	426	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
416	427	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
417	428	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
418	429	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
419	430	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
420	431	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
421	432	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
422	433	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
423	434	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
424	435	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
425	436	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
426	437	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
427	438	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
428	439	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
429	440	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
430	441	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
431	442	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
432	443	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
433	444	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
434	445	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
435	446	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
436	447	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
437	448	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
438	449	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
439	450	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
440	451	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
441	452	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
442	453	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
443	454	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
444	455	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
445	456	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
446	457	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
447	458	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
448	459	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
449	460	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
450	461	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
451	462	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
452	463	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
453	464	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
454	465	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
455	466	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
456	467	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
457	468	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
458	469	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
459	470	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
460	471	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
461	472	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
462	473	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
463	474	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
464	475	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
465	476	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
466	477	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
467	478	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
468	479	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
469	480	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
470	481	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
471	482	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
472	483	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
473	484	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
474	485	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
475	486	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
476	487	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
477	488	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
478	489	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
479	490	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
480	491	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
481	492	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
482	493	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
483	494	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
484	495	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
485	496	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
486	497	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
487	498	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
488	499	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
489	500	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
490	501	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
491	502	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
492	503	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
493	504	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
494	505	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
495	506	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
496	507	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
497	508	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
498	509	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
499	510	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
500	511	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
501	512	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
502	513	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
503	514	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
504	515	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
505	516	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
506	517	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
507	518	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
508	519	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
509	520	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
510	521	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
511	522	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
512	523	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
513	524	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
514	525	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
515	526	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
516	527	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
517	528	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
518	529	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
519	530	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
520	531	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
521	532	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
522	533	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
523	534	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
524	535	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
525	536	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
526	537	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
527	538	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
528	539	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
529	540	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
530	541	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
531	542	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
532	543	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
533	544	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
534	545	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
535	546	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
536	547	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
537	548	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
538	549	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
539	550	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
540	551	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
541	552	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
542	553	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
543	554	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
544	555	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
545	556	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
546	557	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
547	558	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
548	559	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
549	560	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
550	561	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
551	562	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
552	563	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
553	564	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
554	565	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
555	566	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
556	567	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
557	568	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
558	569	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
559	570	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
560	571	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
561	572	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
562	573	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
563	574	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
564	575	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
565	576	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
566	577	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
567	578	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
568	579	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
569	580	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
570	581	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
571	582	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
572	583	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
573	584	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
574	585	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
575	586	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
576	587	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
577	588	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
578	589	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
579	590	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
580	591	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
581	592	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
582	593	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
583	594	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
584	595	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
585	596	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
586	597	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
587	598	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
588	599	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
589	600	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
590	601	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
591	602	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
592	603	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
593	604	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
594	605	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
595	606	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
596	607	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
597	608	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
598	609	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
599	610	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
600	611	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
601	612	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
602	613	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
603	614	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
604	615	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
605	616	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
606	617	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
607	618	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
608	619	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
609	620	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
610	621	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
611	622	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
612	623	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
613	624	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
614	625	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
615	626	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
616	627	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
617	628	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
618	629	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
619	630	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
620	631	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
621	632	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
622	633	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
623	634	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
624	635	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
625	636	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
626	637	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
627	638	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
628	639	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
629	640	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
630	641	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
631	642	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
632	643	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
633	644	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
634	645	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
635	646	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
636	647	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
637	648	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
638	649	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
639	650	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
640	651	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
641	652	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
642	653	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
643	654	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
644	655	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
645	656	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
646	657	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
647	658	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
648	659	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
649	660	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
650	661	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
651	662	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
652	663	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
653	664	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
654	665	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
655	666	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
656	667	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
657	668	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
658	669	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
659	670	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
660	671	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
661	672	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
662	673	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
663	674	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
664	675	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
665	676	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
666	677	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
667	678	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
668	679	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
669	680	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
670	681	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
671	682	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
672	683	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
673	684	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
674	685	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
675	686	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
676	687	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
677	688	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
678	689	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
679	690	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
680	691	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
681	692	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
682	693	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
683	694	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
684	695	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
685	696	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
686	697	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
687	698	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
688	699	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
689	700	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
690	701	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
691	702	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
692	703	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
693	704	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
694	705	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
695	706	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
696	707	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
697	708	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
698	709	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
699	710	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
700	711	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
701	712	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
702	713	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
703	714	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
704	715	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
705	716	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
706	717	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
707	718	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
708	719	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
709	720	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
710	721	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
711	722	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
712	723	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
713	724	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
714	725	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
715	726	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
716	727	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
717	728	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
718	729	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
719	730	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
720	731	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
721	732	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
722	733	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
723	734	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
724	735	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
725	736	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
726	737	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
727	738	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
728	739	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
729	740	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
730	741	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
731	742	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
732	743	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
733	744	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
734	745	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
735	746	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
736	747	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
737	748	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
738	749	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
739	750	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
740	751	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
741	752	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
742	753	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
743	754	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
744	755	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
745	756	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
746	757	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
747	758	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
748	759	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
749	760	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
750	761	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
751	762	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
752	763	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
753	764	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
754	765	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
755	766	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
756	767	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
757	768	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
758	769	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
759	770	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
760	771	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
761	772	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
762	773	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
763	774	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
764	775	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
765	776	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
766	777	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
767	778	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
768	779	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
769	780	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
770	781	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
771	782	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
772	783	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
773	784	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
774	785	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
775	786	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
776	787	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
777	788	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
778	789	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
779	790	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
780	791	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
781	792	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
782	793	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
783	794	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
784	795	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
785	796	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
786	797	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
787	798	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
788	799	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
789	800	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
790	801	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
791	802	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
792	803	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
793	804	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
794	805	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
795	806	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
796	807	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
797	808	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
798	809	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
799	810	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
800	811	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
801	812	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
802	813	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
803	814	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
804	815	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
805	816	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
806	817	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
807	818	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
808	819	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
809	820	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
810	821	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
811	822	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
812	823	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
813	824	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
814	825	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
815	826	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
816	827	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
817	828	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
818	829	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
819	830	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
820	831	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
821	832	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
822	833	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
823	834	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
824	835	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
825	836	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
826	837	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
827	838	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
828	839	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
829	840	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
830	841	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
831	842	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
832	843	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
833	844	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
834	845	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
835	846	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
836	847	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
837	848	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
838	849	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
839	850	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
840	851	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
841	852	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
842	853	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
843	854	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
844	855	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
845	856	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
846	857	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
847	858	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
848	859	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
849	860	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
850	861	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
851	862	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
852	863	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
853	864	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
854	865	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
855	866	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
856	867	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
857	868	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
858	869	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
859	870	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
860	871	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
861	872	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
862	873	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
863	874	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
864	875	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
865	876	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
866	877	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
867	878	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
868	879	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
869	880	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
870	881	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
871	882	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
872	883	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
873	884	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
874	885	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
875	886	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
876	887	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
877	888	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
878	889	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
879	890	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
880	891	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
881	892	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
882	893	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
883	894	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
884	895	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
885	896	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
886	897	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
887	898	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
888	899	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
889	900	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
890	901	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
891	902	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
892	903	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
893	904	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
894	905	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
895	906	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
896	907	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
897	908	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
898	909	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
899	910	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
900	911	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
901	912	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
902	913	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
903	914	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
904	915	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
905	916	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
906	917	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
907	918	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
908	919	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
909	920	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
910	921	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
911	922	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
912	923	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
913	924	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
914	925	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
915	926	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
916	927	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
917	928	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
918	929	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
919	930	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
920	931	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
921	932	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
922	933	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
923	934	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
924	935	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
925	936	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
926	937	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
927	938	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
928	939	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
929	940	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
930	941	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
931	942	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
932	943	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
933	944	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
934	945	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
935	946	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
936	947	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
937	948	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
938	949	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
939	950	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
940	951	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
941	952	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
942	953	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
943	954	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
944	955	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
945	956	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
946	957	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
947	958	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
948	959	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
949	960	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
950	961	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
951	962	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
952	963	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
953	964	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
954	965	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
955	966	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
956	967	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
957	968	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
958	969	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
959	970	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
960	971	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
961	972	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
962	973	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
963	974	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
964	975	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
965	976	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
966	977	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
967	978	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
968	979	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
969	980	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
970	981	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
971	982	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
972	983	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
973	984	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
974	985	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
975	986	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
976	987	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
977	988	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
978	989	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
979	990	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
980	991	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
981	992	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
982	993	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
983	994	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
984	995	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
985	996	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
986	997	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
987	998	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
988	999	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
990	1001	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
991	1002	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
992	1003	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
993	1004	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
994	1005	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
995	1006	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
996	1007	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
997	1008	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
998	1009	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
999	1010	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1000	1011	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1001	1012	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1002	1013	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1003	1014	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1004	1015	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1005	1016	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1006	1017	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1007	1018	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1008	1019	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1009	1020	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1010	1021	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1011	1022	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1012	1023	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1013	1024	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1014	1025	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1015	1026	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1016	1027	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1017	1028	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1018	1029	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1019	1030	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1020	1031	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1021	1032	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1022	1033	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1023	1034	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1024	1035	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1025	1036	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1026	1037	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1027	1038	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1028	1039	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1030	1041	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1031	1042	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1032	1043	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1033	1044	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1034	1045	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1035	1046	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1036	1047	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1037	1048	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1038	1049	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1039	1050	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1040	1051	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1041	1052	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1042	1053	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1043	1054	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1045	1056	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1046	1057	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1047	1058	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1048	1059	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1049	1060	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1050	1061	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1051	1062	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1052	1063	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1053	1064	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1054	1065	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1055	1066	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1056	1067	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1057	1068	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1058	1069	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1059	1070	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1060	1071	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1061	1072	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1062	10730	\N	0	1	\N	1	\N	\N	\N	\N	0	0	\N	\N	2	1	\N	\N	\N
1063	10731	\N	0	1	\N	1	\N	\N	\N	\N	0	0	\N	\N	2	1	\N	\N	\N
1064	10746	10	0	1	\N	\N	\N	\N	\N	\N	0	0	\N	\N	1	1	\N	\N	\N
1065	10747	11	0	1	\N	\N	3	\N	0	\N	0	0	\N	\N	2	1	\N	\N	\N
1066	10748	12	0	1	\N	\N	3	\N	0	\N	0	0	\N	\N	2	1	\N	\N	\N
1067	10743	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1068	10744	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	1	1	\N	\N	\N
1	2	\N	0	1	\N	1	\N	\N	\N	\N	0	0	\N	1055	2	1	0.0000000000	0.0000000000	\N
1044	1055	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	1065	2	1	0.0000000000	0.0000000000	\N
1029	1040	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	2	1	0.0000000000	0.0000000000	\N
106700	10750	\N	0	1	\N	\N	3	\N	0	\N	0	0	\N	\N	2	1	0.0000000000	0.0000000000	\N
989	1000	\N	\N	1	\N	1	\N	\N	\N	\N	0	0	0	\N	2	1	0.0000000000	0.0000000000	0.0000000000
106800	10760	\N	0	1	\N	\N	3	\N	0	\N	0	0	\N	107700	3	1	0.0000000000	0.0000000000	0.0000000000
106801	10761	\N	0	1	\N	\N	3	\N	0	\N	0	0	\N	107701	3	1	0.0000000000	0.0000000000	0.0000000000
106802	10762	\N	0	1	\N	\N	3	\N	0	\N	0	0	\N	107702	3	1	0.0000000000	0.0000000000	0.0000000000
106900	10770	\N	0	1	\N	\N	3	\N	0	\N	0	0	\N	107800	3	1	0.0000000000	0.0000000000	0.0000000000
106901	10771	\N	0	1	\N	\N	3	\N	0	\N	0	0	\N	107801	3	1	0.0000000000	0.0000000000	0.0000000000
106902	10772	\N	0	1	\N	\N	3	\N	0	\N	0	0	\N	107802	3	1	0.0000000000	0.0000000000	0.0000000000
106903	10773	\N	0	1	\N	\N	3	\N	0	\N	0	0	\N	107803	3	1	0.0000000000	0.0000000000	0.0000000000
106904	10774	\N	0	1	\N	\N	3	\N	0	\N	0	0	\N	107804	3	1	0.0000000000	0.0000000000	0.0000000000
106905	10775	\N	0	1	\N	\N	3	\N	0	\N	0	0	\N	107805	3	1	0.0000000000	0.0000000000	0.0000000000
106906	10776	\N	0	1	\N	\N	\N	\N	\N	\N	0	0	\N	107806	2	1	0.0000000000	0.0000000000	0.0000000000
106907	10777	\N	0	1	\N	\N	3	\N	0	\N	0	0	\N	107807	3	1	0.0000000000	0.0000000000	0.0000000000
106908	10778	\N	0	1	\N	\N	3	\N	0	\N	0	0	\N	107808	3	1	0.0000000000	0.0000000000	0.0000000000
106909	10779	\N	0	1	\N	\N	3	\N	0	\N	0	0	\N	107809	3	1	0.0000000000	0.0000000000	0.0000000000
106910	10780	\N	0	1	\N	\N	\N	\N	\N	\N	0	0	\N	107810	2	1	0.0000000000	0.0000000000	0.0000000000
106911	10781	\N	0	1	\N	\N	\N	\N	\N	\N	0	0	\N	107811	2	1	0.0000000000	0.0000000000	0.0000000000
10710	10800	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10711	10801	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10712	10802	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10713	10803	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10714	10804	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10715	10805	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10716	10806	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10750	10840	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	1	1	\N	\N	\N
10701	10791	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10702	10792	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10703	10793	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10704	10794	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10705	10795	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10706	10796	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10707	10797	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10708	10798	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10709	10799	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10717	10807	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10718	10808	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10719	10809	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10720	10810	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10721	10811	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10722	10812	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10723	10813	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10724	10814	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10725	10815	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10726	10816	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10727	10817	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10728	10818	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10729	10819	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10730	10820	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10731	10821	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10732	10822	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10733	10823	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10734	10824	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10735	10825	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10736	10826	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10737	10827	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10738	10828	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10739	10829	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10740	10830	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10741	10831	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10742	10832	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10743	10833	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10744	10834	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10745	10835	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10746	10836	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10747	10837	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10748	10838	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
10749	10839	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2	1	0.0000000000	0.0000000000	0.0000000000
108500	10940	\N	\N	1	\N	\N	\N	\N	\N	\N	1	0	\N	\N	1	1	0.0000000000	0.0000000000	0.0000000000
108501	10941	\N	\N	1		\N	1	\N	\N	108500	1	0	0	\N	2	1	0.0000000000	0.0000000000	0.0000000000
108502	10942	\N	\N	1	\N	\N	\N	\N	\N	108500	1	0	0	\N	1	1	0.0000000000	0.0000000000	0.0000000000
108503	10943	\N	\N	1	\N	\N	\N	\N	\N	108500	0	0	0	\N	1	1	0.0000000000	0.0000000000	0.0000000000
108504	10944	\N	\N	1	\N	\N	\N	\N	\N	108500	0	0	0	\N	1	1	0.0000000000	0.0000000000	0.0000000000
108505	10945	\N	\N	1		\N	1	\N	\N	108502	1	0	0	\N	2	1	0.0000000000	0.0000000000	0.0000000000
108506	10946	\N	\N	1	\N	\N	\N	\N	\N	108505	0	0	0	\N	1	1	0.0000000000	0.0000000000	0.0000000000
108507	10947	\N	\N	1		\N	1	\N	\N	108505	1	0	0	\N	2	1	0.0000000000	0.0000000000	0.0000000000
108508	10948	\N	\N	1	\N	\N	\N	\N	\N	108507	0	0	0	\N	1	1	0.0000000000	0.0000000000	0.0000000000
108509	10949	\N	\N	1	\N	\N	\N	\N	\N	108507	0	0	0	\N	1	1	0.0000000000	0.0000000000	0.0000000000
108510	10950	\N	\N	1	\N	\N	\N	\N	\N	108507	0	0	0	\N	1	1	0.0000000000	0.0000000000	0.0000000000
108511	10951	\N	\N	1	\N	\N	\N	\N	\N	108507	0	0	0	\N	1	1	0.0000000000	0.0000000000	0.0000000000
108512	10952	\N	\N	1	\N	\N	\N	\N	\N	108507	1	0	0	\N	1	1	0.0000000000	0.0000000000	0.0000000000
108513	10953	\N	\N	1	\N	\N	\N	\N	\N	108512	0	0	0	\N	1	1	0.0000000000	0.0000000000	0.0000000000
108514	10954	\N	\N	1	\N	\N	\N	\N	\N	108512	0	0	0	\N	1	1	0.0000000000	0.0000000000	0.0000000000
108515	10955	\N	\N	1	\N	\N	\N	\N	\N	108512	0	0	0	\N	1	1	0.0000000000	0.0000000000	0.0000000000
108516	10956	\N	\N	1	\N	\N	\N	\N	\N	108512	0	0	0	\N	1	1	0.0000000000	0.0000000000	0.0000000000
\.


--
-- Data for Name: customer_price; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY customer_price (plan_item_id, user_id, create_datetime) FROM stdin;
\.


--
-- Data for Name: entity; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY entity (id, external_id, description, create_datetime, language_id, currency_id, optlock) FROM stdin;
2	\N	British Telecom	2006-12-07 00:00:00	1	1	1
1	\N	Telekom Austria Group	2007-03-18 00:00:00	1	3	1
\.


--
-- Data for Name: entity_delivery_method_map; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY entity_delivery_method_map (method_id, entity_id) FROM stdin;
1	1
2	1
3	1
1	2
2	2
3	2
\.


--
-- Data for Name: entity_payment_method_map; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY entity_payment_method_map (entity_id, payment_method_id) FROM stdin;
1	1
1	2
1	3
2	1
2	2
2	3
2	9
1	5
\.


--
-- Data for Name: event_log; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY event_log (id, entity_id, user_id, table_id, foreign_id, create_datetime, level_field, module_id, message_id, old_num, old_str, old_date, optlock, affected_user_id) FROM stdin;
468000	1	1	14	3102	2011-02-09 02:33:45.593	2	3	9	\N	\N	\N	0	\N
468001	1	1	14	3100	2011-02-09 02:34:37.997	2	3	9	\N	\N	\N	0	\N
468002	1	1	14	3102	2011-02-09 02:36:43.222	2	3	9	\N	\N	\N	0	\N
468003	1	1	14	3102	2011-02-09 02:36:52.599	2	3	9	\N	\N	\N	0	\N
469000	1	1	13	2200	2011-02-15 15:15:50.633	2	4	7	\N	\N	\N	0	\N
469001	1	1	13	2201	2011-02-15 15:16:10.496	2	4	9	\N	Calls	\N	0	\N
469002	1	1	13	22	2011-02-15 15:16:14.939	2	4	7	\N	\N	\N	0	\N
469003	1	1	14	3100	2011-02-15 15:33:19.523	2	3	9	\N	\N	\N	0	\N
469004	1	1	14	3101	2011-02-15 15:39:39.11	2	3	9	\N	\N	\N	0	\N
469005	1	1	14	3102	2011-02-15 15:43:31.088	2	3	9	\N	\N	\N	0	\N
469006	1	1	14	3103	2011-02-15 15:45:04.706	2	3	9	\N	\N	\N	0	\N
469007	1	1	14	3103	2011-02-15 15:45:31.675	2	3	9	\N	\N	\N	0	\N
469008	1	1	14	3103	2011-02-15 15:50:35.484	2	3	9	\N	\N	\N	0	\N
469009	1	1	14	3105	2011-02-15 15:52:26.001	2	3	7	\N	\N	\N	0	\N
469010	1	1	14	3104	2011-02-15 15:54:37.476	2	3	7	\N	\N	\N	0	\N
469011	1	1	13	12	2011-02-15 15:54:58.946	2	4	7	\N	\N	\N	0	\N
469012	1	1	13	2501	2011-02-15 15:57:25.19	2	4	7	\N	\N	\N	0	\N
469013	1	1	13	2502	2011-02-15 15:58:35.145	2	4	7	\N	\N	\N	0	\N
470000	1	1	14	3300	2011-02-15 16:27:10.538	2	3	9	\N	\N	\N	0	\N
471000	1	\N	21	107900	2011-02-15 16:26:06.431	2	7	25	\N	\N	\N	0	10791
471001	1	1	14	3201	2011-02-15 16:26:42.783	2	3	9	\N	\N	\N	0	\N
472000	1	\N	39	8600	2011-02-15 16:50:37.532	2	9	25	\N	\N	\N	0	10791
472001	1	\N	21	107900	2011-02-15 16:50:37.63	2	7	13	1	\N	\N	0	10791
472002	1	1	25	9	2011-02-15 16:57:32.012	2	11	9	\N	\N	\N	0	\N
472003	1	1	25	9	2011-02-15 16:57:54.309	2	11	9	\N	\N	\N	0	\N
473000	1	1	25	460	2011-02-18 11:12:39.589	2	11	7	\N	\N	\N	0	\N
473001	1	1	25	21	2011-02-18 11:12:47.643	2	11	7	\N	\N	\N	0	\N
473002	1	1	25	520	2011-02-18 11:13:05.348	2	11	7	\N	\N	\N	0	\N
473003	1	1	25	22	2011-02-18 11:13:12.185	2	11	7	\N	\N	\N	0	\N
473004	1	1	25	20	2011-02-18 11:14:06.728	2	11	9	\N	\N	\N	0	\N
474000	1	\N	42	1900	2011-02-18 11:21:32.543	2	10	25	\N	\N	\N	0	10791
475000	1	\N	21	108000	2011-02-18 13:03:55.674	2	7	25	\N	\N	\N	0	10816
475001	1	1	21	108000	2011-02-18 13:04:28.226	2	7	9	\N	\N	\N	0	10816
476000	1	1	25	570	2011-02-18 16:51:32.71	2	11	7	\N	\N	\N	0	\N
476001	1	1	25	440	2011-02-18 16:51:39.985	2	11	7	\N	\N	\N	0	\N
476002	1	1	25	450	2011-02-18 16:51:44.958	2	11	7	\N	\N	\N	0	\N
476003	1	1	25	470	2011-02-18 16:51:49.827	2	11	7	\N	\N	\N	0	\N
476004	1	1	25	490	2011-02-18 16:51:54.345	2	11	7	\N	\N	\N	0	\N
476005	1	1	25	540	2011-02-18 16:52:05.252	2	11	7	\N	\N	\N	0	\N
476006	1	1	25	541	2011-02-18 16:52:10.507	2	11	7	\N	\N	\N	0	\N
476007	1	1	25	600	2011-02-18 16:52:16.502	2	11	7	\N	\N	\N	0	\N
477000	1	1	25	430	2011-02-19 10:21:58.133	2	11	7	\N	\N	\N	0	\N
477001	1	1	25	19	2011-02-19 10:22:37.739	2	11	7	\N	\N	\N	0	\N
477002	1	1	25	31	2011-02-19 10:23:01.471	2	11	7	\N	\N	\N	0	\N
477003	1	1	25	1	2011-02-19 10:23:23.172	2	11	7	\N	\N	\N	0	\N
478000	1	1	25	6060	2011-02-20 10:53:27.821	2	11	25	\N	\N	\N	0	\N
479000	1	1	14	3300	2011-03-14 16:00:11.554	2	3	7	\N	\N	\N	0	\N
479001	1	1	14	3202	2011-03-14 16:00:21.668	2	3	7	\N	\N	\N	0	\N
479002	1	1	14	3201	2011-03-14 16:00:24.553	2	3	7	\N	\N	\N	0	\N
479003	1	1	14	3200	2011-03-14 16:00:38.441	2	3	7	\N	\N	\N	0	\N
479004	1	1	14	3103	2011-03-14 16:00:42.24	2	3	7	\N	\N	\N	0	\N
479005	1	1	14	3102	2011-03-14 16:00:52.676	2	3	7	\N	\N	\N	0	\N
479006	1	1	14	3101	2011-03-14 16:00:57.827	2	3	7	\N	\N	\N	0	\N
479007	1	1	14	3100	2011-03-14 16:01:06.032	2	3	7	\N	\N	\N	0	\N
479008	1	1	13	2600	2011-03-14 16:01:40.531	2	4	7	\N	\N	\N	0	\N
479009	1	1	13	2500	2011-03-14 16:01:43.864	2	4	7	\N	\N	\N	0	\N
479010	1	1	13	2400	2011-03-14 16:01:47.557	2	4	7	\N	\N	\N	0	\N
479011	1	1	13	2201	2011-03-14 16:01:50.949	2	4	7	\N	\N	\N	0	\N
479012	1	1	13	2401	2011-03-14 16:14:34.459	2	4	9	\N	Data 	\N	0	\N
\.


--
-- Data for Name: event_log_message; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY event_log_message (id) FROM stdin;
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
\.


--
-- Data for Name: event_log_module; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY event_log_module (id) FROM stdin;
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
\.


--
-- Data for Name: filter; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY filter (id, filter_set_id, type, constraint_type, field, template, visible, integer_value, string_value, start_date_value, end_date_value, version) FROM stdin;
\.


--
-- Data for Name: filter_set; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY filter_set (id, name, user_id, version) FROM stdin;
\.


--
-- Data for Name: filter_set_filter; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY filter_set_filter (filter_set_filters_id, filter_id) FROM stdin;
\.


--
-- Data for Name: generic_status; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY generic_status (id, dtype, status_value, can_login) FROM stdin;
1	user_status	1	1
2	user_status	2	1
3	user_status	3	1
4	user_status	4	1
5	user_status	5	0
6	user_status	6	0
7	user_status	7	0
8	user_status	8	0
9	subscriber_status	1	\N
10	subscriber_status	2	\N
11	subscriber_status	3	\N
12	subscriber_status	4	\N
13	subscriber_status	5	\N
14	subscriber_status	6	\N
15	subscriber_status	7	\N
16	order_status	1	\N
17	order_status	2	\N
18	order_status	3	\N
19	order_status	4	\N
20	order_line_provisioning_status	1	\N
21	order_line_provisioning_status	2	\N
22	order_line_provisioning_status	3	\N
23	order_line_provisioning_status	4	\N
24	order_line_provisioning_status	5	\N
25	order_line_provisioning_status	6	\N
26	invoice_status	1	\N
27	invoice_status	2	\N
28	invoice_status	3	\N
29	mediation_record_status	1	\N
30	mediation_record_status	2	\N
31	mediation_record_status	3	\N
32	mediation_record_status	4	\N
33	process_run_status	1	\N
34	process_run_status	2	\N
35	process_run_status	3	\N
\.


--
-- Data for Name: generic_status_type; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY generic_status_type (id) FROM stdin;
order_line_provisioning_status
order_status
subscriber_status
user_status
invoice_status
mediation_record_status
process_run_status
\.


--
-- Data for Name: international_description; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY international_description (table_id, foreign_id, psudo_column, language_id, content) FROM stdin;
4	1	description	1	United States Dollar
4	2	description	1	Canadian Dollar
4	3	description	1	Euro
4	4	description	1	Yen
4	5	description	1	Pound Sterling
4	6	description	1	Won
4	7	description	1	Swiss Franc
4	8	description	1	Swedish Krona
4	9	description	1	Singapore Dollar
4	10	description	1	Malaysian Ringgit
4	11	description	1	Australian Dollar
6	1	description	1	Month
6	2	description	1	Week
6	3	description	1	Day
6	4	description	1	Year
7	1	description	1	Email
7	2	description	1	Paper
7	3	description	1	Email + Paper
9	1	description	1	Active
9	2	description	1	Overdue
9	3	description	1	Overdue 2
9	4	description	1	Overdue 3
9	5	description	1	Suspended
9	6	description	1	Suspended 2
9	7	description	1	Suspended 3
9	8	description	1	Deleted
14	1	description	1	Lemonade - 1 per day monthly pass
14	2	description	1	Lemonade - all you can drink monthly
14	3	description	1	Coffee - one per day - Monthly
14	4	description	1	Poison Ivy juice (cold)
14	14	description	1	10% Elf discount.
14	24	description	1	Cancel fee
14	240	description	1	Currency test item
14	250	description	1	Lemonade Plan
14	251	description	1	Lemonade plan - Setup Fee
14	270	description	1	Late payment penalty fee
14	260	description	1	an item from ws
17	1	description	1	One time
17	2	description	1	Monthly
17	3	description	1	Monthly
18	1	description	1	Items
18	2	description	1	Tax
18	3	description	1	Penalty
19	1	description	1	pre paid
19	2	description	1	post paid
20	1	description	1	Active
20	2	description	1	Finished
20	3	description	1	Suspended
20	4	description	1	Suspended (auto)
28	2	description	1	Primary
28	3	description	1	Primary
28	4	description	1	Extra Contact
35	1	description	1	Cheque
35	2	description	1	Visa
35	3	description	1	MasterCard
35	4	description	1	AMEX
35	5	description	1	ACH
35	6	description	1	Discovery
35	7	description	1	Diners
35	8	description	1	PayPal
35	9	description	1	Payment Gateway Key
41	1	description	1	Successful
41	2	description	1	Failed
41	3	description	1	Processor unavailable
41	4	description	1	Entered
46	1	description	1	Billing Process
46	2	description	1	User maintenance
46	3	description	1	Item maintenance
46	4	description	1	Item type maintenance
46	5	description	1	Item user price maintenance
46	6	description	1	Promotion maintenance
46	7	description	1	Order maintenance
46	8	description	1	Credit card maintenance
46	9	description	1	Invoice maintenance
47	1	description	1	A prepaid order has unbilled time before the billing process date
47	2	description	1	Order has no active time at the date of process.
47	3	description	1	At least one complete period has to be billable.
47	4	description	1	Already billed for the current date.
47	5	description	1	This order had to be maked for exclusion in the last process.
47	6	description	1	Pre-paid order is being process after its expiration.
47	7	description	1	A row was marked as deleted.
47	8	description	1	A user password was changed.
47	9	description	1	A row was updated.
47	10	description	1	Running a billing process, but a review is found unapproved.
47	11	description	1	Running a billing process, review is required but not present.
47	12	description	1	A user status was changed.
47	13	description	1	An order status was changed.
47	14	description	1	A user had to be aged, but there are no more steps configured.
47	15	description	1	A partner has a payout ready, but no payment instrument.
47	16	description	1	A purchase order as been manually applied to an invoice.
50	1	description	1	Process payment with billing process
50	2	description	1	URL of CSS file
50	3	description	1	URL of logo graphic
50	4	description	1	Grace period
50	5	description	1	Partner percentage rate
50	6	description	1	Partner referral fee
50	7	description	1	Partner one time payout
50	8	description	1	Partner period unit payout
50	9	description	1	Partner period value payout
50	10	description	1	Partner automatic payout
50	11	description	1	User in charge of partners 
50	12	description	1	Partner fee currency
50	13	description	1	Self delivery of paper invoices
50	14	description	1	Include customer notes in invoice
50	15	description	1	Days before expiration for order notification
50	16	description	1	Days before expiration for order notification 2
50	17	description	1	Days before expiration for order notification 3
50	18	description	1	Invoice number prefix
50	19	description	1	Next invoice number
50	20	description	1	Manual invoice deletion
50	21	description	1	Use invoice reminders
50	22	description	1	Number of days after the invoice generation for the first reminder
50	23	description	1	Number of days for next reminder
50	24	description	1	Data Fattura Fine Mese
52	1	description	1	Invoice (email)
52	2	description	1	User Reactivated
52	3	description	1	User Overdue
52	4	description	1	User Overdue 2
52	5	description	1	User Overdue 3
52	6	description	1	User Suspended
52	7	description	1	User Suspended 2
52	8	description	1	User Suspended 3
52	9	description	1	User Deleted
52	10	description	1	Payout Remainder
52	11	description	1	Partner Payout
52	12	description	1	Invoice (paper)
52	13	description	1	Order about to expire. Step 1
52	14	description	1	Order about to expire. Step 2
52	15	description	1	Order about to expire. Step 3
52	16	description	1	Payment (successful)
52	17	description	1	Payment (failed)
52	18	description	1	Invoice Reminder
52	19	description	1	Update Credit Card
52	20	description	1	Lost password
59	1	description	1	Menu Order option
59	1	title	1	Menu Order option
59	2	description	1	Menu Payment option
59	2	title	1	Menu Payment option
59	3	description	1	Menu Report option
59	3	title	1	Menu Report option
59	4	description	1	Menu System option
59	4	title	1	Menu System option
59	5	description	1	Menu System-User option
59	5	title	1	Menu System-User option
59	6	description	1	Menu System-User-All option
59	6	title	1	Menu System-User-All option
59	7	description	1	Selection of user type when creating a user
59	7	title	1	User type selection
59	8	description	1	Can create root users
59	8	title	1	Can create root users
59	9	description	1	Can create clerk users
59	9	title	1	Can create clerk users
59	10	description	1	Can create partner users
59	10	title	1	Can create partner users
59	11	description	1	Can create customer users
59	11	title	1	Can create customer users
59	12	description	1	Can change entity when editing a user
59	12	title	1	Can change entity
59	13	description	1	Can change type when editing a user
59	13	title	1	Can change type
59	14	description	1	Can view type when editing a user
59	14	title	1	Can view type
59	15	description	1	Can change username when editing a user
59	15	title	1	Can change username
59	16	description	1	Can change password when editing a user
59	16	title	1	Can change password
59	17	description	1	Can change langauge when editing a user
59	17	title	1	Can change langauge
59	18	description	1	Can view language when editing a user
59	18	title	1	Can view language
59	19	description	1	Menu System-User-Maintain option
59	19	title	1	Menu System-User-Maintain option
59	20	description	1	Can change user status when editing a user
59	20	title	1	Can change status
59	21	description	1	Can view status when editing a user
59	21	title	1	Can view status
59	22	description	1	Menu Account sub-option
59	22	title	1	Menu Account sub-option
59	23	description	1	Menu change password lm-option
59	23	title	1	Menu change password lm-option
59	24	description	1	Menu edit contact info lm-option
59	24	title	1	Menu edit contact info lm-option
59	25	description	1	Menu account option
59	25	title	1	Menu account option
59	26	description	1	Menu change password sub-option
59	26	title	1	Menu change password sub-option
59	27	description	1	Menu edit contact info sub-option
59	27	title	1	Menu edit contact info sub-option
59	28	description	1	Menu logout option
59	28	title	1	Menu logout option
59	29	description	1	Menu items option
59	29	title	1	Menu items option
59	30	description	1	Menu Items - Types option
59	30	title	1	Menu Items - Types option
59	31	description	1	Menu Items - Create option
59	31	title	1	Menu Items - Create option
59	32	description	1	Menu Items - List option
59	32	title	1	Menu Items - List option
59	33	description	1	Menu Items - Types - Create option
59	33	title	1	Menu Items - Types - Create option
59	34	description	1	Can edit item fields (read-write)
59	34	title	1	Can edit item fields
59	35	description	1	Menu Items - Types - List option
59	35	title	1	Menu Items - Types - List option
59	36	description	1	Menu Promotion
59	36	title	1	Menu Promotion
59	37	description	1	Menu Promotion create
59	37	title	1	Menu Promotion create
59	38	description	1	Menu Promotion list
59	38	title	1	Menu Promotion list
59	39	description	1	Menu Payments new cheque
59	39	title	1	Menu Payments new cheque
59	40	description	1	Menu Payments new credit card
59	40	title	1	Menu Payments new cc
59	41	description	1	Menu Payments list
59	41	title	1	Menu Payments list
59	42	description	1	Menu Order create
59	42	title	1	Menu Order create
59	43	description	1	Menu Order list
59	43	title	1	Menu Order list
59	44	description	1	Menu Credit Card edit
59	44	title	1	Menu Credit Card
59	45	description	1	Menu Credit Card edit
59	45	title	1	Menu Credit Card
59	46	description	1	Menu Refund option
59	46	title	1	Menu Refund option
59	47	description	1	Menu Refund option - cheque
59	47	title	1	Menu Refund option - cheque
59	48	description	1	Menu Refund option - credit card
59	48	title	1	Menu Refund option - cc
59	49	description	1	Menu Refund option - list
59	49	title	1	Menu Refund list
59	50	description	1	Menu Invoice option
59	50	title	1	Menu Invoice
59	51	description	1	Menu Invoice option - list
59	51	title	1	Menu Invoice list
59	52	description	1	Menu Process option
59	52	title	1	Menu Process option
59	53	description	1	Menu Process - list option
59	53	title	1	Menu Process list
59	54	description	1	Menu Process - edit configuration option
59	54	title	1	Menu Process - Configuration
59	55	description	1	Menu Process - see latest option
59	55	title	1	Menu Process - Latest
59	56	description	1	Menu Process - Review option
59	56	title	1	Menu Process review
59	57	description	1	Menu Notification
59	57	title	1	Menu Notification
59	58	description	1	Menu Notification - Compose
59	58	title	1	Menu Notification Compose
59	59	description	1	Menu Notification - Parameters
59	59	title	1	Menu Notificaiton Parameters
59	60	description	1	Menu Notification - Emails list
59	60	title	1	Menu Notification Emails
59	61	description	1	Menu Customers 
59	61	title	1	Menu Customers
59	62	description	1	Menu Reports - Orders
59	62	title	1	Menu Reports Orders
59	63	description	1	Menu Reports - Invoice
59	63	title	1	Menu Reports Invoice
59	64	description	1	Menu Reports - Payment
59	64	title	1	Menu Reports Payment
59	65	description	1	Menu Reports - Refund
59	65	title	1	Menu Reports Refund
59	66	description	1	Menu Reports - Customer
59	66	title	1	Menu Reports Customer
59	67	description	1	Report General orders
59	67	title	1	Report General orders
59	68	description	1	Report General invoices
59	68	title	1	Report General invoices
59	69	description	1	Report General payments
59	69	title	1	Report General payments
59	70	description	1	Report General order lines
59	70	title	1	Report General order lines
59	71	description	1	Report General Refunds 
59	71	title	1	Report General Refunds 
59	72	description	1	Report Total invoiced by date range 
59	72	title	1	Report Total invoiced 
59	73	description	1	Report Total payments by date range 
59	73	title	1	Report Total payments
59	74	description	1	Report Total refunds by date range 
59	74	title	1	Report Total refunds
59	75	description	1	Report Total ordered by date range 
59	75	title	1	Report Total ordered
59	76	description	1	Invoices overdue 
59	76	title	1	Report Invoices overdue 
59	77	description	1	Menu Customer option - list
59	77	title	1	Menu Customer list
59	78	description	1	Menu Report option - list
59	78	title	1	Menu Report list
59	79	description	1	Menu Customer option - new
59	79	title	1	Menu Customer New
59	80	description	1	Menu System option - Branding
59	80	title	1	Menu System - Branding
59	81	description	1	Can change currency when editing a user
59	81	title	1	Can change langauge
59	82	description	1	Can view currency when editing a user
59	82	title	1	Can view language
59	83	description	1	Menu System option - Currencies
59	83	title	1	Menu System - Currencies
59	84	description	1	Invoices carring a balance 
59	84	title	1	Report Invoices carring a balance 
59	85	description	1	Menu System option - Ageing
59	85	title	1	Menu System - Ageing
59	86	description	1	Menu Users option - All create
59	86	title	1	Menu Users - All create
59	87	description	1	Menu Partner option
59	87	title	1	Menu Partner
59	88	description	1	Menu Customer option
59	88	title	1	Menu Customer
59	89	description	1	Menu Partner option - New
59	89	title	1	Menu Partner - New
59	90	description	1	Menu Partner option - List
59	90	title	1	Menu Partner - List
59	91	description	1	Menu Partner option - Defaults
59	91	title	1	Menu Partner - Defaults
59	92	description	1	Menu Partner option - Reports
59	92	title	1	Menu Partner - Reports
59	93	description	1	Menu Customer option - Reports
59	93	title	1	Menu Customer - Reports
59	94	description	1	Menu Customer option - List
59	94	title	1	Menu Customer - List
59	95	description	1	Menu Customer option - New
59	95	title	1	Menu Customer - New
59	96	description	1	Menu Statement option
59	96	title	1	Menu Statement
59	97	description	1	Menu Statement option - latest
59	97	title	1	Menu Statement latest
59	98	description	1	Menu Statement option - Payouts
59	98	title	1	Menu Statement payouts
59	99	description	1	Report Partners customers orders
59	99	title	1	Report partner ordres
59	100	description	1	Report Partners customers payments
59	100	title	1	Report partner payments
59	101	description	1	Report partners customers refunds
59	101	title	1	Report partner refunds
59	102	description	1	Report General partners
59	102	title	1	Report General partners
59	103	description	1	Report General payouts
59	103	title	1	Report General payouts
59	104	description	1	Menu Reports parterns option
59	104	title	1	Menu Reports
59	105	description	1	Menu Partner option - due payment
59	105	title	1	Menu Partner - payable
59	106	description	1	Menu Reports list parterns option
59	106	title	1	Menu Reports List
59	107	description	1	Menu Notification preferences
59	107	title	1	Menu Notif Preferences
59	108	description	1	Order options: g.invoice,
59	108	title	1	Order left menu options
59	109	description	1	Menu Payment ACH
59	109	title	1	Menu Payment ACH
59	110	description	1	Menu Invoice Numbering
59	110	title	1	Menu Invoice Numbering
59	111	description	1	Menu Reports invoice details option
59	111	title	1	Menu Reports Invoice Details
59	112	description	1	Menu Reports users option
59	112	title	1	Menu Reports Users
59	113	description	1	Invoice delete left menu option
59	113	title	1	Invoice delete
59	114	description	1	User edit links
59	114	title	1	User edit links
59	115	description	1	User create - inital left menu
59	115	title	1	User create - inital left menu
59	116	description	1	Menu edit ach option
59	116	title	1	Menu edit ach option
60	1	description	1	An internal user with all the permissions
60	1	title	1	Internal
60	2	description	1	The super user of an entity
60	2	title	1	Super user
60	3	description	1	A billing clerk
60	3	title	1	Clerk
60	4	description	1	A partner that will bring customers
60	4	title	1	Partner
60	5	description	1	A customer that will query his/her account
60	5	title	1	Customer
63	1	display	1	Orders
63	2	display	1	Payments
63	3	display	1	Reports
63	4	display	1	System
63	5	display	1	Users
63	6	display	1	Staff
63	7	display	1	Create New User
63	8	display	1	My Account
63	9	display	1	Change Password
63	10	display	1	Edit Contact Information
63	11	display	1	Account
63	12	display	1	Change Password
63	13	display	1	Edit Contact Information
63	14	display	1	OBSOLETED
63	15	display	1	Items
63	16	display	1	Types
63	17	display	1	Create
63	18	display	1	List
63	19	display	1	Create Type
63	20	display	1	List/Edit Types
63	21	display	1	Promotions
63	22	display	1	Create
63	23	display	1	List
63	24	display	1	Cheque
63	25	display	1	Credit Card
63	26	display	1	List
63	27	display	1	Create
63	28	display	1	List
63	29	display	1	Edit Credit Card
63	30	display	1	Edit Credit Card
63	31	display	1	Refunds
63	32	display	1	Cheque
63	33	display	1	Credit Card
63	34	display	1	List
63	35	display	1	Invoices
63	36	display	1	List
63	37	display	1	Process
63	38	display	1	List
63	39	display	1	Configuration
63	40	display	1	Latest
63	41	display	1	Review
63	42	display	1	Notification
63	43	display	1	Compose
63	44	display	1	Parameters
63	45	display	1	Emails list
63	46	display	1	Customers
63	47	display	1	Reports
63	48	display	1	Reports
63	49	display	1	Reports
63	50	display	1	Reports
63	51	display	1	Reports
63	52	display	1	List
63	53	display	1	List
63	54	display	1	New
63	55	display	1	Branding
63	56	display	1	Currencies
63	57	display	1	Ageing
63	58	display	1	Create
63	59	display	1	Partners
63	60	display	1	Customers
63	61	display	1	New
63	62	display	1	List
63	63	display	1	Defaults
63	64	display	1	Reports
63	65	display	1	Reports
63	66	display	1	List
63	67	display	1	New
63	68	display	1	Statement
63	69	display	1	Latest
63	70	display	1	Payouts
63	71	display	1	Reports
63	72	display	1	Partners Due Payout
63	73	display	1	List
63	74	display	1	Preferences
63	75	display	1	ACH
63	76	display	1	Numbering
63	77	display	1	Edit ACH
63	78	display	1	Sub-accounts
63	79	display	1	Help
63	80	display	1	Help
63	81	display	1	Help
63	82	display	1	Help
63	83	display	1	Help
63	84	display	1	Help
63	85	display	1	Help
63	86	display	1	Help
63	87	display	1	Help
63	88	display	1	Help
63	89	display	1	Help
63	90	display	1	PayPal
63	91	display	1	Periods
63	92	display	1	Download
63	93	display	1	Plug-ins
63	94	display	1	Logo
63	95	display	1	Mediation
63	96	display	1	Mediation
63	97	display	1	Blacklist
64	1	description	1	Afghanistan
64	2	description	1	Albania
64	3	description	1	Algeria
64	4	description	1	American Samoa
64	5	description	1	Andorra
64	6	description	1	Angola
64	7	description	1	Anguilla
64	8	description	1	Antarctica
64	9	description	1	Antigua and Barbuda
64	10	description	1	Argentina
64	11	description	1	Armenia
64	12	description	1	Aruba
64	13	description	1	Australia
64	14	description	1	Austria
64	15	description	1	Azerbaijan
64	16	description	1	Bahamas
64	17	description	1	Bahrain
64	18	description	1	Bangladesh
64	19	description	1	Barbados
64	20	description	1	Belarus
64	21	description	1	Belgium
64	22	description	1	Belize
64	23	description	1	Benin
64	24	description	1	Bermuda
64	25	description	1	Bhutan
64	26	description	1	Bolivia
64	27	description	1	Bosnia and Herzegovina
64	28	description	1	Botswana
64	29	description	1	Bouvet Island
64	30	description	1	Brazil
64	31	description	1	British Indian Ocean Territory
64	32	description	1	Brunei
64	33	description	1	Bulgaria
64	34	description	1	Burkina Faso
64	35	description	1	Burundi
64	36	description	1	Cambodia
64	37	description	1	Cameroon
64	38	description	1	Canada
64	39	description	1	Cape Verde
64	40	description	1	Cayman Islands
64	41	description	1	Central African Republic
64	42	description	1	Chad
64	43	description	1	Chile
64	44	description	1	China
64	45	description	1	Christmas Island
64	46	description	1	Cocos &#40;Keeling&#41; Islands
64	47	description	1	Colombia
64	48	description	1	Comoros
64	49	description	1	Congo
64	50	description	1	Cook Islands
64	51	description	1	Costa Rica
64	52	description	1	Cï¿½1ï¿½7te d&#39;Ivoire
64	53	description	1	Croatia &#40;Hrvatska&#41;
64	54	description	1	Cuba
64	55	description	1	Cyprus
64	56	description	1	Czech Republic
64	57	description	1	Congo &#40;DRC&#41;
64	58	description	1	Denmark
64	59	description	1	Djibouti
64	60	description	1	Dominica
64	61	description	1	Dominican Republic
64	62	description	1	East Timor
64	63	description	1	Ecuador
64	64	description	1	Egypt
64	65	description	1	El Salvador
64	66	description	1	Equatorial Guinea
64	67	description	1	Eritrea
64	68	description	1	Estonia
64	69	description	1	Ethiopia
64	70	description	1	Falkland Islands &#40;Islas Malvinas&#41;
64	71	description	1	Faroe Islands
64	72	description	1	Fiji Islands
64	73	description	1	Finland
64	74	description	1	France
64	75	description	1	French Guiana
64	76	description	1	French Polynesia
64	77	description	1	French Southern and Antarctic Lands
64	78	description	1	Gabon
64	79	description	1	Gambia
64	80	description	1	Georgia
64	81	description	1	Germany
64	82	description	1	Ghana
64	83	description	1	Gibraltar
64	84	description	1	Greece
64	85	description	1	Greenland
64	86	description	1	Grenada
64	87	description	1	Guadeloupe
64	88	description	1	Guam
64	89	description	1	Guatemala
64	90	description	1	Guinea
64	91	description	1	Guinea-Bissau
64	92	description	1	Guyana
64	93	description	1	Haiti
64	94	description	1	Heard Island and McDonald Islands
64	95	description	1	Honduras
64	96	description	1	Hong Kong SAR
64	97	description	1	Hungary
64	98	description	1	Iceland
64	99	description	1	India
64	100	description	1	Indonesia
64	101	description	1	Iran
64	102	description	1	Iraq
64	103	description	1	Ireland
64	104	description	1	Israel
64	105	description	1	Italy
64	106	description	1	Jamaica
64	107	description	1	Japan
64	108	description	1	Jordan
64	109	description	1	Kazakhstan
64	110	description	1	Kenya
64	111	description	1	Kiribati
64	112	description	1	Korea
64	113	description	1	Kuwait
64	114	description	1	Kyrgyzstan
64	115	description	1	Laos
64	116	description	1	Latvia
64	117	description	1	Lebanon
64	118	description	1	Lesotho
64	119	description	1	Liberia
64	120	description	1	Libya
64	121	description	1	Liechtenstein
64	122	description	1	Lithuania
64	123	description	1	Luxembourg
64	124	description	1	Macao SAR
64	125	description	1	Macedonia, Former Yugoslav Republic of
64	126	description	1	Madagascar
64	127	description	1	Malawi
64	128	description	1	Malaysia
64	129	description	1	Maldives
64	130	description	1	Mali
64	131	description	1	Malta
64	132	description	1	Marshall Islands
64	133	description	1	Martinique
64	134	description	1	Mauritania
64	135	description	1	Mauritius
64	136	description	1	Mayotte
64	137	description	1	Mexico
64	138	description	1	Micronesia
64	139	description	1	Moldova
64	140	description	1	Monaco
64	141	description	1	Mongolia
64	142	description	1	Montserrat
64	143	description	1	Morocco
64	144	description	1	Mozambique
64	145	description	1	Myanmar
64	146	description	1	Namibia
64	147	description	1	Nauru
64	148	description	1	Nepal
64	149	description	1	Netherlands
64	150	description	1	Netherlands Antilles
64	151	description	1	New Caledonia
64	152	description	1	New Zealand
64	153	description	1	Nicaragua
64	154	description	1	Niger
64	155	description	1	Nigeria
64	156	description	1	Niue
64	157	description	1	Norfolk Island
64	158	description	1	North Korea
64	159	description	1	Northern Mariana Islands
64	160	description	1	Norway
64	161	description	1	Oman
64	162	description	1	Pakistan
64	163	description	1	Palau
64	164	description	1	Panama
64	165	description	1	Papua New Guinea
64	166	description	1	Paraguay
64	167	description	1	Peru
64	168	description	1	Philippines
64	169	description	1	Pitcairn Islands
64	170	description	1	Poland
64	171	description	1	Portugal
64	172	description	1	Puerto Rico
64	173	description	1	Qatar
64	174	description	1	Reunion
64	175	description	1	Romania
64	176	description	1	Russia
64	177	description	1	Rwanda
64	178	description	1	Samoa
64	179	description	1	San Marino
64	180	description	1	Sï¿½1ï¿½7o Tomï¿½1ï¿½7 and Prï¿½1ï¿½7ncipe
64	181	description	1	Saudi Arabia
64	182	description	1	Senegal
64	183	description	1	Serbia and Montenegro
64	184	description	1	Seychelles
64	185	description	1	Sierra Leone
64	186	description	1	Singapore
64	187	description	1	Slovakia
64	188	description	1	Slovenia
64	189	description	1	Solomon Islands
64	190	description	1	Somalia
64	191	description	1	South Africa
64	192	description	1	South Georgia and the South Sandwich Islands
64	193	description	1	Spain
64	194	description	1	Sri Lanka
64	195	description	1	St. Helena
64	196	description	1	St. Kitts and Nevis
64	197	description	1	St. Lucia
64	198	description	1	St. Pierre and Miquelon
64	199	description	1	St. Vincent and the Grenadines
64	200	description	1	Sudan
64	201	description	1	Suriname
64	202	description	1	Svalbard and Jan Mayen
64	203	description	1	Swaziland
64	204	description	1	Sweden
64	205	description	1	Switzerland
64	206	description	1	Syria
64	207	description	1	Taiwan
64	208	description	1	Tajikistan
64	209	description	1	Tanzania
64	210	description	1	Thailand
64	211	description	1	Togo
64	212	description	1	Tokelau
64	213	description	1	Tonga
64	214	description	1	Trinidad and Tobago
64	215	description	1	Tunisia
64	216	description	1	Turkey
64	217	description	1	Turkmenistan
64	218	description	1	Turks and Caicos Islands
64	219	description	1	Tuvalu
64	220	description	1	Uganda
64	221	description	1	Ukraine
64	222	description	1	United Arab Emirates
64	223	description	1	United Kingdom
64	224	description	1	United States
64	225	description	1	United States Minor Outlying Islands
64	226	description	1	Uruguay
64	227	description	1	Uzbekistan
64	228	description	1	Vanuatu
64	229	description	1	Vatican City
64	230	description	1	Venezuela
64	231	description	1	Viet Nam
64	232	description	1	Virgin Islands &#40;British&#41;
64	233	description	1	Virgin Islands
64	234	description	1	Wallis and Futuna
64	235	description	1	Yemen
64	236	description	1	Zambia
64	237	description	1	Zimbabwe
69	1	welcome_message	1	<div> <br/> <p style='font-size:19px; font-weight: bold;'>Welcome to Prancing Pony Billing!</p> <br/> <p style='font-size:14px; text-align=left; padding-left: 15;'>From here, you can review your latest invoice and get it paid instantly. You can also view all your previous invoices and payments, and set up the system for automatic payment with your credit card.</p> <p style='font-size:14px; text-align=left; padding-left: 15;'>What would you like to do today? </p> <ul style='font-size:13px; text-align=left; padding-left: 25;'> <li >To submit a credit card payment, follow the link on the left bar.</li> <li >To view a list of your invoices, click on the âInvoicesâ menu option. The first invoice on the list is your latest invoice. Click on it to see its details.</li> <li>To view a list of your payments, click on the âPaymentsâ menu option. The first payment on the list is your latest payment. Click on it to see its details.</li> <li>To provide a credit card to enable automatic payment, click on the menu option 'Account', and then on 'Edit Credit Card'.</li> </ul> </div>
69	2	welcome_message	1	<div> <br/> <p style='font-size:19px; font-weight: bold;'>Welcome to Mordor Inc. Billing!</p> <br/> <p style='font-size:14px; text-align=left; padding-left: 15;'>From here, you can review your latest invoice and get it paid instantly. You can also view all your previous invoices and payments, and set up the system for automatic payment with your credit card.</p> <p style='font-size:14px; text-align=left; padding-left: 15;'>What would you like to do today? </p> <ul style='font-size:13px; text-align=left; padding-left: 25;'> <li >To submit a credit card payment, follow the link on the left bar.</li> <li >To view a list of your invoices, click on the âInvoicesâ menu option. The first invoice on the list is your latest invoice. Click on it to see its details.</li> <li>To view a list of your payments, click on the âPaymentsâ menu option. The first payment on the list is your latest payment. Click on it to see its details.</li> <li>To provide a credit card to enable automatic payment, click on the menu option 'Account', and then on 'Edit Credit Card'.</li> </ul> </div>
81	1	description	1	Active
81	2	description	1	Pending Unsubscription
81	3	description	1	Unsubscribed
81	4	description	1	Pending Expiration
81	5	description	1	Expired
81	6	description	1	Nonsubscriber
81	7	description	1	Discontinued
88	1	description	1	Active
88	2	description	1	Inactive
88	3	description	1	Pending Active
88	4	description	1	Pending Inactive
88	5	description	1	Failed
88	6	description	1	Unavailable
89	1	description	1	None
89	2	description	1	Pre-paid balance
89	3	description	1	Credit limit
90	1	description	1	Paid
90	2	description	1	Unpaid
90	3	description	1	Unpaid, balance carried to new invoice
91	1	description	1	Done and billable
91	2	description	1	Done and not billable
91	3	description	1	Error detected
91	4	description	1	Error declared
14	1	description	2	French Lemonade
14	2600	description	1	Lemonade - Generic
14	2601	description	1	Lemonade - Included in plan
14	2602	description	1	Lemonade 
14	2702	description	1	Long Distance Plan - 1000 min included
14	2701	description	1	Long Distance Plan B - fixed rate
14	2700	description	1	Long Distance Plan A - fixed rate
14	2800	description	1	Long Distance Call
14	2801	description	1	Long Distance Call - Included
14	2900	description	1	Long distance call - Generic
14	3000	description	1	Crazy Brian's Discount Plan
92	1	description	1	Running
92	2	description	1	Finished: successful
92	3	description	1	Finished: failed
93	1	description	1	Invoices
93	2	description	1	Orders
93	3	description	1	Payments
93	4	description	1	Users
23	1	description	1	Item management and order line total calculation
23	2	description	1	Billing process: order filters
23	3	description	1	Billing process: invoice filters
23	4	description	1	Invoice presentation
23	5	description	1	Billing process: order periods calculation
23	6	description	1	Payment gateway integration
23	7	description	1	Notifications
23	8	description	1	Payment instrument selection
23	9	description	1	Penalties for overdue invoices
23	10	description	1	Alarms when a payment gateway is down
23	11	description	1	Subscription status manager
23	12	description	1	Parameters for asynchronous payment processing
23	13	description	1	Add one product to order
23	14	description	1	Product pricing
23	15	description	1	Mediation Reader
23	16	description	1	Mediation Processor
23	17	description	1	Generic internal events listener
23	18	description	1	External provisioning processor
23	19	description	1	Purchase validation against pre-paid balance / credit limit
23	20	description	1	Billing process: customer selection
23	21	description	1	Mediation Error Handler
23	22	description	1	Scheduled Plug-ins
23	23	description	1	Rules Generators
24	1	title	1	Default order totals
24	1	description	1	Calculates the order total and the total for each line, considering the item prices, the quantity and if the prices are percentage or not.
24	2	title	1	VAT
24	2	description	1	Adds an additional line to the order with a percentage charge to represent the value added tax.
24	3	title	1	Invoice due date
24	3	description	1	A very simple implementation that sets the due date of the invoice. The due date is calculated by just adding the period of time to the invoice date.
24	4	title	1	Default invoice composition.
24	4	description	1	This task will copy all the lines on the orders and invoices to the new invoice, considering the periods involved for each order, but not the fractions of periods. It will not copy the lines that are taxes. The quantity and total of each line will be multiplied by the amount of periods.
24	5	title	1	Standard Order Filter
24	5	description	1	Decides if an order should be included in an invoice for a given billing process.  This is done by taking the billing process time span, the order period, the active since/until, etc.
24	6	title	1	Standard Invoice Filter
24	6	description	1	Always returns true, meaning that the overdue invoice will be carried over to a new invoice.
24	7	title	1	Default Order Periods
24	7	description	1	Calculates the start and end period to be included in an invoice. This is done by taking the billing process time span, the order period, the active since/until, etc.
24	8	title	1	Authorize.net payment processor
24	8	description	1	Integration with the authorize.net payment gateway.
24	9	title	1	Standard Email Notification
24	9	description	1	Notifies a user by sending an email. It supports text and HTML emails
24	10	title	1	Default payment information
24	10	description	1	Finds the information of a payment method available to a customer, given priority to credit card. In other words, it will return the credit car of a customer or the ACH information in that order.
24	11	title	1	Testing plug-in for partner payouts
24	11	description	1	Plug-in useful only for testing
24	12	title	1	PDF invoice notification
24	12	description	1	Will generate a PDF version of an invoice.
24	14	title	1	No invoice carry over
24	14	description	1	Returns always false, which makes jBilling to never carry over an invoice into another newer invoice.
24	15	title	1	Default interest task
24	15	description	1	Will create a new order with a penalty item. The item is taken as a parameter to the task.
24	16	title	1	Anticipated order filter
24	16	description	1	Extends BasicOrderFilterTask, modifying the dates to make the order applicable a number of months before it would be by using the default filter.
24	17	title	1	Anticipate order periods.
24	17	description	1	Extends BasicOrderPeriodTask, modifying the dates to make the order applicable a number of months before itd be by using the default task.
24	19	title	1	Email & process authorize.net
24	19	description	1	Extends the standard authorize.net payment processor to also send an email to the company after processing the payment.
24	20	title	1	Payment gateway down alarm
24	20	description	1	Sends an email to the billing administrator as an alarm when a payment gateway is down.
24	21	title	1	Test payment processor
24	21	description	1	A test payment processor implementation to be able to test jBillings functions without using a real payment gateway.
24	22	title	1	Router payment processor based on Custom Fields
24	22	description	1	Allows a customer to be assigned a specific payment gateway. It checks a custom contact field to identify the gateway and then delegates the actual payment processing to another plugin.
24	23	title	1	Default subscription status manager
24	23	description	1	It determines how a payment event affects the subscription status of a user, considering its present status and a state machine.
24	24	title	1	ACH Commerce payment processor
24	24	description	1	Integration with the ACH commerce payment gateway.
24	25	title	1	Standard asynchronous parameters
24	25	description	1	A dummy task that does not add any parameters for asynchronous payment processing. This is the default.
24	26	title	1	Router asynchronous parameters
24	26	description	1	This plug-in adds parameters for asynchronous payment processing to have one processing message bean per payment processor. It is used in combination with the router payment processor plug-ins.
24	28	title	1	Standard Item Manager
24	28	description	1	It adds items to an order. If the item is already in the order, it only updates the quantity.
24	29	title	1	Rules Item Manager
24	29	description	1	This is a rules-based plug-in. It will do what the basic item manager does (actually calling it), but then it will execute external rules as well. These external rules have full control on changing the order that is getting new items.
24	30	title	1	Rules Line Total
24	30	description	1	This is a rules-based plug-in. It calculates the total for an order line (typically this is the price multiplied by the quantity), allowing for the execution of external rules.
24	31	title	1	Rules Pricing
24	31	description	1	This is a rules-based plug-in. It gives a price to an item by executing external rules. You can then add logic externally for pricing. It is also integrated with the mediation process by having access to the mediation pricing data.
24	32	title	1	Separator file reader
24	32	description	1	This is a reader for the mediation process. It reads records from a text file whose fields are separated by a character (or string).
24	33	title	1	Rules mediation processor
24	33	description	1	This is a rules-based plug-in (see chapter 7). It takes an event record from the mediation process and executes external rules to translate the record into billing meaningful data. This is at the core of the mediation component, see the “Telecom Guide” document for more information.
24	34	title	1	Fixed length file reader
24	34	description	1	This is a reader for the mediation process. It reads records from a text file whose fields have fixed positions,and the record has a fixed length.
24	35	title	1	Payment information without validation
24	35	description	1	This is exactly the same as the standard payment information task, the only difference is that it does not validate if the credit card is expired. Use this plug-in only if you want to submit payment with expired credit cards.
24	36	title	1	Notification task for testing
24	36	description	1	This plug-in is only used for testing purposes. Instead of sending an email (or other real notification), it simply stores the text to be sent in a file named emails_sent.txt.
24	37	title	1	Order periods calculator with pro rating.
24	37	description	1	This plugin takes into consideration the field cycle starts of orders to calculate fractional order periods.
24	38	title	1	Invoice composition task with pro-rating (day as fraction)
24	38	description	1	When creating an invoice from an order, this plug-in will pro-rate any fraction of a period taking a day as the smallest billable unit.
24	39	title	1	Payment process for the Intraanuity payment gateway
24	39	description	1	Integration with the Intraanuity payment gateway.
24	40	title	1	Automatic cancellation credit.
24	40	description	1	This plug-in will create a new order with a negative price to reflect a credit when an order is canceled within a period that has been already invoiced.
24	41	title	1	Fees for early cancellation of a plan.
24	41	description	1	This plug-in will use external rules to determine if an order that is being canceled should create a new order with a penalty fee. This is typically used for early cancels of a contract.
24	42	title	1	Blacklist filter payment processor.
24	42	description	1	Used for blocking payments from reaching real payment processors. Typically configured as first payment processor in the processing chain.
24	43	title	1	Blacklist user when their status becomes suspended or higher.
24	43	description	1	Causes users and their associated details (e.g., credit card number, phone number, etc.) to be blacklisted when their status becomes suspended or higher. 
24	44	title	1	JDBC Mediation Reader.
24	44	description	1	This is a reader for the mediation process. It reads records from a JDBC database source.
24	45	title	1	MySQL Mediation Reader.
24	45	description	1	This is a reader for the mediation process. It is an extension of the JDBC reader, allowing easy configuration of a MySQL database source.
24	46	title	1	Provisioning commands rules task.
24	46	description	1	Responds to order related events. Runs rules to generate commands to send via JMS messages to the external provisioning module.
24	47	title	1	Test external provisioning task.
24	47	description	1	This plug-in is only used for testing purposes. It is a test external provisioning task for testing the provisioning modules.
24	48	title	1	CAI external provisioning task.
24	48	description	1	An external provisioning plug-in for communicating with the Ericsson Customer Administration Interface (CAI).
24	49	title	1	Currency Router payment processor
24	49	description	1	Delegates the actual payment processing to another plug-in based on the currency of the payment.
24	50	title	1	MMSC external provisioning task.
24	50	description	1	An external provisioning plug-in for communicating with the TeliaSonera MMSC.
24	51	title	1	Filters out negative invoices for carry over.
24	51	description	1	This filter will only invoices with a positive balance to be carried over to the next invoice.
24	52	title	1	File invoice exporter.
24	52	description	1	It will generate a file with one line per invoice generated.
24	53	title	1	Rules caller on an event.
24	53	description	1	It will call a package of rules when an internal event happens.
24	54	title	1	Dynamic balance manager
24	54	description	1	It will update the dynamic balance of a customer (pre-paid or credit limit) when events affecting the balance happen.
24	55	title	1	Balance validator based on the customer balance.
24	55	description	1	Used for real-time mediation, this plug-in will validate a call based on the current dynamic balance of a customer.
24	56	title	1	Balance validator based on rules.
24	56	description	1	Used for real-time mediation, this plug-in will validate a call based on a package or rules
24	57	title	1	Payment processor for Payments Gateway.
24	57	description	1	Integration with the Payments Gateway payment processor.
24	58	title	1	Credit cards are stored externally.
24	58	description	1	Saves the credit card information in the payment gateway, rather than the jBilling DB.
24	59	title	1	Rules Item Manager 2
24	59	description	1	This is a rules-based plug-in compatible with the mediation module of jBilling 2.2.x. It will do what the basic item manager does (actually calling it), but then it will execute external rules as well. These external rules have full control on changing the order that is getting new items.
24	60	title	1	Rules Line Total - 2
24	60	description	1	This is a rules-based plug-in, compatible with the mediation process of jBilling 2.2.x and later. It calculates the total for an order line (typically this is the price multiplied by the quantity), allowing for the execution of external rules.
24	61	title	1	Rules Pricing 2
24	61	description	1	This is a rules-based plug-in compatible with the mediation module of jBilling 2.2.x. It gives a price to an item by executing external rules. You can then add logic externally for pricing. It is also integrated with the mediation process by having access to the mediation pricing data.
24	63	title	1	Test payment processor for external storage.
24	63	description	1	A fake plug-in to test payments that would be stored externally.
24	64	title	1	WorldPay integration
24	64	description	1	Payment processor plug-in to integrate with RBS WorldPay
24	65	title	1	WorldPay integration with external storage
24	65	description	1	Payment processor plug-in to integrate with RBS WorldPay. It stores the credit card information (number, etc) in the gateway.
24	66	title	1	Auto recharge
24	66	description	1	Monitors the balance of a customer and upon reaching a limit, it requests a real-time payment
24	67	title	1	Beanstream gateway integration
24	67	description	1	Payment processor for integration with the Beanstream payment gateway
24	68	title	1	Sage payments gateway integration
24	68	description	1	Payment processor for integration with the Sage payment gateway
24	69	title	1	Standard billing process users filter
24	69	description	1	Called when the billing process runs to select which users to evaluate. This basic implementation simply returns every user not in suspended (or worse) status
24	70	title	1	Selective billing process users filter
24	70	description	1	Called when the billing process runs to select which users to evaluate. This only returns users with orders that have a next invoice date earlier than the billing process.
24	71	title	1	Mediation file error handler
24	71	description	1	Event records with errors are saved to a file
24	73	title	1	Mediation data base error handler
24	73	description	1	Event records with errors are saved to a database table
24	75	title	1	Paypal integration with external storage
24	75	description	1	Submits payments to paypal as a payment gateway and stores credit card information in PayPal as well
24	76	title	1	Authorize.net integration with external storage
24	76	description	1	Submits payments to authorize.net as a payment gateway and stores credit card information in authorize.net as well
24	77	title	1	Payment method router payment processor
24	77	description	1	Delegates the actual payment processing to another plug-in based on the payment method of the payment.
24	78	title	1	Dynamic rules generator
24	78	description	1	Generates rules dynamically based on a Velocity template.
24	79	title	1	Mediation Process Task
24	79	description	1	A scheduled task to execute the Mediation Process.
24	80	title	1	Billing Process Task
24	80	description	1	A scheduled task to execute the Billing Process.
99	2	description	1	Payment Processor
14	3101	description	1	Wave Pre-paid
14	3104	description	1	Time & Location
14	3105	description	1	BND 20 First 3 months
4	12	description	1	Brunei Dollar
14	3200	description	1	Broadband Modem - Monthly Rental
14	3100	description	1	Bandwidth 2.5 Mbps
14	3201	description	1	Traffic (Minute)
14	3102	description	1	Bandwidth 1 MB VPN
14	3202	description	1	iCall Installation Charge
14	3103	description	1	Voice Modem - Monthly rental
14	3300	description	1	eSpeed Time Premium Surf
99	1	description	1	Facebook URL
99	3	description	1	Tax Code
101	1	description	1	Invoice Reports
100	1	description	1	Total amount invoiced grouped by period.
14	3400	description	1	Account Setup
14	3401	description	1	SIM status live - recurring charges
14	3402	description	1	SIM - status sleep - recurring charges
14	3403	description	1	SIM - status suspended - recurring charges
14	3404	description	1	SIM card supply fee
14	3405	description	1	Data Traffic (1MB) - Standard
14	3406	description	1	Data Traffic (1MB) - Roaming
14	3407	description	1	SMS message
14	3500	description	1	eHealth
\.


--
-- Data for Name: invoice; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY invoice (id, create_datetime, billing_process_id, user_id, delegated_invoice_id, due_date, total, payment_attempts, status_id, balance, carried_balance, in_process_payment, is_review, currency_id, deleted, paper_invoice_batch_id, customer_notes, public_number, last_reminder, overdue_step, create_timestamp, optlock) FROM stdin;
1	2006-07-26 00:00:00	\N	2	\N	2006-08-26	20.0000000000	1	26	0.0000000000	0.0000000000	1	0	1	1	\N	\N	1	\N	\N	2006-07-26 09:43:43.428	1
2	2006-07-26 00:00:00	\N	2	\N	2006-08-26	15.0000000000	1	26	0.0000000000	0.0000000000	1	0	1	1	\N	\N	2	\N	\N	2006-07-26 09:48:16.931	1
3	2006-07-26 00:00:00	\N	2	5	2006-08-26	35.0000000000	1	28	35.0000000000	0.0000000000	1	0	1	1	\N	\N	3	\N	\N	2006-07-26 09:49:48.723	1
4	2006-07-26 00:00:00	\N	2	5	2006-08-26	20.0000000000	1	28	20.0000000000	0.0000000000	1	0	1	1	\N	\N	4	\N	\N	2006-07-26 09:50:36.882	1
5	2006-08-26 00:00:00	2	2	15	2006-09-26	75.0000000000	0	28	20.0000000000	55.0000000000	1	0	1	1	\N	\N	5	\N	\N	2006-12-19 16:05:00.329	1
15	2006-09-26 00:00:00	12	2	\N	2006-10-26	95.0000000000	1	26	20.0000000000	75.0000000000	1	0	1	1	\N	\N	6	\N	\N	2006-12-19 16:10:00.587	1
35	2007-01-16 00:00:00	\N	2	\N	2007-02-16	15.0000000000	0	27	15.0000000000	0.0000000000	1	0	1	1	\N	\N	7	\N	\N	2007-01-16 14:39:58.115	1
45	2007-07-12 00:00:00	2	2	\N	2017-08-12	20.0000000000	0	27	20.0000000000	0.0000000000	1	0	1	1	\N	\N	8	\N	\N	2007-07-12 13:20:29.858	1
55	2007-08-09 00:00:00	\N	53	\N	2007-09-09	10.0000000000	0	27	10.0000000000	0.0000000000	1	0	1	1	\N	\N	9	\N	\N	2007-08-09 14:42:13.196	1
65	2007-08-09 00:00:00	\N	63	\N	2007-09-09	15.0000000000	0	27	15.0000000000	0.0000000000	1	0	1	1	\N	\N	10	\N	\N	2007-08-09 14:59:04.418	1
70	2007-07-26 00:00:00	\N	10743	\N	2007-08-26	20.0000000000	0	27	20.0000000000	0.0000000000	1	0	1	1	\N	\N	11	\N	\N	2007-07-26 18:17:19.113	1
75	2007-08-16 00:00:00	\N	13	\N	2007-09-16	12.9899997711	0	27	12.9899997711	0.0000000000	1	0	1	1	\N	\N	1	\N	\N	2007-08-16 14:57:08.799	1
8500	2009-07-20 00:00:00	\N	121	\N	2006-09-10	15.0000000000	0	27	15.0000000000	0.0000000000	1	0	1	1	\N	\N	1022	\N	\N	2009-07-20 16:42:04.869	1
8600	2011-02-15 00:00:00	\N	10791	\N	2011-03-15	125.0000000000	1	26	0.0000000000	0.0000000000	1	0	12	0	\N	\N	1023	\N	\N	2011-02-15 16:50:37.314	2
\.


--
-- Data for Name: invoice_delivery_method; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY invoice_delivery_method (id) FROM stdin;
1
2
3
\.


--
-- Data for Name: invoice_line; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY invoice_line (id, invoice_id, type_id, amount, quantity, price, deleted, item_id, description, source_user_id, is_percentage, optlock) FROM stdin;
1	1	1	20.0000000000	1.0000000000	20.0000000000	0	2	Lemonade - all you can drink monthly	2	0	1
2	2	1	15.0000000000	1.0000000000	15.0000000000	0	3	Coffee - one per day - Monthly	2	0	1
3	3	1	15.0000000000	1.0000000000	15.0000000000	0	3	Coffee - one per day - Monthly	2	0	1
4	3	1	20.0000000000	1.0000000000	20.0000000000	0	2	Lemonade - all you can drink monthly	2	0	1
5	4	1	20.0000000000	1.0000000000	20.0000000000	0	2	Lemonade - all you can drink monthly Period from 07/26/2006 to 08/25/2006	2	0	1
6	5	1	20.0000000000	1.0000000000	20.0000000000	0	2	Lemonade - all you can drink monthly Period from 08/26/2006 to 09/25/2006	2	0	1
7	5	3	33.0000000000	\N	\N	0	\N	Invoice number 3 due date 08/26/2006	\N	0	1
8	5	3	10.0000000000	\N	\N	0	\N	Invoice number 4 due date 08/26/2006	\N	0	1
16	15	1	20.0000000000	1.0000000000	20.0000000000	0	2	Lemonade - all you can drink monthly Period from 09/26/2006 to 10/25/2006	2	0	1
17	15	3	63.0000000000	\N	\N	0	\N	Invoice number 5 due date 09/26/2006	\N	0	1
36	35	1	15.0000000000	1.0000000000	15.0000000000	0	3	Coffee - one per day - Monthly	2	0	1
46	45	1	20.0000000000	1.0000000000	20.0000000000	0	2	Lemonade - all you can drink monthly	2	0	1
56	55	1	10.0000000000	1.0000000000	10.0000000000	0	1	Lemonade - 1 per day monthly pass Period from 10/01/2006 to 10/31/2006	53	0	1
66	65	1	15.0000000000	1.0000000000	15.0000000000	0	3	Coffee - one per day - Monthly Period from 09/26/2006 to 10/25/2006	63	0	1
67	70	1	20.0000000000	1.0000000000	20.0000000000	0	2	Lemonade - all you can drink monthly	10743	0	1
76	75	1	12.9899997711	1.0000000000	12.9899997711	0	4	Poison Ivy juice (cold) Period from 12/07/2006 to 01/06/2007	13	0	1
8600	8500	4	15.0000000000	\N	\N	0	251	Lemonade plan - Setup Fee	121	0	1
8700	8600	6	125.0000000000	2500.0000000000	0.0500000000	0	3201	Traffic (Minute)	10791	0	1
\.


--
-- Data for Name: invoice_line_type; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY invoice_line_type (id, description, order_position) FROM stdin;
3	due invoice	1
6	item one-time	3
1	item recurring	2
4	interests	4
5	sub account	5
2	tax	6
\.


--
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY item (id, internal_number, entity_id, percentage, deleted, has_decimals, optlock, price_model_id, gl_code) FROM stdin;
14	J-01	1	-10.0000000000	1	0	1	\N	\N
1	DP-1	1	\N	1	0	3	1	\N
2	DP-2	1	\N	1	0	1	2	\N
3	DP-3	1	\N	1	0	1	3	\N
4	01	2	\N	1	0	1	4	\N
24	F-1	1	\N	1	0	1	14	\N
250	PL-01	1	\N	1	0	2	150	\N
251	ST-01	1	\N	1	0	2	151	\N
270	FE-01	1	\N	1	0	2	152	\N
2600	DR-01	1	\N	1	0	2	1600	\N
2601	DR--02	1	\N	1	0	2	1601	\N
2602	DR-03	1	\N	1	0	2	1602	\N
2700	LD-A	1	\N	1	0	5	1701	\N
2701	LD-B	1	\N	1	0	4	1703	\N
2702	LD-1000	1	\N	1	0	4	1705	\N
2800	CALL-LD	1	\N	1	1	4	1801	\N
2801	CALL-LD-INCLUDE	1	\N	1	1	4	1803	\N
2900	CALL-LD-GEN	1	\N	1	0	2	1900	\N
3000	PL-02	1	\N	1	0	4	2001	\N
240	DP-4	1	\N	1	0	2	2003	\N
3105	BND20	1	\N	1	0	2	2105	\N
3104	TLDC	1	\N	1	0	2	2104	\N
3300	PL-eSpeed	1	\N	1	0	3	2300	\N
3202	INSTALL-01	1	\N	1	0	2	2202	\N
3201	TR-MN	1	\N	1	0	3	2201	\N
3200	MODEM-R-01	1	\N	1	0	2	2200	\N
3103	MODEM-R-02	1	\N	1	0	5	2103	\N
3102	VPN-1MB	1	\N	1	0	6	2102	\N
3101	CARD-01	1	\N	1	0	3	2101	\N
3100	BW-2.5	1	\N	1	0	4	2100	\N
3400	FEE-01-STP	1	\N	0	0	1	2400	00001
3401	SIM-C-L	1	\N	0	0	1	2401	00002
3402	SIM-C-S	1	\N	0	0	1	2402	00003
3403	SIM-C-U	1	\N	0	0	1	2403	00004
3404	SIM-SUP	1	\N	0	0	1	2404	00005
3407	SMS	1	\N	0	0	1	2407	00007
3405	DAT-ST	1	\N	0	1	1	2405	00006
3406	DAT-RO	1	\N	0	1	1	2406	00006
3500	PLAN-EH	1	\N	0	0	1	2500	\N
\.


--
-- Data for Name: item_type; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY item_type (id, entity_id, description, order_line_type_id, optlock, internal) FROM stdin;
2	2	Drinks	1	1	f
2402	1	plans	1	0	t
2403	2	plans	1	0	t
2700	1	SIMs	1	0	f
2701	1	Fees	1	0	f
2401	1	Usage	1	1	f
\.


--
-- Data for Name: item_type_map; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY item_type_map (item_id, type_id) FROM stdin;
4	2
3102	2401
3300	2402
3400	2701
3401	2700
3402	2700
3403	2700
3404	2700
3405	2401
3406	2401
3407	2401
3500	2402
\.


--
-- Data for Name: jbilling_seqs; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY jbilling_seqs (name, next_id) FROM stdin;
entity_delivery_method_map	4
user_status	9
order_status	5
entity_payment_method_map	26
user_credit_card_map	5
permission_role_map	279
user_role_map	13
currency_entity_map	10
subscriber_status	7
order_line_provisioning_status	1
balance_type	0
invoice_status	4
entity_delivery_method_map	4
user_status	9
order_status	5
entity_payment_method_map	26
user_credit_card_map	5
permission_role_map	279
user_role_map	13
currency_entity_map	10
subscriber_status	7
order_line_provisioning_status	1
balance_type	0
invoice_status	4
mediation_record	1
invoice_delivery_method	1
order_line_type	1
order_line_type	1
order_billing_type	1
order_billing_type	1
menu_option	1
menu_option	1
pluggable_task_type_category	1
pluggable_task_type	1
invoice_line_type	1
invoice_line_type	1
currency	1
currency	1
payment_method	1
payment_method	1
payment_result	1
payment_result	1
event_log_module	1
event_log_message	1
event_log_message	1
preference_type	1
preference_type	1
notification_message_type	1
notification_message_type	1
role	1
role	1
country	3
country	3
list_entity	1
list_entity	1
permission	2
permission	2
list_field_entity	1
currency_exchange	3
currency_exchange	3
billing_process_configuration	1
order_period	1
order_period	1
partner_range	2
partner_range	2
partner	2
partner	2
entity	1
entity	1
contact_type	1
contact_type	1
period_unit	1
period_unit	1
payment_info_cheque	17
payment_info_cheque	17
billing_process	2
billing_process	2
process_run	1
process_run	1
process_run_total	1
process_run_total	1
preference	5
preference	5
ageing_entity_step	1
ageing_entity_step	1
language	1
language	1
mediation_cfg	4
blacklist	1
blacklist	1
generic_status	1
generic_status	1
promotion	1
promotion	1
filter	1
filter_set	1
permission_type	1
permission_type	1
invoice_delivery_method	1
event_log_module	1
list_field_entity	1
billing_process_configuration	1
mediation_process	1
mediation_process	1
ach	1
ach	1
partner_payout	1
customer	1086
base_user	1096
customer	1086
partner_payout	1
process_run_total_pm	1
process_run_total_pm	1
payment_authorization	1
payment_authorization	1
paper_invoice_batch	1
invoice	87
invoice	87
contact_map	7912
contact_map	7912
contact	1148
contact_field	2028
invoice_line	88
order_process	87
order_process	87
paper_invoice_batch	1
notification_message_arch	1
notification_message_arch	1
notification_message_arch_line	1
payment	20
credit_card	1016
credit_card	1016
payment_invoice	2
payment_invoice	2
notification_message_arch_line	1
mediation_record_line	1
mediation_record_line	1
contact_type	10
contact_field_type	1
base_user	1096
contact	1148
contact_field	2028
invoice_line	88
pluggable_task_parameter	8315
payment	20
purchase_order	1081
purchase_order	1081
order_line	2083
order_line	2083
notification_message	2
notification_message	2
notification_message_section	2
item_type	28
notification_message_section	2
notification_message_line	2
notification_message_line	2
pluggable_task	607
shortcut	1
report	1
report_type	1
report_parameter	1
entity	2
plan	3
plan_item	3
event_log	480
event_log	480
item_type	28
recent_item	71
price_model	26
item	36
item	36
breadcrumb	440
\.


--
-- Data for Name: jbilling_table; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY jbilling_table (id, name) FROM stdin;
4	currency
5	entity
6	period_unit
7	invoice_delivery_method
8	entity_delivery_method_map
9	user_status
13	item_type
17	order_period
18	order_line_type
19	order_billing_type
20	order_status
23	pluggable_task_type_category
24	pluggable_task_type
28	contact_type
30	invoice_line_type
31	paper_invoice_batch
32	billing_process
33	process_run
34	billing_process_configuration
35	payment_method
36	entity_payment_method_map
37	process_run_total
38	process_run_total_pm
41	payment_result
45	user_credit_card_map
46	event_log_module
47	event_log_message
50	preference_type
52	notification_message_type
53	notification_message
54	notification_message_section
55	notification_message_line
56	notification_message_arch
57	notification_message_arch_line
58	permission_type
59	permission
60	role
61	permission_role_map
62	user_role_map
63	menu_option
64	country
65	promotion
66	payment_authorization
67	currency_exchange
68	currency_entity_map
69	ageing_entity_step
70	partner_payout
75	ach
77	list_entity
78	list_field_entity
80	payment_invoice
81	subscriber_status
82	mediation_cfg
83	mediation_process
84	mediation_record
85	blacklist
86	mediation_record_line
88	order_line_provisioning_status
51	preference
11	partner
44	credit_card
42	payment
43	payment_info_cheque
79	partner_range
89	balance_type
48	event_log
39	invoice
90	invoice_status
76	contact_field
40	invoice_line
49	order_process
25	pluggable_task
26	pluggable_task_parameter
3	language
10	base_user
12	customer
29	contact_map
27	contact
14	item
21	purchase_order
22	order_line
87	generic_status
91	mediation_record_status
92	process_run_status
93	notification_category
94	price_model
95	price_model_attribute
96	plan
97	plan_item
98	customer_price
99	contact_field_type
100	report
101	report_type
102	report_parameter
\.


--
-- Data for Name: language; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY language (id, code, description) FROM stdin;
1	en	English
2	fr	French
\.


--
-- Data for Name: list; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY list (id, legacy_name, title_key, instr_key, optlock) FROM stdin;
1	customerSimple	list.customers.title	\N	1
2	invoiceGeneral	list.invoices.title	\N	1
3	order	list.orders.title	\N	1
4	payment	list.payments.title	\N	1
\.


--
-- Data for Name: list_entity; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY list_entity (id, list_id, entity_id, total_records, last_update, optlock) FROM stdin;
1	1	1	1	2006-12-20	1
2	2	1	6	2006-12-20	1
3	3	1	4	2006-12-20	1
4	4	1	4	2006-12-20	1
5	1	2	1	2006-12-20	1
6	2	2	0	2006-12-20	1
7	3	2	1	2006-12-20	1
8	4	2	0	2006-12-20	1
\.


--
-- Data for Name: list_field; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY list_field (id, list_id, title_key, column_name, ordenable, searchable, data_type, optlock) FROM stdin;
1	1	user.prompt.id	c.id	1	1	integer	1
2	1	contact.list.organization	a.organization_name	0	1	string	1
3	1	customer.last_name	a.last_name	0	1	string	1
4	1	customer.first_name	a.first_name	0	1	string	1
5	1	user.prompt.username	c.user_name	0	1	string	1
6	2	invoice.id.prompt	i.id	0	0	integer	1
7	2	invoice.number	i.public_number	0	1	string	1
8	2	user.prompt.username	bu.user_name	0	1	string	1
9	2	invoice.id.prompt	i.id	1	1	integer	1
10	2	invoice.create_date	i.create_datetime	0	1	date	1
11	2	contact.list.organization	co.organization_name	0	1	string	1
12	2		c.symbol	0	0	string	1
13	2	invoice.total	i.total	0	0	float	1
14	2	invoice.balance	i.balance	0	0	float	1
15	2	invoice.is_payable	i.to_process	0	0	integer	1
16	3	order.prompt.id	po.id	1	1	integer	1
17	3	user.prompt.username	bu.user_name	0	1	string	1
18	3	contact.list.organization	c.organization_name	0	1	string	1
19	3	order.prompt.createDate	po.create_datetime	0	1	date	1
20	4	payment.id	p.id	1	1	integer	1
21	4	user.prompt.username	u.user_name	0	1	string	1
22	4	contact.list.organization	co.organization_name	0	1	string	1
23	4	payment.date	p.create_datetime	0	1	date	1
24	1	creditcard.list.filter	CUSTOM_CC	0	1	string	1
\.


--
-- Data for Name: list_field_entity; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY list_field_entity (id, list_field_id, list_entity_id, min_value, max_value, min_str_value, max_str_value, min_date_value, max_date_value, optlock) FROM stdin;
1	1	1	2	2	\N	\N	\N	\N	1
2	9	2	1	15	\N	\N	\N	\N	1
3	16	3	1	4	\N	\N	\N	\N	1
4	20	4	1	4	\N	\N	\N	\N	1
5	1	5	13	13	\N	\N	\N	\N	1
6	9	6	0	0	\N	\N	\N	\N	1
7	16	7	5	5	\N	\N	\N	\N	1
8	20	8	0	0	\N	\N	\N	\N	1
\.


--
-- Data for Name: mediation_cfg; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY mediation_cfg (id, entity_id, create_datetime, name, order_value, pluggable_task_id, optlock) FROM stdin;
10	1	2007-11-26 10:41:31.55	Asterisk test	1	421	0
20	1	2009-01-13 11:16:50.976	JDBCReader test	2	480	0
30	1	2007-11-26 10:41:31.55	JDBCReader from jbilling_test	1	6020	1
\.


--
-- Data for Name: mediation_errors; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY mediation_errors (accountcode, src, dst, dcontext, clid, channel, dstchannel, lastapp, lastdata, start, answer, "end", duration, billsec, disposition, amaflags, userfield, error_message, should_retry) FROM stdin;
\.


--
-- Data for Name: mediation_order_map; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY mediation_order_map (mediation_process_id, order_id) FROM stdin;
\.


--
-- Data for Name: mediation_process; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY mediation_process (id, configuration_id, start_datetime, end_datetime, orders_affected, optlock) FROM stdin;
1	10	2010-06-04 20:50:43.259058	2010-06-04 20:50:43.259058	0	0
\.


--
-- Data for Name: mediation_record; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY mediation_record (id_key, start_datetime, mediation_process_id, optlock, status_id, id) FROM stdin;
20120	2010-06-04 20:50:46.73041	1	0	32	1
30001	2011-02-15 00:00:00	1	0	30	2
30002	2011-02-15 00:00:00	1	0	30	3
30002	2011-02-15 00:00:00	1	0	30	4
30002	2011-02-15 00:00:00	1	0	30	5
\.


--
-- Data for Name: mediation_record_line; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY mediation_record_line (id, order_line_id, event_date, amount, quantity, description, optlock, mediation_record_id) FROM stdin;
1	208100	2011-02-15 00:00:00	50.0000000000	1000.0000000000	Local Usage	0	2
2	208100	2011-02-15 00:00:00	25.0000000000	500.0000000000	Local Usage	0	2
3	208100	2011-02-15 00:00:00	25.0000000000	500.0000000000	BMobile	0	2
4	208100	2011-02-15 00:00:00	5.0000000000	100.0000000000	REN-BUSINESS MFREQUENCEY PHONE	0	3
5	208100	2011-02-15 00:00:00	10.0000000000	200.0000000000	REN-BUSINESS MFREQUENCEY PHONE	0	4
6	208100	2011-02-15 00:00:00	10.0000000000	200.0000000000	REN-BUSINESS MFREQUENCEY PHONE	0	5
\.


--
-- Data for Name: menu_option; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY menu_option (id, link, level_field, parent_id) FROM stdin;
1	/order/list.jsp	1	\N
2	/payment/list.jsp	1	\N
3	/report/list.jsp	1	\N
4	/userAccount.do	1	\N
5	/user/maintain.jsp	1	\N
6	/user/maintain.jsp	2	5
7	/user/create.jsp?create=yes	3	6
8	/userAccount.do	2	4
9	/user/edit.jsp	3	8
10	/user/editContact.jsp	3	8
11	/userAccount.do	1	\N
12	/user/edit.jsp	2	11
13	/contactEdit.do?action=setup	2	11
14	/logout.do	1	\N
15	/item/list.jsp	1	\N
16	/item/listType.jsp	2	15
17	/item/create.jsp?create=yes	2	15
18	/item/list.jsp	2	15
19	/item/createType.jsp?create=yes	3	16
20	/item/listType.jsp	3	16
21	/item/promotionList.jsp	1	\N
22	/item/promotionCreate.jsp?create=yes	2	21
23	/item/promotionList.jsp	2	21
24	/payment/customerSelect.jsp?create=yes&cheque=yes	2	2
25	/payment/customerSelect.jsp?create=yes&cc=yes	2	2
26	/payment/list.jsp	2	2
27	/order/newOrder.jsp	2	1
28	/order/list.jsp	2	1
29	/creditCardMaintain.do?action=setup&mode=creditCard	3	8
30	/creditCardMaintain.do?action=setup&mode=creditCard	2	11
31	/payment/listRefund.jsp	1	\N
32	/payment/customerSelect.jsp?create=yes&cheque=yes&refund=yes	2	31
33	/payment/customerSelect.jsp?create=yes&cc=yes&refund=yes	2	31
34	/payment/listRefund.jsp	2	31
35	/invoice/list.jsp	1	\N
36	/invoice/list.jsp	2	35
37	/processMaintain.do?action=view&latest=yes	1	\N
38	/process/list.jsp	2	37
39	/processConfigurationMaintain.do?action=setup&mode=configuration	2	37
40	/processMaintain.do?action=view&latest=yes	2	37
41	/processMaintain.do?action=review	2	37
42	/notification/listTypes.jsp	1	\N
43	/notification/listTypes.jsp	2	42
44	/parameterMaintain.do?action=setup&mode=parameter&type=notification	2	42
45	/notification/emails.jsp	2	42
46	/user/list.jsp	1	\N
47	/reportList.do?type=1	2	1
48	/reportList.do?type=2	2	35
49	/reportList.do?type=3	2	2
50	/reportList.do?type=4	2	31
51	/reportList.do?type=5	2	46
52	/user/list.jsp	2	46
53	/report/list.jsp	2	3
54	/user/create.jsp?create=yes&customer=yes&frompartner=yes	2	46
55	/brandingMaintain.do?action=setup&mode=branding	2	4
56	/currencyMaintain.do?action=setup	2	4
57	/ageingMaintain.do?action=setup	2	4
58	/user/create.jsp?create=yes	3	6
59	/user/listPartner.jsp	2	5
60	/user/list.jsp	2	5
61	/user/create.jsp?create=yes&partner=yes	3	59
62	/user/listPartner.jsp	3	59
63	/partnerDefaults.do?action=setup&mode=partnerDefault	3	59
64	/reportList.do?type=6	3	59
65	/reportList.do?type=5	3	60
66	/user/list.jsp	3	60
67	/user/create.jsp?create=yes&customer=yes	3	60
68	/partnerMaintain.do?action=view&self=yes	1	\N
69	/partnerMaintain.do?action=view&self=yes	2	68
70	/user/payoutList.jsp	2	68
71	/reportList.do?type=7	1	\N
72	/reportTrigger.do?mode=partner&id=15	3	59
73	/reportList.do?type=7	2	71
74	/notificationPreference.do?action=setup&mode=notificationPreference	2	42
75	/payment/customerSelect.jsp?create=yes&ach=yes	2	2
76	/numberingMaintain.do?action=setup&mode=invoiceNumbering	2	35
77	/achMaintain.do?action=setup&mode=ach	2	11
78	/user/listSubAccounts.jsp?own=yes	1	\N
79	HELP|page=items|anchor=	2	15
80	HELP|page=reports|anchor=	2	3
81	HELP|page=process|anchor=	2	37
82	HELP|page=users|anchor=	2	5
83	HELP|page=orders|anchor=	2	1
84	HELP|page=notifications|anchor=	2	42
85	HELP|page=system|anchor=	2	4
86	HELP|page=payments|anchor=	2	2
87	HELP|page=invoices|anchor=	2	35
88	HELP|page=promotions|anchor=	2	21
89	HELP|page=payments|anchor=refunds	2	31
90	/payment/customerSelect.jsp?create=yes&paypal=yes	2	2
91	/orderPeriod.do?action=setup	2	1
92	/invoice/batchDownload.jsp	2	35
93	/task.do?action=setup	2	4
94	/invoice/logo.jsp	2	35
95	/mediation/processList.do	2	37
96	/mediation/configuration.do?action=setup	2	4
97	/system/blacklist.jsp	2	4
\.


--
-- Data for Name: notification_category; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY notification_category (id) FROM stdin;
1
2
3
4
\.


--
-- Data for Name: notification_message; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY notification_message (id, type_id, entity_id, language_id, use_flag, optlock) FROM stdin;
1	1	1	1	1	1
2	2	1	1	1	1
3	3	1	1	1	1
4	13	1	1	1	1
7	18	1	1	1	1
8	19	1	1	1	1
9	1	2	1	1	1
10	2	2	1	1	1
11	3	2	1	1	1
12	13	2	1	1	1
13	16	2	1	1	1
14	17	2	1	1	1
15	18	2	1	1	1
16	19	2	1	1	1
18	17	1	1	1	1
19	12	1	1	1	1
100	16	1	1	1	1
\.


--
-- Data for Name: notification_message_arch; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY notification_message_arch (id, type_id, create_datetime, user_id, result_message, optlock) FROM stdin;
\.


--
-- Data for Name: notification_message_arch_line; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY notification_message_arch_line (id, message_archive_id, section, content, optlock) FROM stdin;
\.


--
-- Data for Name: notification_message_line; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY notification_message_line (id, message_section_id, content, optlock) FROM stdin;
1	1	Billing Statement from |company_name|	1
2	2	Some text	1
3	3	Some text	1
4	4	Some text	1
5	5	Some text	1
6	6	Some text	1
7	7	Some text	1
8	8	Some text	1
13	13	Some text	1
14	14	Some text	1
15	15	Some text	1
16	16	Some text	1
17	17	Billing Statement from |company_name|	1
18	18	Some text	1
19	19	You account is now up to date	1
20	20	Some text	1
21	21	Overdue Balance	1
22	22	Some text	1
23	23	Your service from |company_name| is about to expire	1
24	24	Some text	1
25	25	Thank you for your payment	1
26	26	Some text	1
27	27	Payment failed	1
28	28	Some text	1
29	29	Invoice reminder	1
30	30	Some text	1
31	31	It is time to update your credit card	1
32	32	Some text	1
35	35	Payment failed	1
36	36	Some text	1
43	43	Thank you for using Trend!	1
44	44	Your trend friends	1
100	100	Thank you for your payment	1
101	101	Dear $first_name $last_name\r\n\r\nWe have received your payment. Thank you for being a customer!\r\n\r\n$company_name	1
\.


--
-- Data for Name: notification_message_section; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY notification_message_section (id, message_id, section, optlock) FROM stdin;
1	1	1	1
2	1	2	1
3	2	1	1
4	2	2	1
5	3	1	1
6	3	2	1
7	4	1	1
8	4	2	1
13	7	1	1
14	7	2	1
15	8	1	1
16	8	2	1
17	9	1	1
18	9	2	1
19	10	1	1
20	10	2	1
21	11	1	1
22	11	2	1
23	12	1	1
24	12	2	1
25	13	1	1
26	13	2	1
27	14	1	1
28	14	2	1
29	15	1	1
30	15	2	1
31	16	1	1
32	16	2	1
35	18	1	1
36	18	2	1
43	19	1	1
44	19	2	1
100	100	1	1
101	100	2	1
102	100	3	1
\.


--
-- Data for Name: notification_message_type; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY notification_message_type (id, optlock, category_id) FROM stdin;
1	1	1
2	1	4
3	1	4
4	1	4
5	1	4
6	1	4
7	1	4
8	1	4
9	1	4
10	1	3
11	1	3
12	1	1
13	1	2
14	1	2
15	1	2
16	1	3
17	1	3
18	1	1
19	1	4
20	1	4
\.


--
-- Data for Name: order_billing_type; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY order_billing_type (id) FROM stdin;
1
2
9
\.


--
-- Data for Name: order_line; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY order_line (id, order_id, item_id, type_id, amount, quantity, price, item_price, create_datetime, deleted, description, provisioning_status, provisioning_request_id, optlock) FROM stdin;
1	1	2	1	20.0000000000	1.0000000000	20.0000000000	0	2006-07-26 09:43:39.873	0	Lemonade - all you can drink monthly	\N	\N	1
2	2	3	1	15.0000000000	1.0000000000	15.0000000000	0	2006-07-26 09:48:13.977	0	Coffee - one per day - Monthly	\N	\N	1
3	3	3	1	15.0000000000	1.0000000000	15.0000000000	0	2006-07-26 09:49:38.659	0	Coffee - one per day - Monthly	\N	\N	1
4	3	2	1	20.0000000000	1.0000000000	20.0000000000	0	2006-07-26 09:49:38.659	0	Lemonade - all you can drink monthly	\N	\N	1
5	4	2	1	20.0000000000	1.0000000000	20.0000000000	0	2006-07-26 09:50:34.319	0	Lemonade - all you can drink monthly	\N	\N	1
6	5	4	1	12.9899997711	1.0000000000	12.9899997711	0	2006-12-07 14:58:53.163	0	Poison Ivy juice (cold)	\N	\N	1
16	15	3	1	15.0000000000	1.0000000000	15.0000000000	0	2007-01-16 14:39:49.152	0	Coffee - one per day - Monthly	\N	\N	1
26	25	2	1	20.0000000000	1.0000000000	20.0000000000	0	2007-07-12 13:20:22.284	0	Lemonade - all you can drink monthly	\N	\N	1
36	35	1	1	10.0000000000	1.0000000000	10.0000000000	0	2007-08-09 14:41:51.222	0	Lemonade - 1 per day monthly pass	\N	\N	1
46	45	3	1	15.0000000000	1.0000000000	15.0000000000	0	2007-08-09 14:59:01.55	0	Coffee - one per day - Monthly	\N	\N	1
56	55	1	1	890.0000000000	89.0000000000	10.0000000000	\N	2007-09-12 12:09:06.976	0	First line	\N	\N	1
57	55	2	1	1140.0000000000	57.0000000000	20.0000000000	\N	2007-09-12 12:09:06.986	0	Second line	\N	\N	1
58	56	1	1	310.0000000000	31.0000000000	10.0000000000	\N	2007-09-12 12:09:07.335	0	First line	\N	\N	1
59	56	2	1	1180.0000000000	59.0000000000	20.0000000000	\N	2007-09-12 12:09:07.339	0	Second line	\N	\N	1
60	57	1	1	640.0000000000	64.0000000000	10.0000000000	\N	2007-09-12 12:09:07.876	0	First line	\N	\N	1
61	57	2	1	680.0000000000	34.0000000000	20.0000000000	\N	2007-09-12 12:09:07.881	0	Second line	\N	\N	1
62	58	1	1	140.0000000000	14.0000000000	10.0000000000	\N	2007-09-12 12:09:08.218	0	First line	\N	\N	1
63	58	2	1	1640.0000000000	82.0000000000	20.0000000000	\N	2007-09-12 12:09:08.221	0	Second line	\N	\N	1
64	59	1	1	540.0000000000	54.0000000000	10.0000000000	\N	2007-09-12 12:09:08.52	0	First line	\N	\N	1
65	59	2	1	700.0000000000	35.0000000000	20.0000000000	\N	2007-09-12 12:09:08.523	0	Second line	\N	\N	1
66	60	1	1	870.0000000000	87.0000000000	10.0000000000	\N	2007-09-12 12:09:08.915	0	First line	\N	\N	1
67	60	2	1	1120.0000000000	56.0000000000	20.0000000000	\N	2007-09-12 12:09:08.928	0	Second line	\N	\N	1
68	61	1	1	970.0000000000	97.0000000000	10.0000000000	\N	2007-09-12 12:09:09.552	0	First line	\N	\N	1
69	61	2	1	540.0000000000	27.0000000000	20.0000000000	\N	2007-09-12 12:09:09.603	0	Second line	\N	\N	1
70	62	1	1	630.0000000000	63.0000000000	10.0000000000	\N	2007-09-12 12:09:10.039	0	First line	\N	\N	1
71	62	2	1	1580.0000000000	79.0000000000	20.0000000000	\N	2007-09-12 12:09:10.043	0	Second line	\N	\N	1
72	63	1	1	470.0000000000	47.0000000000	10.0000000000	\N	2007-09-12 12:09:10.346	0	First line	\N	\N	1
73	63	2	1	280.0000000000	14.0000000000	20.0000000000	\N	2007-09-12 12:09:10.35	0	Second line	\N	\N	1
74	64	1	1	210.0000000000	21.0000000000	10.0000000000	\N	2007-09-12 12:09:10.628	0	First line	\N	\N	1
75	64	2	1	1600.0000000000	80.0000000000	20.0000000000	\N	2007-09-12 12:09:10.63	0	Second line	\N	\N	1
76	65	1	1	840.0000000000	84.0000000000	10.0000000000	\N	2007-09-12 12:09:11.128	0	First line	\N	\N	1
77	65	2	1	1880.0000000000	94.0000000000	20.0000000000	\N	2007-09-12 12:09:11.137	0	Second line	\N	\N	1
78	66	1	1	600.0000000000	60.0000000000	10.0000000000	\N	2007-09-12 12:09:11.648	0	First line	\N	\N	1
79	66	2	1	720.0000000000	36.0000000000	20.0000000000	\N	2007-09-12 12:09:11.659	0	Second line	\N	\N	1
80	67	1	1	260.0000000000	26.0000000000	10.0000000000	\N	2007-09-12 12:09:12.063	0	First line	\N	\N	1
81	67	2	1	60.0000000000	3.0000000000	20.0000000000	\N	2007-09-12 12:09:12.066	0	Second line	\N	\N	1
82	68	1	1	150.0000000000	15.0000000000	10.0000000000	\N	2007-09-12 12:09:12.395	0	First line	\N	\N	1
83	68	2	1	200.0000000000	10.0000000000	20.0000000000	\N	2007-09-12 12:09:12.398	0	Second line	\N	\N	1
84	69	1	1	960.0000000000	96.0000000000	10.0000000000	\N	2007-09-12 12:09:12.674	0	First line	\N	\N	1
85	69	2	1	20.0000000000	1.0000000000	20.0000000000	\N	2007-09-12 12:09:12.677	0	Second line	\N	\N	1
86	70	1	1	670.0000000000	67.0000000000	10.0000000000	\N	2007-09-12 12:09:13.248	0	First line	\N	\N	1
87	70	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:09:13.266	0	Second line	\N	\N	1
88	71	1	1	600.0000000000	60.0000000000	10.0000000000	\N	2007-09-12 12:09:13.786	0	First line	\N	\N	1
89	71	2	1	1220.0000000000	61.0000000000	20.0000000000	\N	2007-09-12 12:09:13.795	0	Second line	\N	\N	1
90	72	1	1	570.0000000000	57.0000000000	10.0000000000	\N	2007-09-12 12:09:14.103	0	First line	\N	\N	1
91	72	2	1	1760.0000000000	88.0000000000	20.0000000000	\N	2007-09-12 12:09:14.106	0	Second line	\N	\N	1
92	73	1	1	400.0000000000	40.0000000000	10.0000000000	\N	2007-09-12 12:09:14.363	0	First line	\N	\N	1
93	73	2	1	620.0000000000	31.0000000000	20.0000000000	\N	2007-09-12 12:09:14.366	0	Second line	\N	\N	1
94	74	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:09:14.63	0	First line	\N	\N	1
95	74	2	1	480.0000000000	24.0000000000	20.0000000000	\N	2007-09-12 12:09:14.632	0	Second line	\N	\N	1
96	75	1	1	920.0000000000	92.0000000000	10.0000000000	\N	2007-09-12 12:09:14.897	0	First line	\N	\N	1
97	75	2	1	760.0000000000	38.0000000000	20.0000000000	\N	2007-09-12 12:09:14.901	0	Second line	\N	\N	1
98	76	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:09:15.418	0	First line	\N	\N	1
99	76	2	1	500.0000000000	25.0000000000	20.0000000000	\N	2007-09-12 12:09:15.425	0	Second line	\N	\N	1
100	77	1	1	910.0000000000	91.0000000000	10.0000000000	\N	2007-09-12 12:09:16	0	First line	\N	\N	1
101	77	2	1	1260.0000000000	63.0000000000	20.0000000000	\N	2007-09-12 12:09:16.083	0	Second line	\N	\N	1
102	78	1	1	40.0000000000	4.0000000000	10.0000000000	\N	2007-09-12 12:09:16.513	0	First line	\N	\N	1
103	78	2	1	1060.0000000000	53.0000000000	20.0000000000	\N	2007-09-12 12:09:16.516	0	Second line	\N	\N	1
104	79	1	1	500.0000000000	50.0000000000	10.0000000000	\N	2007-09-12 12:09:16.781	0	First line	\N	\N	1
105	79	2	1	1520.0000000000	76.0000000000	20.0000000000	\N	2007-09-12 12:09:16.784	0	Second line	\N	\N	1
106	80	1	1	650.0000000000	65.0000000000	10.0000000000	\N	2007-09-12 12:09:17.039	0	First line	\N	\N	1
107	80	2	1	1300.0000000000	65.0000000000	20.0000000000	\N	2007-09-12 12:09:17.042	0	Second line	\N	\N	1
108	81	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:09:17.398	0	First line	\N	\N	1
109	81	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:09:17.41	0	Second line	\N	\N	1
110	82	1	1	290.0000000000	29.0000000000	10.0000000000	\N	2007-09-12 12:09:17.951	0	First line	\N	\N	1
111	82	2	1	1380.0000000000	69.0000000000	20.0000000000	\N	2007-09-12 12:09:17.963	0	Second line	\N	\N	1
112	83	1	1	550.0000000000	55.0000000000	10.0000000000	\N	2007-09-12 12:09:18.443	0	First line	\N	\N	1
113	83	2	1	800.0000000000	40.0000000000	20.0000000000	\N	2007-09-12 12:09:18.445	0	Second line	\N	\N	1
114	84	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:09:18.706	0	First line	\N	\N	1
115	84	2	1	180.0000000000	9.0000000000	20.0000000000	\N	2007-09-12 12:09:18.709	0	Second line	\N	\N	1
116	85	1	1	450.0000000000	45.0000000000	10.0000000000	\N	2007-09-12 12:09:18.964	0	First line	\N	\N	1
117	85	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:09:18.967	0	Second line	\N	\N	1
118	86	1	1	640.0000000000	64.0000000000	10.0000000000	\N	2007-09-12 12:09:19.209	0	First line	\N	\N	1
119	86	2	1	1420.0000000000	71.0000000000	20.0000000000	\N	2007-09-12 12:09:19.212	0	Second line	\N	\N	1
120	87	1	1	900.0000000000	90.0000000000	10.0000000000	\N	2007-09-12 12:09:19.562	0	First line	\N	\N	1
121	87	2	1	860.0000000000	43.0000000000	20.0000000000	\N	2007-09-12 12:09:19.574	0	Second line	\N	\N	1
122	88	1	1	660.0000000000	66.0000000000	10.0000000000	\N	2007-09-12 12:09:20.095	0	First line	\N	\N	1
123	88	2	1	680.0000000000	34.0000000000	20.0000000000	\N	2007-09-12 12:09:20.102	0	Second line	\N	\N	1
124	89	1	1	440.0000000000	44.0000000000	10.0000000000	\N	2007-09-12 12:09:20.575	0	First line	\N	\N	1
125	89	2	1	1300.0000000000	65.0000000000	20.0000000000	\N	2007-09-12 12:09:20.581	0	Second line	\N	\N	1
126	90	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:09:21.02	0	First line	\N	\N	1
127	90	2	1	1780.0000000000	89.0000000000	20.0000000000	\N	2007-09-12 12:09:21.023	0	Second line	\N	\N	1
128	91	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:09:21.259	0	First line	\N	\N	1
129	91	2	1	1140.0000000000	57.0000000000	20.0000000000	\N	2007-09-12 12:09:21.262	0	Second line	\N	\N	1
130	92	1	1	180.0000000000	18.0000000000	10.0000000000	\N	2007-09-12 12:09:21.522	0	First line	\N	\N	1
131	92	2	1	780.0000000000	39.0000000000	20.0000000000	\N	2007-09-12 12:09:21.525	0	Second line	\N	\N	1
132	93	1	1	780.0000000000	78.0000000000	10.0000000000	\N	2007-09-12 12:09:21.785	0	First line	\N	\N	1
133	93	2	1	1360.0000000000	68.0000000000	20.0000000000	\N	2007-09-12 12:09:21.788	0	Second line	\N	\N	1
134	94	1	1	920.0000000000	92.0000000000	10.0000000000	\N	2007-09-12 12:09:22.173	0	First line	\N	\N	1
135	94	2	1	580.0000000000	29.0000000000	20.0000000000	\N	2007-09-12 12:09:22.181	0	Second line	\N	\N	1
136	95	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:09:22.663	0	First line	\N	\N	1
137	95	2	1	220.0000000000	11.0000000000	20.0000000000	\N	2007-09-12 12:09:22.675	0	Second line	\N	\N	1
138	96	1	1	360.0000000000	36.0000000000	10.0000000000	\N	2007-09-12 12:09:23.171	0	First line	\N	\N	1
139	96	2	1	1400.0000000000	70.0000000000	20.0000000000	\N	2007-09-12 12:09:23.193	0	Second line	\N	\N	1
140	97	1	1	600.0000000000	60.0000000000	10.0000000000	\N	2007-09-12 12:09:23.564	0	First line	\N	\N	1
141	97	2	1	1400.0000000000	70.0000000000	20.0000000000	\N	2007-09-12 12:09:23.566	0	Second line	\N	\N	1
142	98	1	1	780.0000000000	78.0000000000	10.0000000000	\N	2007-09-12 12:09:23.825	0	First line	\N	\N	1
143	98	2	1	1460.0000000000	73.0000000000	20.0000000000	\N	2007-09-12 12:09:23.827	0	Second line	\N	\N	1
144	99	1	1	440.0000000000	44.0000000000	10.0000000000	\N	2007-09-12 12:09:24.069	0	First line	\N	\N	1
145	99	2	1	1320.0000000000	66.0000000000	20.0000000000	\N	2007-09-12 12:09:24.071	0	Second line	\N	\N	1
146	100	1	1	960.0000000000	96.0000000000	10.0000000000	\N	2007-09-12 12:09:24.323	0	First line	\N	\N	1
147	100	2	1	1200.0000000000	60.0000000000	20.0000000000	\N	2007-09-12 12:09:24.326	0	Second line	\N	\N	1
148	101	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:09:24.722	0	First line	\N	\N	1
149	101	2	1	1220.0000000000	61.0000000000	20.0000000000	\N	2007-09-12 12:09:24.731	0	Second line	\N	\N	1
150	102	1	1	410.0000000000	41.0000000000	10.0000000000	\N	2007-09-12 12:09:25.20	0	First line	\N	\N	1
151	102	2	1	1640.0000000000	82.0000000000	20.0000000000	\N	2007-09-12 12:09:25.21	0	Second line	\N	\N	1
152	103	1	1	140.0000000000	14.0000000000	10.0000000000	\N	2007-09-12 12:09:25.702	0	First line	\N	\N	1
153	103	2	1	700.0000000000	35.0000000000	20.0000000000	\N	2007-09-12 12:09:25.707	0	Second line	\N	\N	1
154	104	1	1	200.0000000000	20.0000000000	10.0000000000	\N	2007-09-12 12:09:26.07	0	First line	\N	\N	1
155	104	2	1	280.0000000000	14.0000000000	20.0000000000	\N	2007-09-12 12:09:26.072	0	Second line	\N	\N	1
156	105	1	1	880.0000000000	88.0000000000	10.0000000000	\N	2007-09-12 12:09:26.335	0	First line	\N	\N	1
157	105	2	1	880.0000000000	44.0000000000	20.0000000000	\N	2007-09-12 12:09:26.338	0	Second line	\N	\N	1
158	106	1	1	400.0000000000	40.0000000000	10.0000000000	\N	2007-09-12 12:09:26.591	0	First line	\N	\N	1
159	106	2	1	540.0000000000	27.0000000000	20.0000000000	\N	2007-09-12 12:09:26.594	0	Second line	\N	\N	1
160	107	1	1	110.0000000000	11.0000000000	10.0000000000	\N	2007-09-12 12:09:26.841	0	First line	\N	\N	1
161	107	2	1	800.0000000000	40.0000000000	20.0000000000	\N	2007-09-12 12:09:26.843	0	Second line	\N	\N	1
162	108	1	1	930.0000000000	93.0000000000	10.0000000000	\N	2007-09-12 12:09:27.266	0	First line	\N	\N	1
163	108	2	1	980.0000000000	49.0000000000	20.0000000000	\N	2007-09-12 12:09:27.271	0	Second line	\N	\N	1
164	109	1	1	890.0000000000	89.0000000000	10.0000000000	\N	2007-09-12 12:09:27.736	0	First line	\N	\N	1
165	109	2	1	940.0000000000	47.0000000000	20.0000000000	\N	2007-09-12 12:09:27.747	0	Second line	\N	\N	1
166	110	1	1	180.0000000000	18.0000000000	10.0000000000	\N	2007-09-12 12:09:28.286	0	First line	\N	\N	1
167	110	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:09:28.292	0	Second line	\N	\N	1
168	111	1	1	740.0000000000	74.0000000000	10.0000000000	\N	2007-09-12 12:09:28.584	0	First line	\N	\N	1
169	111	2	1	2000.0000000000	100.0000000000	20.0000000000	\N	2007-09-12 12:09:28.586	0	Second line	\N	\N	1
170	112	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:09:28.829	0	First line	\N	\N	1
171	112	2	1	880.0000000000	44.0000000000	20.0000000000	\N	2007-09-12 12:09:28.832	0	Second line	\N	\N	1
172	113	1	1	960.0000000000	96.0000000000	10.0000000000	\N	2007-09-12 12:09:29.079	0	First line	\N	\N	1
173	113	2	1	320.0000000000	16.0000000000	20.0000000000	\N	2007-09-12 12:09:29.081	0	Second line	\N	\N	1
174	114	1	1	940.0000000000	94.0000000000	10.0000000000	\N	2007-09-12 12:09:29.331	0	First line	\N	\N	1
175	114	2	1	780.0000000000	39.0000000000	20.0000000000	\N	2007-09-12 12:09:29.333	0	Second line	\N	\N	1
176	115	1	1	150.0000000000	15.0000000000	10.0000000000	\N	2007-09-12 12:09:29.86	0	First line	\N	\N	1
177	115	2	1	1840.0000000000	92.0000000000	20.0000000000	\N	2007-09-12 12:09:29.866	0	Second line	\N	\N	1
178	116	1	1	60.0000000000	6.0000000000	10.0000000000	\N	2007-09-12 12:09:30.358	0	First line	\N	\N	1
179	116	2	1	560.0000000000	28.0000000000	20.0000000000	\N	2007-09-12 12:09:30.366	0	Second line	\N	\N	1
180	117	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:09:30.833	0	First line	\N	\N	1
181	117	2	1	1320.0000000000	66.0000000000	20.0000000000	\N	2007-09-12 12:09:30.838	0	Second line	\N	\N	1
182	118	1	1	950.0000000000	95.0000000000	10.0000000000	\N	2007-09-12 12:09:31.121	0	First line	\N	\N	1
183	118	2	1	280.0000000000	14.0000000000	20.0000000000	\N	2007-09-12 12:09:31.124	0	Second line	\N	\N	1
184	119	1	1	810.0000000000	81.0000000000	10.0000000000	\N	2007-09-12 12:09:31.369	0	First line	\N	\N	1
185	119	2	1	840.0000000000	42.0000000000	20.0000000000	\N	2007-09-12 12:09:31.371	0	Second line	\N	\N	1
186	120	1	1	210.0000000000	21.0000000000	10.0000000000	\N	2007-09-12 12:09:31.614	0	First line	\N	\N	1
187	120	2	1	200.0000000000	10.0000000000	20.0000000000	\N	2007-09-12 12:09:31.616	0	Second line	\N	\N	1
188	121	1	1	50.0000000000	5.0000000000	10.0000000000	\N	2007-09-12 12:09:31.875	0	First line	\N	\N	1
189	121	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:09:31.878	0	Second line	\N	\N	1
190	122	1	1	330.0000000000	33.0000000000	10.0000000000	\N	2007-09-12 12:09:32.331	0	First line	\N	\N	1
191	122	2	1	1240.0000000000	62.0000000000	20.0000000000	\N	2007-09-12 12:09:32.334	0	Second line	\N	\N	1
192	123	1	1	190.0000000000	19.0000000000	10.0000000000	\N	2007-09-12 12:09:32.838	0	First line	\N	\N	1
193	123	2	1	180.0000000000	9.0000000000	20.0000000000	\N	2007-09-12 12:09:32.845	0	Second line	\N	\N	1
194	124	1	1	920.0000000000	92.0000000000	10.0000000000	\N	2007-09-12 12:09:33.349	0	First line	\N	\N	1
195	124	2	1	1600.0000000000	80.0000000000	20.0000000000	\N	2007-09-12 12:09:33.353	0	Second line	\N	\N	1
196	125	1	1	960.0000000000	96.0000000000	10.0000000000	\N	2007-09-12 12:09:33.611	0	First line	\N	\N	1
197	125	2	1	1920.0000000000	96.0000000000	20.0000000000	\N	2007-09-12 12:09:33.614	0	Second line	\N	\N	1
198	126	1	1	530.0000000000	53.0000000000	10.0000000000	\N	2007-09-12 12:09:33.86	0	First line	\N	\N	1
199	126	2	1	400.0000000000	20.0000000000	20.0000000000	\N	2007-09-12 12:09:33.862	0	Second line	\N	\N	1
200	127	1	1	200.0000000000	20.0000000000	10.0000000000	\N	2007-09-12 12:09:34.109	0	First line	\N	\N	1
201	127	2	1	1960.0000000000	98.0000000000	20.0000000000	\N	2007-09-12 12:09:34.112	0	Second line	\N	\N	1
202	128	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:09:34.353	0	First line	\N	\N	1
203	128	2	1	1220.0000000000	61.0000000000	20.0000000000	\N	2007-09-12 12:09:34.355	0	Second line	\N	\N	1
204	129	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:09:34.816	0	First line	\N	\N	1
205	129	2	1	1700.0000000000	85.0000000000	20.0000000000	\N	2007-09-12 12:09:34.824	0	Second line	\N	\N	1
206	130	1	1	600.0000000000	60.0000000000	10.0000000000	\N	2007-09-12 12:09:35.278	0	First line	\N	\N	1
207	130	2	1	60.0000000000	3.0000000000	20.0000000000	\N	2007-09-12 12:09:35.291	0	Second line	\N	\N	1
208	131	1	1	670.0000000000	67.0000000000	10.0000000000	\N	2007-09-12 12:09:35.754	0	First line	\N	\N	1
209	131	2	1	1780.0000000000	89.0000000000	20.0000000000	\N	2007-09-12 12:09:35.758	0	Second line	\N	\N	1
210	132	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:09:36.152	0	First line	\N	\N	1
211	132	2	1	220.0000000000	11.0000000000	20.0000000000	\N	2007-09-12 12:09:36.155	0	Second line	\N	\N	1
212	133	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:09:36.385	0	First line	\N	\N	1
213	133	2	1	300.0000000000	15.0000000000	20.0000000000	\N	2007-09-12 12:09:36.388	0	Second line	\N	\N	1
214	134	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:09:36.639	0	First line	\N	\N	1
215	134	2	1	1220.0000000000	61.0000000000	20.0000000000	\N	2007-09-12 12:09:36.641	0	Second line	\N	\N	1
216	135	1	1	250.0000000000	25.0000000000	10.0000000000	\N	2007-09-12 12:09:36.88	0	First line	\N	\N	1
217	135	2	1	40.0000000000	2.0000000000	20.0000000000	\N	2007-09-12 12:09:36.882	0	Second line	\N	\N	1
218	136	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:09:37.21	0	First line	\N	\N	1
219	136	2	1	1900.0000000000	95.0000000000	20.0000000000	\N	2007-09-12 12:09:37.219	0	Second line	\N	\N	1
220	137	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:09:37.685	0	First line	\N	\N	1
221	137	2	1	620.0000000000	31.0000000000	20.0000000000	\N	2007-09-12 12:09:37.693	0	Second line	\N	\N	1
222	138	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:09:38.111	0	First line	\N	\N	1
223	138	2	1	1980.0000000000	99.0000000000	20.0000000000	\N	2007-09-12 12:09:38.115	0	Second line	\N	\N	1
224	139	1	1	350.0000000000	35.0000000000	10.0000000000	\N	2007-09-12 12:09:38.555	0	First line	\N	\N	1
225	139	2	1	1720.0000000000	86.0000000000	20.0000000000	\N	2007-09-12 12:09:38.561	0	Second line	\N	\N	1
226	140	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:09:38.945	0	First line	\N	\N	1
227	140	2	1	800.0000000000	40.0000000000	20.0000000000	\N	2007-09-12 12:09:38.947	0	Second line	\N	\N	1
228	141	1	1	690.0000000000	69.0000000000	10.0000000000	\N	2007-09-12 12:09:39.18	0	First line	\N	\N	1
229	141	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:09:39.182	0	Second line	\N	\N	1
230	142	1	1	280.0000000000	28.0000000000	10.0000000000	\N	2007-09-12 12:09:39.442	0	First line	\N	\N	1
231	142	2	1	900.0000000000	45.0000000000	20.0000000000	\N	2007-09-12 12:09:39.444	0	Second line	\N	\N	1
232	143	1	1	620.0000000000	62.0000000000	10.0000000000	\N	2007-09-12 12:09:39.677	0	First line	\N	\N	1
233	143	2	1	800.0000000000	40.0000000000	20.0000000000	\N	2007-09-12 12:09:39.68	0	Second line	\N	\N	1
234	144	1	1	1000.0000000000	100.0000000000	10.0000000000	\N	2007-09-12 12:09:39.965	0	First line	\N	\N	1
235	144	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:09:39.976	0	Second line	\N	\N	1
236	145	1	1	670.0000000000	67.0000000000	10.0000000000	\N	2007-09-12 12:09:40.501	0	First line	\N	\N	1
237	145	2	1	740.0000000000	37.0000000000	20.0000000000	\N	2007-09-12 12:09:40.511	0	Second line	\N	\N	1
238	146	1	1	790.0000000000	79.0000000000	10.0000000000	\N	2007-09-12 12:09:40.992	0	First line	\N	\N	1
239	146	2	1	320.0000000000	16.0000000000	20.0000000000	\N	2007-09-12 12:09:40.997	0	Second line	\N	\N	1
240	147	1	1	880.0000000000	88.0000000000	10.0000000000	\N	2007-09-12 12:09:41.461	0	First line	\N	\N	1
241	147	2	1	680.0000000000	34.0000000000	20.0000000000	\N	2007-09-12 12:09:41.471	0	Second line	\N	\N	1
242	148	1	1	10.0000000000	1.0000000000	10.0000000000	\N	2007-09-12 12:09:41.741	0	First line	\N	\N	1
243	148	2	1	1760.0000000000	88.0000000000	20.0000000000	\N	2007-09-12 12:09:41.744	0	Second line	\N	\N	1
244	149	1	1	430.0000000000	43.0000000000	10.0000000000	\N	2007-09-12 12:09:41.996	0	First line	\N	\N	1
245	149	2	1	1560.0000000000	78.0000000000	20.0000000000	\N	2007-09-12 12:09:41.999	0	Second line	\N	\N	1
246	150	1	1	620.0000000000	62.0000000000	10.0000000000	\N	2007-09-12 12:09:42.253	0	First line	\N	\N	1
247	150	2	1	400.0000000000	20.0000000000	20.0000000000	\N	2007-09-12 12:09:42.255	0	Second line	\N	\N	1
248	151	1	1	370.0000000000	37.0000000000	10.0000000000	\N	2007-09-12 12:09:42.488	0	First line	\N	\N	1
249	151	2	1	1880.0000000000	94.0000000000	20.0000000000	\N	2007-09-12 12:09:42.491	0	Second line	\N	\N	1
250	152	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:09:42.961	0	First line	\N	\N	1
251	152	2	1	1760.0000000000	88.0000000000	20.0000000000	\N	2007-09-12 12:09:42.971	0	Second line	\N	\N	1
252	153	1	1	140.0000000000	14.0000000000	10.0000000000	\N	2007-09-12 12:09:43.472	0	First line	\N	\N	1
253	153	2	1	520.0000000000	26.0000000000	20.0000000000	\N	2007-09-12 12:09:43.482	0	Second line	\N	\N	1
254	154	1	1	230.0000000000	23.0000000000	10.0000000000	\N	2007-09-12 12:09:43.953	0	First line	\N	\N	1
255	154	2	1	720.0000000000	36.0000000000	20.0000000000	\N	2007-09-12 12:09:43.955	0	Second line	\N	\N	1
256	155	1	1	890.0000000000	89.0000000000	10.0000000000	\N	2007-09-12 12:09:44.20	0	First line	\N	\N	1
257	155	2	1	340.0000000000	17.0000000000	20.0000000000	\N	2007-09-12 12:09:44.202	0	Second line	\N	\N	1
258	156	1	1	960.0000000000	96.0000000000	10.0000000000	\N	2007-09-12 12:09:44.44	0	First line	\N	\N	1
259	156	2	1	940.0000000000	47.0000000000	20.0000000000	\N	2007-09-12 12:09:44.442	0	Second line	\N	\N	1
260	157	1	1	570.0000000000	57.0000000000	10.0000000000	\N	2007-09-12 12:09:44.684	0	First line	\N	\N	1
261	157	2	1	180.0000000000	9.0000000000	20.0000000000	\N	2007-09-12 12:09:44.686	0	Second line	\N	\N	1
262	158	1	1	740.0000000000	74.0000000000	10.0000000000	\N	2007-09-12 12:09:44.942	0	First line	\N	\N	1
263	158	2	1	1340.0000000000	67.0000000000	20.0000000000	\N	2007-09-12 12:09:44.944	0	Second line	\N	\N	1
264	159	1	1	780.0000000000	78.0000000000	10.0000000000	\N	2007-09-12 12:09:45.409	0	First line	\N	\N	1
265	159	2	1	1360.0000000000	68.0000000000	20.0000000000	\N	2007-09-12 12:09:45.417	0	Second line	\N	\N	1
266	160	1	1	50.0000000000	5.0000000000	10.0000000000	\N	2007-09-12 12:09:45.895	0	First line	\N	\N	1
267	160	2	1	1000.0000000000	50.0000000000	20.0000000000	\N	2007-09-12 12:09:45.904	0	Second line	\N	\N	1
268	161	1	1	260.0000000000	26.0000000000	10.0000000000	\N	2007-09-12 12:09:46.414	0	First line	\N	\N	1
269	161	2	1	600.0000000000	30.0000000000	20.0000000000	\N	2007-09-12 12:09:46.42	0	Second line	\N	\N	1
270	162	1	1	190.0000000000	19.0000000000	10.0000000000	\N	2007-09-12 12:09:46.716	0	First line	\N	\N	1
271	162	2	1	1400.0000000000	70.0000000000	20.0000000000	\N	2007-09-12 12:09:46.719	0	Second line	\N	\N	1
272	163	1	1	970.0000000000	97.0000000000	10.0000000000	\N	2007-09-12 12:09:46.961	0	First line	\N	\N	1
273	163	2	1	860.0000000000	43.0000000000	20.0000000000	\N	2007-09-12 12:09:46.964	0	Second line	\N	\N	1
274	164	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:09:47.209	0	First line	\N	\N	1
275	164	2	1	1900.0000000000	95.0000000000	20.0000000000	\N	2007-09-12 12:09:47.211	0	Second line	\N	\N	1
276	165	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:09:47.457	0	First line	\N	\N	1
277	165	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:09:47.46	0	Second line	\N	\N	1
278	166	1	1	490.0000000000	49.0000000000	10.0000000000	\N	2007-09-12 12:09:47.922	0	First line	\N	\N	1
279	166	2	1	1700.0000000000	85.0000000000	20.0000000000	\N	2007-09-12 12:09:47.925	0	Second line	\N	\N	1
280	167	1	1	850.0000000000	85.0000000000	10.0000000000	\N	2007-09-12 12:09:48.389	0	First line	\N	\N	1
281	167	2	1	160.0000000000	8.0000000000	20.0000000000	\N	2007-09-12 12:09:48.396	0	Second line	\N	\N	1
282	168	1	1	250.0000000000	25.0000000000	10.0000000000	\N	2007-09-12 12:09:48.90	0	First line	\N	\N	1
283	168	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:09:48.917	0	Second line	\N	\N	1
284	169	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:09:49.28	0	First line	\N	\N	1
285	169	2	1	1780.0000000000	89.0000000000	20.0000000000	\N	2007-09-12 12:09:49.282	0	Second line	\N	\N	1
286	170	1	1	940.0000000000	94.0000000000	10.0000000000	\N	2007-09-12 12:09:49.536	0	First line	\N	\N	1
287	170	2	1	1100.0000000000	55.0000000000	20.0000000000	\N	2007-09-12 12:09:49.539	0	Second line	\N	\N	1
288	171	1	1	540.0000000000	54.0000000000	10.0000000000	\N	2007-09-12 12:09:49.779	0	First line	\N	\N	1
289	171	2	1	200.0000000000	10.0000000000	20.0000000000	\N	2007-09-12 12:09:49.782	0	Second line	\N	\N	1
290	172	1	1	990.0000000000	99.0000000000	10.0000000000	\N	2007-09-12 12:09:50.024	0	First line	\N	\N	1
291	172	2	1	1300.0000000000	65.0000000000	20.0000000000	\N	2007-09-12 12:09:50.027	0	Second line	\N	\N	1
292	173	1	1	630.0000000000	63.0000000000	10.0000000000	\N	2007-09-12 12:09:50.359	0	First line	\N	\N	1
293	173	2	1	1400.0000000000	70.0000000000	20.0000000000	\N	2007-09-12 12:09:50.366	0	Second line	\N	\N	1
294	174	1	1	910.0000000000	91.0000000000	10.0000000000	\N	2007-09-12 12:09:50.852	0	First line	\N	\N	1
295	174	2	1	860.0000000000	43.0000000000	20.0000000000	\N	2007-09-12 12:09:50.866	0	Second line	\N	\N	1
296	175	1	1	960.0000000000	96.0000000000	10.0000000000	\N	2007-09-12 12:09:51.364	0	First line	\N	\N	1
297	175	2	1	980.0000000000	49.0000000000	20.0000000000	\N	2007-09-12 12:09:51.382	0	Second line	\N	\N	1
298	176	1	1	920.0000000000	92.0000000000	10.0000000000	\N	2007-09-12 12:09:51.819	0	First line	\N	\N	1
299	176	2	1	1300.0000000000	65.0000000000	20.0000000000	\N	2007-09-12 12:09:51.821	0	Second line	\N	\N	1
300	177	1	1	480.0000000000	48.0000000000	10.0000000000	\N	2007-09-12 12:09:52.053	0	First line	\N	\N	1
301	177	2	1	1200.0000000000	60.0000000000	20.0000000000	\N	2007-09-12 12:09:52.056	0	Second line	\N	\N	1
302	178	1	1	100.0000000000	10.0000000000	10.0000000000	\N	2007-09-12 12:09:52.305	0	First line	\N	\N	1
303	178	2	1	1480.0000000000	74.0000000000	20.0000000000	\N	2007-09-12 12:09:52.308	0	Second line	\N	\N	1
304	179	1	1	710.0000000000	71.0000000000	10.0000000000	\N	2007-09-12 12:09:52.549	0	First line	\N	\N	1
305	179	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:09:52.551	0	Second line	\N	\N	1
306	180	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:09:52.845	0	First line	\N	\N	1
307	180	2	1	480.0000000000	24.0000000000	20.0000000000	\N	2007-09-12 12:09:52.851	0	Second line	\N	\N	1
308	181	1	1	460.0000000000	46.0000000000	10.0000000000	\N	2007-09-12 12:09:53.327	0	First line	\N	\N	1
309	181	2	1	1660.0000000000	83.0000000000	20.0000000000	\N	2007-09-12 12:09:53.338	0	Second line	\N	\N	1
310	182	1	1	840.0000000000	84.0000000000	10.0000000000	\N	2007-09-12 12:09:53.786	0	First line	\N	\N	1
311	182	2	1	1280.0000000000	64.0000000000	20.0000000000	\N	2007-09-12 12:09:53.791	0	Second line	\N	\N	1
312	183	1	1	250.0000000000	25.0000000000	10.0000000000	\N	2007-09-12 12:09:54.258	0	First line	\N	\N	1
313	183	2	1	820.0000000000	41.0000000000	20.0000000000	\N	2007-09-12 12:09:54.271	0	Second line	\N	\N	1
314	184	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:09:54.549	0	First line	\N	\N	1
315	184	2	1	480.0000000000	24.0000000000	20.0000000000	\N	2007-09-12 12:09:54.551	0	Second line	\N	\N	1
316	185	1	1	440.0000000000	44.0000000000	10.0000000000	\N	2007-09-12 12:09:54.792	0	First line	\N	\N	1
317	185	2	1	980.0000000000	49.0000000000	20.0000000000	\N	2007-09-12 12:09:54.794	0	Second line	\N	\N	1
318	186	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:09:55.046	0	First line	\N	\N	1
319	186	2	1	1620.0000000000	81.0000000000	20.0000000000	\N	2007-09-12 12:09:55.048	0	Second line	\N	\N	1
320	187	1	1	630.0000000000	63.0000000000	10.0000000000	\N	2007-09-12 12:09:55.274	0	First line	\N	\N	1
321	187	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:09:55.277	0	Second line	\N	\N	1
322	188	1	1	190.0000000000	19.0000000000	10.0000000000	\N	2007-09-12 12:09:55.716	0	First line	\N	\N	1
323	188	2	1	440.0000000000	22.0000000000	20.0000000000	\N	2007-09-12 12:09:55.72	0	Second line	\N	\N	1
324	189	1	1	630.0000000000	63.0000000000	10.0000000000	\N	2007-09-12 12:09:56.194	0	First line	\N	\N	1
325	189	2	1	360.0000000000	18.0000000000	20.0000000000	\N	2007-09-12 12:09:56.202	0	Second line	\N	\N	1
326	190	1	1	690.0000000000	69.0000000000	10.0000000000	\N	2007-09-12 12:09:56.664	0	First line	\N	\N	1
327	190	2	1	620.0000000000	31.0000000000	20.0000000000	\N	2007-09-12 12:09:56.674	0	Second line	\N	\N	1
328	191	1	1	450.0000000000	45.0000000000	10.0000000000	\N	2007-09-12 12:09:57.09	0	First line	\N	\N	1
329	191	2	1	1120.0000000000	56.0000000000	20.0000000000	\N	2007-09-12 12:09:57.092	0	Second line	\N	\N	1
330	192	1	1	380.0000000000	38.0000000000	10.0000000000	\N	2007-09-12 12:09:57.343	0	First line	\N	\N	1
331	192	2	1	360.0000000000	18.0000000000	20.0000000000	\N	2007-09-12 12:09:57.346	0	Second line	\N	\N	1
332	193	1	1	130.0000000000	13.0000000000	10.0000000000	\N	2007-09-12 12:09:57.583	0	First line	\N	\N	1
333	193	2	1	1160.0000000000	58.0000000000	20.0000000000	\N	2007-09-12 12:09:57.585	0	Second line	\N	\N	1
334	194	1	1	360.0000000000	36.0000000000	10.0000000000	\N	2007-09-12 12:09:57.85	0	First line	\N	\N	1
335	194	2	1	560.0000000000	28.0000000000	20.0000000000	\N	2007-09-12 12:09:57.852	0	Second line	\N	\N	1
336	195	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:09:58.133	0	First line	\N	\N	1
337	195	2	1	400.0000000000	20.0000000000	20.0000000000	\N	2007-09-12 12:09:58.136	0	Second line	\N	\N	1
338	196	1	1	90.0000000000	9.0000000000	10.0000000000	\N	2007-09-12 12:09:58.596	0	First line	\N	\N	1
339	196	2	1	140.0000000000	7.0000000000	20.0000000000	\N	2007-09-12 12:09:58.604	0	Second line	\N	\N	1
340	197	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:09:59.118	0	First line	\N	\N	1
341	197	2	1	620.0000000000	31.0000000000	20.0000000000	\N	2007-09-12 12:09:59.126	0	Second line	\N	\N	1
342	198	1	1	620.0000000000	62.0000000000	10.0000000000	\N	2007-09-12 12:09:59.583	0	First line	\N	\N	1
343	198	2	1	700.0000000000	35.0000000000	20.0000000000	\N	2007-09-12 12:09:59.586	0	Second line	\N	\N	1
344	199	1	1	500.0000000000	50.0000000000	10.0000000000	\N	2007-09-12 12:09:59.829	0	First line	\N	\N	1
345	199	2	1	1380.0000000000	69.0000000000	20.0000000000	\N	2007-09-12 12:09:59.831	0	Second line	\N	\N	1
346	200	1	1	790.0000000000	79.0000000000	10.0000000000	\N	2007-09-12 12:10:00.09	0	First line	\N	\N	1
347	200	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:10:00.092	0	Second line	\N	\N	1
348	201	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:10:00.334	0	First line	\N	\N	1
349	201	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:10:00.337	0	Second line	\N	\N	1
350	202	1	1	710.0000000000	71.0000000000	10.0000000000	\N	2007-09-12 12:10:00.679	0	First line	\N	\N	1
351	202	2	1	700.0000000000	35.0000000000	20.0000000000	\N	2007-09-12 12:10:00.682	0	Second line	\N	\N	1
352	203	1	1	850.0000000000	85.0000000000	10.0000000000	\N	2007-09-12 12:10:01.117	0	First line	\N	\N	1
353	203	2	1	1320.0000000000	66.0000000000	20.0000000000	\N	2007-09-12 12:10:01.122	0	Second line	\N	\N	1
354	204	1	1	590.0000000000	59.0000000000	10.0000000000	\N	2007-09-12 12:10:01.609	0	First line	\N	\N	1
355	204	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:10:01.621	0	Second line	\N	\N	1
356	205	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:10:02.152	0	First line	\N	\N	1
357	205	2	1	1740.0000000000	87.0000000000	20.0000000000	\N	2007-09-12 12:10:02.162	0	Second line	\N	\N	1
358	206	1	1	380.0000000000	38.0000000000	10.0000000000	\N	2007-09-12 12:10:02.422	0	First line	\N	\N	1
359	206	2	1	420.0000000000	21.0000000000	20.0000000000	\N	2007-09-12 12:10:02.424	0	Second line	\N	\N	1
360	207	1	1	650.0000000000	65.0000000000	10.0000000000	\N	2007-09-12 12:10:02.666	0	First line	\N	\N	1
361	207	2	1	380.0000000000	19.0000000000	20.0000000000	\N	2007-09-12 12:10:02.669	0	Second line	\N	\N	1
362	208	1	1	180.0000000000	18.0000000000	10.0000000000	\N	2007-09-12 12:10:02.913	0	First line	\N	\N	1
363	208	2	1	100.0000000000	5.0000000000	20.0000000000	\N	2007-09-12 12:10:02.915	0	Second line	\N	\N	1
364	209	1	1	710.0000000000	71.0000000000	10.0000000000	\N	2007-09-12 12:10:03.16	0	First line	\N	\N	1
365	209	2	1	980.0000000000	49.0000000000	20.0000000000	\N	2007-09-12 12:10:03.162	0	Second line	\N	\N	1
366	210	1	1	330.0000000000	33.0000000000	10.0000000000	\N	2007-09-12 12:10:03.615	0	First line	\N	\N	1
367	210	2	1	960.0000000000	48.0000000000	20.0000000000	\N	2007-09-12 12:10:03.626	0	Second line	\N	\N	1
368	211	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:10:04.103	0	First line	\N	\N	1
369	211	2	1	860.0000000000	43.0000000000	20.0000000000	\N	2007-09-12 12:10:04.107	0	Second line	\N	\N	1
370	212	1	1	170.0000000000	17.0000000000	10.0000000000	\N	2007-09-12 12:10:04.581	0	First line	\N	\N	1
371	212	2	1	620.0000000000	31.0000000000	20.0000000000	\N	2007-09-12 12:10:04.585	0	Second line	\N	\N	1
372	213	1	1	660.0000000000	66.0000000000	10.0000000000	\N	2007-09-12 12:10:04.872	0	First line	\N	\N	1
373	213	2	1	720.0000000000	36.0000000000	20.0000000000	\N	2007-09-12 12:10:04.874	0	Second line	\N	\N	1
374	214	1	1	900.0000000000	90.0000000000	10.0000000000	\N	2007-09-12 12:10:05.121	0	First line	\N	\N	1
375	214	2	1	1420.0000000000	71.0000000000	20.0000000000	\N	2007-09-12 12:10:05.123	0	Second line	\N	\N	1
376	215	1	1	530.0000000000	53.0000000000	10.0000000000	\N	2007-09-12 12:10:05.366	0	First line	\N	\N	1
377	215	2	1	840.0000000000	42.0000000000	20.0000000000	\N	2007-09-12 12:10:05.369	0	Second line	\N	\N	1
378	216	1	1	330.0000000000	33.0000000000	10.0000000000	\N	2007-09-12 12:10:05.614	0	First line	\N	\N	1
379	216	2	1	1340.0000000000	67.0000000000	20.0000000000	\N	2007-09-12 12:10:05.616	0	Second line	\N	\N	1
380	217	1	1	960.0000000000	96.0000000000	10.0000000000	\N	2007-09-12 12:10:06.026	0	First line	\N	\N	1
381	217	2	1	700.0000000000	35.0000000000	20.0000000000	\N	2007-09-12 12:10:06.03	0	Second line	\N	\N	1
382	218	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:10:06.513	0	First line	\N	\N	1
383	218	2	1	960.0000000000	48.0000000000	20.0000000000	\N	2007-09-12 12:10:06.519	0	Second line	\N	\N	1
384	219	1	1	650.0000000000	65.0000000000	10.0000000000	\N	2007-09-12 12:10:06.973	0	First line	\N	\N	1
385	219	2	1	960.0000000000	48.0000000000	20.0000000000	\N	2007-09-12 12:10:06.983	0	Second line	\N	\N	1
386	220	1	1	210.0000000000	21.0000000000	10.0000000000	\N	2007-09-12 12:10:07.403	0	First line	\N	\N	1
387	220	2	1	1640.0000000000	82.0000000000	20.0000000000	\N	2007-09-12 12:10:07.405	0	Second line	\N	\N	1
388	221	1	1	10.0000000000	1.0000000000	10.0000000000	\N	2007-09-12 12:10:07.643	0	First line	\N	\N	1
389	221	2	1	780.0000000000	39.0000000000	20.0000000000	\N	2007-09-12 12:10:07.645	0	Second line	\N	\N	1
390	222	1	1	480.0000000000	48.0000000000	10.0000000000	\N	2007-09-12 12:10:07.894	0	First line	\N	\N	1
391	222	2	1	80.0000000000	4.0000000000	20.0000000000	\N	2007-09-12 12:10:07.896	0	Second line	\N	\N	1
392	223	1	1	990.0000000000	99.0000000000	10.0000000000	\N	2007-09-12 12:10:08.135	0	First line	\N	\N	1
393	223	2	1	780.0000000000	39.0000000000	20.0000000000	\N	2007-09-12 12:10:08.137	0	Second line	\N	\N	1
394	224	1	1	660.0000000000	66.0000000000	10.0000000000	\N	2007-09-12 12:10:08.388	0	First line	\N	\N	1
395	224	2	1	280.0000000000	14.0000000000	20.0000000000	\N	2007-09-12 12:10:08.392	0	Second line	\N	\N	1
396	225	1	1	690.0000000000	69.0000000000	10.0000000000	\N	2007-09-12 12:10:08.864	0	First line	\N	\N	1
397	225	2	1	1700.0000000000	85.0000000000	20.0000000000	\N	2007-09-12 12:10:08.872	0	Second line	\N	\N	1
398	226	1	1	430.0000000000	43.0000000000	10.0000000000	\N	2007-09-12 12:10:09.35	0	First line	\N	\N	1
399	226	2	1	1460.0000000000	73.0000000000	20.0000000000	\N	2007-09-12 12:10:09.368	0	Second line	\N	\N	1
400	227	1	1	880.0000000000	88.0000000000	10.0000000000	\N	2007-09-12 12:10:09.88	0	First line	\N	\N	1
401	227	2	1	1840.0000000000	92.0000000000	20.0000000000	\N	2007-09-12 12:10:09.888	0	Second line	\N	\N	1
402	228	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:10:10.17	0	First line	\N	\N	1
403	228	2	1	1240.0000000000	62.0000000000	20.0000000000	\N	2007-09-12 12:10:10.172	0	Second line	\N	\N	1
404	229	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:10:10.412	0	First line	\N	\N	1
405	229	2	1	580.0000000000	29.0000000000	20.0000000000	\N	2007-09-12 12:10:10.414	0	Second line	\N	\N	1
406	230	1	1	470.0000000000	47.0000000000	10.0000000000	\N	2007-09-12 12:10:10.665	0	First line	\N	\N	1
407	230	2	1	1480.0000000000	74.0000000000	20.0000000000	\N	2007-09-12 12:10:10.667	0	Second line	\N	\N	1
408	231	1	1	1000.0000000000	100.0000000000	10.0000000000	\N	2007-09-12 12:10:10.905	0	First line	\N	\N	1
409	231	2	1	20.0000000000	1.0000000000	20.0000000000	\N	2007-09-12 12:10:10.908	0	Second line	\N	\N	1
410	232	1	1	760.0000000000	76.0000000000	10.0000000000	\N	2007-09-12 12:10:11.353	0	First line	\N	\N	1
411	232	2	1	920.0000000000	46.0000000000	20.0000000000	\N	2007-09-12 12:10:11.358	0	Second line	\N	\N	1
412	233	1	1	200.0000000000	20.0000000000	10.0000000000	\N	2007-09-12 12:10:11.862	0	First line	\N	\N	1
413	233	2	1	700.0000000000	35.0000000000	20.0000000000	\N	2007-09-12 12:10:11.865	0	Second line	\N	\N	1
414	234	1	1	640.0000000000	64.0000000000	10.0000000000	\N	2007-09-12 12:10:12.345	0	First line	\N	\N	1
415	234	2	1	860.0000000000	43.0000000000	20.0000000000	\N	2007-09-12 12:10:12.351	0	Second line	\N	\N	1
416	235	1	1	400.0000000000	40.0000000000	10.0000000000	\N	2007-09-12 12:10:12.65	0	First line	\N	\N	1
417	235	2	1	880.0000000000	44.0000000000	20.0000000000	\N	2007-09-12 12:10:12.653	0	Second line	\N	\N	1
418	236	1	1	130.0000000000	13.0000000000	10.0000000000	\N	2007-09-12 12:10:12.899	0	First line	\N	\N	1
419	236	2	1	1100.0000000000	55.0000000000	20.0000000000	\N	2007-09-12 12:10:12.901	0	Second line	\N	\N	1
420	237	1	1	60.0000000000	6.0000000000	10.0000000000	\N	2007-09-12 12:10:13.14	0	First line	\N	\N	1
421	237	2	1	960.0000000000	48.0000000000	20.0000000000	\N	2007-09-12 12:10:13.143	0	Second line	\N	\N	1
422	238	1	1	620.0000000000	62.0000000000	10.0000000000	\N	2007-09-12 12:10:13.396	0	First line	\N	\N	1
423	238	2	1	1400.0000000000	70.0000000000	20.0000000000	\N	2007-09-12 12:10:13.398	0	Second line	\N	\N	1
424	239	1	1	670.0000000000	67.0000000000	10.0000000000	\N	2007-09-12 12:10:13.834	0	First line	\N	\N	1
425	239	2	1	760.0000000000	38.0000000000	20.0000000000	\N	2007-09-12 12:10:13.844	0	Second line	\N	\N	1
426	240	1	1	520.0000000000	52.0000000000	10.0000000000	\N	2007-09-12 12:10:14.343	0	First line	\N	\N	1
427	240	2	1	340.0000000000	17.0000000000	20.0000000000	\N	2007-09-12 12:10:14.35	0	Second line	\N	\N	1
428	241	1	1	380.0000000000	38.0000000000	10.0000000000	\N	2007-09-12 12:10:14.83	0	First line	\N	\N	1
429	241	2	1	420.0000000000	21.0000000000	20.0000000000	\N	2007-09-12 12:10:14.835	0	Second line	\N	\N	1
430	242	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:10:15.225	0	First line	\N	\N	1
431	242	2	1	1340.0000000000	67.0000000000	20.0000000000	\N	2007-09-12 12:10:15.227	0	Second line	\N	\N	1
432	243	1	1	70.0000000000	7.0000000000	10.0000000000	\N	2007-09-12 12:10:15.465	0	First line	\N	\N	1
433	243	2	1	1580.0000000000	79.0000000000	20.0000000000	\N	2007-09-12 12:10:15.468	0	Second line	\N	\N	1
434	244	1	1	150.0000000000	15.0000000000	10.0000000000	\N	2007-09-12 12:10:15.718	0	First line	\N	\N	1
435	244	2	1	440.0000000000	22.0000000000	20.0000000000	\N	2007-09-12 12:10:15.72	0	Second line	\N	\N	1
436	245	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:10:15.965	0	First line	\N	\N	1
437	245	2	1	1740.0000000000	87.0000000000	20.0000000000	\N	2007-09-12 12:10:15.968	0	Second line	\N	\N	1
438	246	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:10:16.593	0	First line	\N	\N	1
439	246	2	1	80.0000000000	4.0000000000	20.0000000000	\N	2007-09-12 12:10:16.643	0	Second line	\N	\N	1
440	247	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:10:17.20	0	First line	\N	\N	1
441	247	2	1	240.0000000000	12.0000000000	20.0000000000	\N	2007-09-12 12:10:17.208	0	Second line	\N	\N	1
442	248	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:10:17.618	0	First line	\N	\N	1
443	248	2	1	1960.0000000000	98.0000000000	20.0000000000	\N	2007-09-12 12:10:17.62	0	Second line	\N	\N	1
444	249	1	1	890.0000000000	89.0000000000	10.0000000000	\N	2007-09-12 12:10:17.862	0	First line	\N	\N	1
445	249	2	1	1260.0000000000	63.0000000000	20.0000000000	\N	2007-09-12 12:10:17.864	0	Second line	\N	\N	1
446	250	1	1	410.0000000000	41.0000000000	10.0000000000	\N	2007-09-12 12:10:18.103	0	First line	\N	\N	1
447	250	2	1	1500.0000000000	75.0000000000	20.0000000000	\N	2007-09-12 12:10:18.106	0	Second line	\N	\N	1
448	251	1	1	410.0000000000	41.0000000000	10.0000000000	\N	2007-09-12 12:10:18.348	0	First line	\N	\N	1
449	251	2	1	400.0000000000	20.0000000000	20.0000000000	\N	2007-09-12 12:10:18.351	0	Second line	\N	\N	1
450	252	1	1	300.0000000000	30.0000000000	10.0000000000	\N	2007-09-12 12:10:18.649	0	First line	\N	\N	1
451	252	2	1	1720.0000000000	86.0000000000	20.0000000000	\N	2007-09-12 12:10:18.652	0	Second line	\N	\N	1
452	253	1	1	670.0000000000	67.0000000000	10.0000000000	\N	2007-09-12 12:10:19.144	0	First line	\N	\N	1
453	253	2	1	320.0000000000	16.0000000000	20.0000000000	\N	2007-09-12 12:10:19.151	0	Second line	\N	\N	1
454	254	1	1	640.0000000000	64.0000000000	10.0000000000	\N	2007-09-12 12:10:19.663	0	First line	\N	\N	1
455	254	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:10:19.672	0	Second line	\N	\N	1
456	255	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:10:20.135	0	First line	\N	\N	1
457	255	2	1	40.0000000000	2.0000000000	20.0000000000	\N	2007-09-12 12:10:20.143	0	Second line	\N	\N	1
458	256	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:10:20.416	0	First line	\N	\N	1
459	256	2	1	660.0000000000	33.0000000000	20.0000000000	\N	2007-09-12 12:10:20.419	0	Second line	\N	\N	1
460	257	1	1	660.0000000000	66.0000000000	10.0000000000	\N	2007-09-12 12:10:20.658	0	First line	\N	\N	1
461	257	2	1	720.0000000000	36.0000000000	20.0000000000	\N	2007-09-12 12:10:20.66	0	Second line	\N	\N	1
462	258	1	1	640.0000000000	64.0000000000	10.0000000000	\N	2007-09-12 12:10:20.90	0	First line	\N	\N	1
463	258	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:10:20.902	0	Second line	\N	\N	1
464	259	1	1	620.0000000000	62.0000000000	10.0000000000	\N	2007-09-12 12:10:21.142	0	First line	\N	\N	1
465	259	2	1	1480.0000000000	74.0000000000	20.0000000000	\N	2007-09-12 12:10:21.144	0	Second line	\N	\N	1
466	260	1	1	170.0000000000	17.0000000000	10.0000000000	\N	2007-09-12 12:10:21.586	0	First line	\N	\N	1
467	260	2	1	580.0000000000	29.0000000000	20.0000000000	\N	2007-09-12 12:10:21.591	0	Second line	\N	\N	1
468	261	1	1	200.0000000000	20.0000000000	10.0000000000	\N	2007-09-12 12:10:22.085	0	First line	\N	\N	1
469	261	2	1	1720.0000000000	86.0000000000	20.0000000000	\N	2007-09-12 12:10:22.088	0	Second line	\N	\N	1
470	262	1	1	390.0000000000	39.0000000000	10.0000000000	\N	2007-09-12 12:10:22.579	0	First line	\N	\N	1
471	262	2	1	940.0000000000	47.0000000000	20.0000000000	\N	2007-09-12 12:10:22.587	0	Second line	\N	\N	1
472	263	1	1	190.0000000000	19.0000000000	10.0000000000	\N	2007-09-12 12:10:22.946	0	First line	\N	\N	1
473	263	2	1	340.0000000000	17.0000000000	20.0000000000	\N	2007-09-12 12:10:22.949	0	Second line	\N	\N	1
474	264	1	1	70.0000000000	7.0000000000	10.0000000000	\N	2007-09-12 12:10:23.20	0	First line	\N	\N	1
475	264	2	1	120.0000000000	6.0000000000	20.0000000000	\N	2007-09-12 12:10:23.202	0	Second line	\N	\N	1
476	265	1	1	460.0000000000	46.0000000000	10.0000000000	\N	2007-09-12 12:10:23.439	0	First line	\N	\N	1
477	265	2	1	240.0000000000	12.0000000000	20.0000000000	\N	2007-09-12 12:10:23.441	0	Second line	\N	\N	1
478	266	1	1	140.0000000000	14.0000000000	10.0000000000	\N	2007-09-12 12:10:23.688	0	First line	\N	\N	1
479	266	2	1	1880.0000000000	94.0000000000	20.0000000000	\N	2007-09-12 12:10:23.691	0	Second line	\N	\N	1
480	267	1	1	510.0000000000	51.0000000000	10.0000000000	\N	2007-09-12 12:10:24.002	0	First line	\N	\N	1
481	267	2	1	1100.0000000000	55.0000000000	20.0000000000	\N	2007-09-12 12:10:24.005	0	Second line	\N	\N	1
482	268	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:10:24.466	0	First line	\N	\N	1
483	268	2	1	60.0000000000	3.0000000000	20.0000000000	\N	2007-09-12 12:10:24.475	0	Second line	\N	\N	1
484	269	1	1	840.0000000000	84.0000000000	10.0000000000	\N	2007-09-12 12:10:24.97	0	First line	\N	\N	1
485	269	2	1	1400.0000000000	70.0000000000	20.0000000000	\N	2007-09-12 12:10:24.973	0	Second line	\N	\N	1
486	270	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:10:25.449	0	First line	\N	\N	1
487	270	2	1	1280.0000000000	64.0000000000	20.0000000000	\N	2007-09-12 12:10:25.459	0	Second line	\N	\N	1
488	271	1	1	690.0000000000	69.0000000000	10.0000000000	\N	2007-09-12 12:10:25.718	0	First line	\N	\N	1
489	271	2	1	1940.0000000000	97.0000000000	20.0000000000	\N	2007-09-12 12:10:25.72	0	Second line	\N	\N	1
490	272	1	1	940.0000000000	94.0000000000	10.0000000000	\N	2007-09-12 12:10:25.966	0	First line	\N	\N	1
491	272	2	1	1300.0000000000	65.0000000000	20.0000000000	\N	2007-09-12 12:10:25.969	0	Second line	\N	\N	1
492	273	1	1	510.0000000000	51.0000000000	10.0000000000	\N	2007-09-12 12:10:26.208	0	First line	\N	\N	1
493	273	2	1	1720.0000000000	86.0000000000	20.0000000000	\N	2007-09-12 12:10:26.21	0	Second line	\N	\N	1
494	274	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:10:26.454	0	First line	\N	\N	1
495	274	2	1	1720.0000000000	86.0000000000	20.0000000000	\N	2007-09-12 12:10:26.456	0	Second line	\N	\N	1
496	275	1	1	510.0000000000	51.0000000000	10.0000000000	\N	2007-09-12 12:10:26.923	0	First line	\N	\N	1
497	275	2	1	1960.0000000000	98.0000000000	20.0000000000	\N	2007-09-12 12:10:26.929	0	Second line	\N	\N	1
498	276	1	1	480.0000000000	48.0000000000	10.0000000000	\N	2007-09-12 12:10:27.408	0	First line	\N	\N	1
499	276	2	1	640.0000000000	32.0000000000	20.0000000000	\N	2007-09-12 12:10:27.411	0	Second line	\N	\N	1
500	277	1	1	420.0000000000	42.0000000000	10.0000000000	\N	2007-09-12 12:10:27.894	0	First line	\N	\N	1
501	277	2	1	880.0000000000	44.0000000000	20.0000000000	\N	2007-09-12 12:10:27.897	0	Second line	\N	\N	1
502	278	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:10:28.179	0	First line	\N	\N	1
503	278	2	1	1380.0000000000	69.0000000000	20.0000000000	\N	2007-09-12 12:10:28.181	0	Second line	\N	\N	1
504	279	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:10:28.42	0	First line	\N	\N	1
505	279	2	1	240.0000000000	12.0000000000	20.0000000000	\N	2007-09-12 12:10:28.422	0	Second line	\N	\N	1
506	280	1	1	150.0000000000	15.0000000000	10.0000000000	\N	2007-09-12 12:10:28.683	0	First line	\N	\N	1
507	280	2	1	780.0000000000	39.0000000000	20.0000000000	\N	2007-09-12 12:10:28.685	0	Second line	\N	\N	1
508	281	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:10:28.931	0	First line	\N	\N	1
509	281	2	1	1480.0000000000	74.0000000000	20.0000000000	\N	2007-09-12 12:10:28.933	0	Second line	\N	\N	1
510	282	1	1	880.0000000000	88.0000000000	10.0000000000	\N	2007-09-12 12:10:29.362	0	First line	\N	\N	1
511	282	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:10:29.367	0	Second line	\N	\N	1
512	283	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:10:29.849	0	First line	\N	\N	1
513	283	2	1	1060.0000000000	53.0000000000	20.0000000000	\N	2007-09-12 12:10:29.855	0	Second line	\N	\N	1
514	284	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:10:30.36	0	First line	\N	\N	1
515	284	2	1	1700.0000000000	85.0000000000	20.0000000000	\N	2007-09-12 12:10:30.366	0	Second line	\N	\N	1
516	285	1	1	150.0000000000	15.0000000000	10.0000000000	\N	2007-09-12 12:10:30.773	0	First line	\N	\N	1
517	285	2	1	820.0000000000	41.0000000000	20.0000000000	\N	2007-09-12 12:10:30.775	0	Second line	\N	\N	1
518	286	1	1	280.0000000000	28.0000000000	10.0000000000	\N	2007-09-12 12:10:31.014	0	First line	\N	\N	1
519	286	2	1	1460.0000000000	73.0000000000	20.0000000000	\N	2007-09-12 12:10:31.017	0	Second line	\N	\N	1
520	287	1	1	750.0000000000	75.0000000000	10.0000000000	\N	2007-09-12 12:10:31.254	0	First line	\N	\N	1
521	287	2	1	620.0000000000	31.0000000000	20.0000000000	\N	2007-09-12 12:10:31.256	0	Second line	\N	\N	1
522	288	1	1	330.0000000000	33.0000000000	10.0000000000	\N	2007-09-12 12:10:31.495	0	First line	\N	\N	1
523	288	2	1	1380.0000000000	69.0000000000	20.0000000000	\N	2007-09-12 12:10:31.498	0	Second line	\N	\N	1
524	289	1	1	530.0000000000	53.0000000000	10.0000000000	\N	2007-09-12 12:10:31.833	0	First line	\N	\N	1
525	289	2	1	880.0000000000	44.0000000000	20.0000000000	\N	2007-09-12 12:10:31.836	0	Second line	\N	\N	1
526	290	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:10:33.042	0	First line	\N	\N	1
527	290	2	1	200.0000000000	10.0000000000	20.0000000000	\N	2007-09-12 12:10:33.045	0	Second line	\N	\N	1
528	291	1	1	640.0000000000	64.0000000000	10.0000000000	\N	2007-09-12 12:10:33.29	0	First line	\N	\N	1
529	291	2	1	240.0000000000	12.0000000000	20.0000000000	\N	2007-09-12 12:10:33.293	0	Second line	\N	\N	1
530	292	1	1	240.0000000000	24.0000000000	10.0000000000	\N	2007-09-12 12:10:33.534	0	First line	\N	\N	1
531	292	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:10:33.536	0	Second line	\N	\N	1
532	293	1	1	40.0000000000	4.0000000000	10.0000000000	\N	2007-09-12 12:10:33.983	0	First line	\N	\N	1
533	293	2	1	660.0000000000	33.0000000000	20.0000000000	\N	2007-09-12 12:10:33.994	0	Second line	\N	\N	1
534	294	1	1	740.0000000000	74.0000000000	10.0000000000	\N	2007-09-12 12:10:34.463	0	First line	\N	\N	1
535	294	2	1	1880.0000000000	94.0000000000	20.0000000000	\N	2007-09-12 12:10:34.467	0	Second line	\N	\N	1
536	295	1	1	600.0000000000	60.0000000000	10.0000000000	\N	2007-09-12 12:10:34.903	0	First line	\N	\N	1
537	295	2	1	420.0000000000	21.0000000000	20.0000000000	\N	2007-09-12 12:10:34.905	0	Second line	\N	\N	1
538	296	1	1	660.0000000000	66.0000000000	10.0000000000	\N	2007-09-12 12:10:35.146	0	First line	\N	\N	1
539	296	2	1	200.0000000000	10.0000000000	20.0000000000	\N	2007-09-12 12:10:35.149	0	Second line	\N	\N	1
540	297	1	1	1000.0000000000	100.0000000000	10.0000000000	\N	2007-09-12 12:10:35.401	0	First line	\N	\N	1
541	297	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:10:35.403	0	Second line	\N	\N	1
542	298	1	1	130.0000000000	13.0000000000	10.0000000000	\N	2007-09-12 12:10:35.638	0	First line	\N	\N	1
543	298	2	1	540.0000000000	27.0000000000	20.0000000000	\N	2007-09-12 12:10:35.64	0	Second line	\N	\N	1
544	299	1	1	40.0000000000	4.0000000000	10.0000000000	\N	2007-09-12 12:10:35.953	0	First line	\N	\N	1
545	299	2	1	840.0000000000	42.0000000000	20.0000000000	\N	2007-09-12 12:10:35.956	0	Second line	\N	\N	1
546	300	1	1	620.0000000000	62.0000000000	10.0000000000	\N	2007-09-12 12:10:36.441	0	First line	\N	\N	1
547	300	2	1	1960.0000000000	98.0000000000	20.0000000000	\N	2007-09-12 12:10:36.445	0	Second line	\N	\N	1
548	301	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:10:36.913	0	First line	\N	\N	1
549	301	2	1	180.0000000000	9.0000000000	20.0000000000	\N	2007-09-12 12:10:36.916	0	Second line	\N	\N	1
550	302	1	1	270.0000000000	27.0000000000	10.0000000000	\N	2007-09-12 12:10:37.368	0	First line	\N	\N	1
551	302	2	1	200.0000000000	10.0000000000	20.0000000000	\N	2007-09-12 12:10:37.375	0	Second line	\N	\N	1
552	303	1	1	280.0000000000	28.0000000000	10.0000000000	\N	2007-09-12 12:10:37.642	0	First line	\N	\N	1
553	303	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:10:37.644	0	Second line	\N	\N	1
554	304	1	1	850.0000000000	85.0000000000	10.0000000000	\N	2007-09-12 12:10:37.897	0	First line	\N	\N	1
555	304	2	1	280.0000000000	14.0000000000	20.0000000000	\N	2007-09-12 12:10:37.90	0	Second line	\N	\N	1
556	305	1	1	360.0000000000	36.0000000000	10.0000000000	\N	2007-09-12 12:10:38.14	0	First line	\N	\N	1
557	305	2	1	580.0000000000	29.0000000000	20.0000000000	\N	2007-09-12 12:10:38.143	0	Second line	\N	\N	1
558	306	1	1	670.0000000000	67.0000000000	10.0000000000	\N	2007-09-12 12:10:38.39	0	First line	\N	\N	1
559	306	2	1	440.0000000000	22.0000000000	20.0000000000	\N	2007-09-12 12:10:38.392	0	Second line	\N	\N	1
560	307	1	1	650.0000000000	65.0000000000	10.0000000000	\N	2007-09-12 12:10:38.82	0	First line	\N	\N	1
561	307	2	1	500.0000000000	25.0000000000	20.0000000000	\N	2007-09-12 12:10:38.826	0	Second line	\N	\N	1
562	308	1	1	480.0000000000	48.0000000000	10.0000000000	\N	2007-09-12 12:10:39.242	0	First line	\N	\N	1
563	308	2	1	800.0000000000	40.0000000000	20.0000000000	\N	2007-09-12 12:10:39.253	0	Second line	\N	\N	1
564	309	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:10:39.722	0	First line	\N	\N	1
565	309	2	1	1780.0000000000	89.0000000000	20.0000000000	\N	2007-09-12 12:10:39.727	0	Second line	\N	\N	1
566	310	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:10:40.144	0	First line	\N	\N	1
567	310	2	1	560.0000000000	28.0000000000	20.0000000000	\N	2007-09-12 12:10:40.146	0	Second line	\N	\N	1
568	311	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:10:40.398	0	First line	\N	\N	1
569	311	2	1	120.0000000000	6.0000000000	20.0000000000	\N	2007-09-12 12:10:40.40	0	Second line	\N	\N	1
570	312	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:10:40.638	0	First line	\N	\N	1
571	312	2	1	20.0000000000	1.0000000000	20.0000000000	\N	2007-09-12 12:10:40.64	0	Second line	\N	\N	1
572	313	1	1	470.0000000000	47.0000000000	10.0000000000	\N	2007-09-12 12:10:40.881	0	First line	\N	\N	1
573	313	2	1	1400.0000000000	70.0000000000	20.0000000000	\N	2007-09-12 12:10:40.883	0	Second line	\N	\N	1
574	314	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:10:41.191	0	First line	\N	\N	1
575	314	2	1	1040.0000000000	52.0000000000	20.0000000000	\N	2007-09-12 12:10:41.197	0	Second line	\N	\N	1
576	315	1	1	170.0000000000	17.0000000000	10.0000000000	\N	2007-09-12 12:10:41.654	0	First line	\N	\N	1
577	315	2	1	820.0000000000	41.0000000000	20.0000000000	\N	2007-09-12 12:10:41.664	0	Second line	\N	\N	1
578	316	1	1	290.0000000000	29.0000000000	10.0000000000	\N	2007-09-12 12:10:42.158	0	First line	\N	\N	1
579	316	2	1	1060.0000000000	53.0000000000	20.0000000000	\N	2007-09-12 12:10:42.168	0	Second line	\N	\N	1
580	317	1	1	740.0000000000	74.0000000000	10.0000000000	\N	2007-09-12 12:10:42.654	0	First line	\N	\N	1
581	317	2	1	1900.0000000000	95.0000000000	20.0000000000	\N	2007-09-12 12:10:42.66	0	Second line	\N	\N	1
582	318	1	1	510.0000000000	51.0000000000	10.0000000000	\N	2007-09-12 12:10:42.936	0	First line	\N	\N	1
583	318	2	1	500.0000000000	25.0000000000	20.0000000000	\N	2007-09-12 12:10:42.939	0	Second line	\N	\N	1
584	319	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:10:43.178	0	First line	\N	\N	1
585	319	2	1	1420.0000000000	71.0000000000	20.0000000000	\N	2007-09-12 12:10:43.18	0	Second line	\N	\N	1
586	320	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:10:43.415	0	First line	\N	\N	1
587	320	2	1	1080.0000000000	54.0000000000	20.0000000000	\N	2007-09-12 12:10:43.418	0	Second line	\N	\N	1
588	321	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:10:43.667	0	First line	\N	\N	1
589	321	2	1	1980.0000000000	99.0000000000	20.0000000000	\N	2007-09-12 12:10:43.669	0	Second line	\N	\N	1
590	322	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:10:44.084	0	First line	\N	\N	1
591	322	2	1	800.0000000000	40.0000000000	20.0000000000	\N	2007-09-12 12:10:44.091	0	Second line	\N	\N	1
592	323	1	1	380.0000000000	38.0000000000	10.0000000000	\N	2007-09-12 12:10:44.54	0	First line	\N	\N	1
593	323	2	1	1180.0000000000	59.0000000000	20.0000000000	\N	2007-09-12 12:10:44.549	0	Second line	\N	\N	1
594	324	1	1	980.0000000000	98.0000000000	10.0000000000	\N	2007-09-12 12:10:44.975	0	First line	\N	\N	1
595	324	2	1	1600.0000000000	80.0000000000	20.0000000000	\N	2007-09-12 12:10:44.978	0	Second line	\N	\N	1
596	325	1	1	890.0000000000	89.0000000000	10.0000000000	\N	2007-09-12 12:10:45.443	0	First line	\N	\N	1
597	325	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:10:45.447	0	Second line	\N	\N	1
598	326	1	1	290.0000000000	29.0000000000	10.0000000000	\N	2007-09-12 12:10:45.734	0	First line	\N	\N	1
599	326	2	1	240.0000000000	12.0000000000	20.0000000000	\N	2007-09-12 12:10:45.736	0	Second line	\N	\N	1
600	327	1	1	110.0000000000	11.0000000000	10.0000000000	\N	2007-09-12 12:10:45.981	0	First line	\N	\N	1
601	327	2	1	1720.0000000000	86.0000000000	20.0000000000	\N	2007-09-12 12:10:45.984	0	Second line	\N	\N	1
602	328	1	1	240.0000000000	24.0000000000	10.0000000000	\N	2007-09-12 12:10:46.222	0	First line	\N	\N	1
603	328	2	1	1160.0000000000	58.0000000000	20.0000000000	\N	2007-09-12 12:10:46.224	0	Second line	\N	\N	1
604	329	1	1	170.0000000000	17.0000000000	10.0000000000	\N	2007-09-12 12:10:46.461	0	First line	\N	\N	1
605	329	2	1	780.0000000000	39.0000000000	20.0000000000	\N	2007-09-12 12:10:46.464	0	Second line	\N	\N	1
606	330	1	1	230.0000000000	23.0000000000	10.0000000000	\N	2007-09-12 12:10:46.908	0	First line	\N	\N	1
607	330	2	1	380.0000000000	19.0000000000	20.0000000000	\N	2007-09-12 12:10:46.915	0	Second line	\N	\N	1
608	331	1	1	70.0000000000	7.0000000000	10.0000000000	\N	2007-09-12 12:10:47.386	0	First line	\N	\N	1
609	331	2	1	300.0000000000	15.0000000000	20.0000000000	\N	2007-09-12 12:10:47.394	0	Second line	\N	\N	1
610	332	1	1	920.0000000000	92.0000000000	10.0000000000	\N	2007-09-12 12:10:47.891	0	First line	\N	\N	1
611	332	2	1	380.0000000000	19.0000000000	20.0000000000	\N	2007-09-12 12:10:47.902	0	Second line	\N	\N	1
612	333	1	1	510.0000000000	51.0000000000	10.0000000000	\N	2007-09-12 12:10:48.192	0	First line	\N	\N	1
613	333	2	1	960.0000000000	48.0000000000	20.0000000000	\N	2007-09-12 12:10:48.194	0	Second line	\N	\N	1
614	334	1	1	870.0000000000	87.0000000000	10.0000000000	\N	2007-09-12 12:10:48.431	0	First line	\N	\N	1
615	334	2	1	1680.0000000000	84.0000000000	20.0000000000	\N	2007-09-12 12:10:48.433	0	Second line	\N	\N	1
616	335	1	1	550.0000000000	55.0000000000	10.0000000000	\N	2007-09-12 12:10:48.685	0	First line	\N	\N	1
617	335	2	1	1380.0000000000	69.0000000000	20.0000000000	\N	2007-09-12 12:10:48.687	0	Second line	\N	\N	1
618	336	1	1	50.0000000000	5.0000000000	10.0000000000	\N	2007-09-12 12:10:48.934	0	First line	\N	\N	1
619	336	2	1	1780.0000000000	89.0000000000	20.0000000000	\N	2007-09-12 12:10:48.936	0	Second line	\N	\N	1
620	337	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:10:49.378	0	First line	\N	\N	1
621	337	2	1	1680.0000000000	84.0000000000	20.0000000000	\N	2007-09-12 12:10:49.382	0	Second line	\N	\N	1
622	338	1	1	450.0000000000	45.0000000000	10.0000000000	\N	2007-09-12 12:10:49.84	0	First line	\N	\N	1
623	338	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:10:49.848	0	Second line	\N	\N	1
624	339	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:10:50.338	0	First line	\N	\N	1
625	339	2	1	1100.0000000000	55.0000000000	20.0000000000	\N	2007-09-12 12:10:50.354	0	Second line	\N	\N	1
626	340	1	1	550.0000000000	55.0000000000	10.0000000000	\N	2007-09-12 12:10:50.77	0	First line	\N	\N	1
627	340	2	1	940.0000000000	47.0000000000	20.0000000000	\N	2007-09-12 12:10:50.772	0	Second line	\N	\N	1
628	341	1	1	1000.0000000000	100.0000000000	10.0000000000	\N	2007-09-12 12:10:51.018	0	First line	\N	\N	1
629	341	2	1	1340.0000000000	67.0000000000	20.0000000000	\N	2007-09-12 12:10:51.02	0	Second line	\N	\N	1
630	342	1	1	50.0000000000	5.0000000000	10.0000000000	\N	2007-09-12 12:10:51.269	0	First line	\N	\N	1
631	342	2	1	1200.0000000000	60.0000000000	20.0000000000	\N	2007-09-12 12:10:51.272	0	Second line	\N	\N	1
632	343	1	1	440.0000000000	44.0000000000	10.0000000000	\N	2007-09-12 12:10:51.507	0	First line	\N	\N	1
633	343	2	1	280.0000000000	14.0000000000	20.0000000000	\N	2007-09-12 12:10:51.509	0	Second line	\N	\N	1
634	344	1	1	140.0000000000	14.0000000000	10.0000000000	\N	2007-09-12 12:10:51.868	0	First line	\N	\N	1
635	344	2	1	2000.0000000000	100.0000000000	20.0000000000	\N	2007-09-12 12:10:51.876	0	Second line	\N	\N	1
636	345	1	1	70.0000000000	7.0000000000	10.0000000000	\N	2007-09-12 12:10:52.367	0	First line	\N	\N	1
637	345	2	1	800.0000000000	40.0000000000	20.0000000000	\N	2007-09-12 12:10:52.392	0	Second line	\N	\N	1
638	346	1	1	630.0000000000	63.0000000000	10.0000000000	\N	2007-09-12 12:10:52.888	0	First line	\N	\N	1
639	346	2	1	1800.0000000000	90.0000000000	20.0000000000	\N	2007-09-12 12:10:52.891	0	Second line	\N	\N	1
640	347	1	1	110.0000000000	11.0000000000	10.0000000000	\N	2007-09-12 12:10:53.295	0	First line	\N	\N	1
641	347	2	1	660.0000000000	33.0000000000	20.0000000000	\N	2007-09-12 12:10:53.297	0	Second line	\N	\N	1
642	348	1	1	770.0000000000	77.0000000000	10.0000000000	\N	2007-09-12 12:10:53.531	0	First line	\N	\N	1
643	348	2	1	1320.0000000000	66.0000000000	20.0000000000	\N	2007-09-12 12:10:53.533	0	Second line	\N	\N	1
644	349	1	1	790.0000000000	79.0000000000	10.0000000000	\N	2007-09-12 12:10:53.788	0	First line	\N	\N	1
645	349	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:10:53.79	0	Second line	\N	\N	1
646	350	1	1	870.0000000000	87.0000000000	10.0000000000	\N	2007-09-12 12:10:54.028	0	First line	\N	\N	1
647	350	2	1	1500.0000000000	75.0000000000	20.0000000000	\N	2007-09-12 12:10:54.03	0	Second line	\N	\N	1
648	351	1	1	200.0000000000	20.0000000000	10.0000000000	\N	2007-09-12 12:10:54.336	0	First line	\N	\N	1
649	351	2	1	1260.0000000000	63.0000000000	20.0000000000	\N	2007-09-12 12:10:54.344	0	Second line	\N	\N	1
650	352	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:10:54.859	0	First line	\N	\N	1
651	352	2	1	1880.0000000000	94.0000000000	20.0000000000	\N	2007-09-12 12:10:54.868	0	Second line	\N	\N	1
652	353	1	1	110.0000000000	11.0000000000	10.0000000000	\N	2007-09-12 12:10:55.346	0	First line	\N	\N	1
653	353	2	1	740.0000000000	37.0000000000	20.0000000000	\N	2007-09-12 12:10:55.359	0	Second line	\N	\N	1
654	354	1	1	540.0000000000	54.0000000000	10.0000000000	\N	2007-09-12 12:10:55.751	0	First line	\N	\N	1
655	354	2	1	600.0000000000	30.0000000000	20.0000000000	\N	2007-09-12 12:10:55.753	0	Second line	\N	\N	1
656	355	1	1	670.0000000000	67.0000000000	10.0000000000	\N	2007-09-12 12:10:55.996	0	First line	\N	\N	1
657	355	2	1	1020.0000000000	51.0000000000	20.0000000000	\N	2007-09-12 12:10:55.999	0	Second line	\N	\N	1
658	356	1	1	420.0000000000	42.0000000000	10.0000000000	\N	2007-09-12 12:10:56.238	0	First line	\N	\N	1
659	356	2	1	540.0000000000	27.0000000000	20.0000000000	\N	2007-09-12 12:10:56.24	0	Second line	\N	\N	1
660	357	1	1	850.0000000000	85.0000000000	10.0000000000	\N	2007-09-12 12:10:56.473	0	First line	\N	\N	1
661	357	2	1	1000.0000000000	50.0000000000	20.0000000000	\N	2007-09-12 12:10:56.475	0	Second line	\N	\N	1
662	358	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:10:56.788	0	First line	\N	\N	1
663	358	2	1	1800.0000000000	90.0000000000	20.0000000000	\N	2007-09-12 12:10:56.791	0	Second line	\N	\N	1
664	359	1	1	660.0000000000	66.0000000000	10.0000000000	\N	2007-09-12 12:10:57.273	0	First line	\N	\N	1
665	359	2	1	460.0000000000	23.0000000000	20.0000000000	\N	2007-09-12 12:10:57.293	0	Second line	\N	\N	1
666	360	1	1	760.0000000000	76.0000000000	10.0000000000	\N	2007-09-12 12:10:57.806	0	First line	\N	\N	1
667	360	2	1	1840.0000000000	92.0000000000	20.0000000000	\N	2007-09-12 12:10:57.812	0	Second line	\N	\N	1
668	361	1	1	870.0000000000	87.0000000000	10.0000000000	\N	2007-09-12 12:10:58.249	0	First line	\N	\N	1
669	361	2	1	1080.0000000000	54.0000000000	20.0000000000	\N	2007-09-12 12:10:58.252	0	Second line	\N	\N	1
670	362	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:10:58.482	0	First line	\N	\N	1
671	362	2	1	1940.0000000000	97.0000000000	20.0000000000	\N	2007-09-12 12:10:58.485	0	Second line	\N	\N	1
672	363	1	1	260.0000000000	26.0000000000	10.0000000000	\N	2007-09-12 12:10:58.731	0	First line	\N	\N	1
673	363	2	1	1660.0000000000	83.0000000000	20.0000000000	\N	2007-09-12 12:10:58.734	0	Second line	\N	\N	1
674	364	1	1	200.0000000000	20.0000000000	10.0000000000	\N	2007-09-12 12:10:58.965	0	First line	\N	\N	1
675	364	2	1	1660.0000000000	83.0000000000	20.0000000000	\N	2007-09-12 12:10:58.968	0	Second line	\N	\N	1
676	365	1	1	410.0000000000	41.0000000000	10.0000000000	\N	2007-09-12 12:10:59.211	0	First line	\N	\N	1
677	365	2	1	600.0000000000	30.0000000000	20.0000000000	\N	2007-09-12 12:10:59.213	0	Second line	\N	\N	1
678	366	1	1	590.0000000000	59.0000000000	10.0000000000	\N	2007-09-12 12:10:59.69	0	First line	\N	\N	1
679	366	2	1	480.0000000000	24.0000000000	20.0000000000	\N	2007-09-12 12:10:59.694	0	Second line	\N	\N	1
680	367	1	1	900.0000000000	90.0000000000	10.0000000000	\N	2007-09-12 12:11:00.166	0	First line	\N	\N	1
681	367	2	1	1580.0000000000	79.0000000000	20.0000000000	\N	2007-09-12 12:11:00.176	0	Second line	\N	\N	1
682	368	1	1	640.0000000000	64.0000000000	10.0000000000	\N	2007-09-12 12:11:00.644	0	First line	\N	\N	1
683	368	2	1	1380.0000000000	69.0000000000	20.0000000000	\N	2007-09-12 12:11:00.655	0	Second line	\N	\N	1
684	369	1	1	290.0000000000	29.0000000000	10.0000000000	\N	2007-09-12 12:11:01.052	0	First line	\N	\N	1
685	369	2	1	1580.0000000000	79.0000000000	20.0000000000	\N	2007-09-12 12:11:01.055	0	Second line	\N	\N	1
686	370	1	1	860.0000000000	86.0000000000	10.0000000000	\N	2007-09-12 12:11:01.297	0	First line	\N	\N	1
687	370	2	1	1140.0000000000	57.0000000000	20.0000000000	\N	2007-09-12 12:11:01.299	0	Second line	\N	\N	1
688	371	1	1	880.0000000000	88.0000000000	10.0000000000	\N	2007-09-12 12:11:01.541	0	First line	\N	\N	1
689	371	2	1	1280.0000000000	64.0000000000	20.0000000000	\N	2007-09-12 12:11:01.543	0	Second line	\N	\N	1
690	372	1	1	650.0000000000	65.0000000000	10.0000000000	\N	2007-09-12 12:11:01.804	0	First line	\N	\N	1
691	372	2	1	300.0000000000	15.0000000000	20.0000000000	\N	2007-09-12 12:11:01.807	0	Second line	\N	\N	1
692	373	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:11:02.125	0	First line	\N	\N	1
693	373	2	1	60.0000000000	3.0000000000	20.0000000000	\N	2007-09-12 12:11:02.13	0	Second line	\N	\N	1
694	374	1	1	660.0000000000	66.0000000000	10.0000000000	\N	2007-09-12 12:11:02.63	0	First line	\N	\N	1
695	374	2	1	180.0000000000	9.0000000000	20.0000000000	\N	2007-09-12 12:11:02.639	0	Second line	\N	\N	1
696	375	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:11:03.133	0	First line	\N	\N	1
697	375	2	1	1140.0000000000	57.0000000000	20.0000000000	\N	2007-09-12 12:11:03.141	0	Second line	\N	\N	1
698	376	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:11:03.561	0	First line	\N	\N	1
699	376	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:11:03.564	0	Second line	\N	\N	1
700	377	1	1	610.0000000000	61.0000000000	10.0000000000	\N	2007-09-12 12:11:03.832	0	First line	\N	\N	1
701	377	2	1	640.0000000000	32.0000000000	20.0000000000	\N	2007-09-12 12:11:03.834	0	Second line	\N	\N	1
702	378	1	1	550.0000000000	55.0000000000	10.0000000000	\N	2007-09-12 12:11:04.073	0	First line	\N	\N	1
703	378	2	1	1960.0000000000	98.0000000000	20.0000000000	\N	2007-09-12 12:11:04.075	0	Second line	\N	\N	1
704	379	1	1	810.0000000000	81.0000000000	10.0000000000	\N	2007-09-12 12:11:04.323	0	First line	\N	\N	1
705	379	2	1	1180.0000000000	59.0000000000	20.0000000000	\N	2007-09-12 12:11:04.325	0	Second line	\N	\N	1
706	380	1	1	530.0000000000	53.0000000000	10.0000000000	\N	2007-09-12 12:11:04.584	0	First line	\N	\N	1
707	380	2	1	720.0000000000	36.0000000000	20.0000000000	\N	2007-09-12 12:11:04.586	0	Second line	\N	\N	1
708	381	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:11:05.082	0	First line	\N	\N	1
709	381	2	1	1340.0000000000	67.0000000000	20.0000000000	\N	2007-09-12 12:11:05.088	0	Second line	\N	\N	1
710	382	1	1	100.0000000000	10.0000000000	10.0000000000	\N	2007-09-12 12:11:05.568	0	First line	\N	\N	1
711	382	2	1	80.0000000000	4.0000000000	20.0000000000	\N	2007-09-12 12:11:05.582	0	Second line	\N	\N	1
712	383	1	1	500.0000000000	50.0000000000	10.0000000000	\N	2007-09-12 12:11:06.041	0	First line	\N	\N	1
713	383	2	1	160.0000000000	8.0000000000	20.0000000000	\N	2007-09-12 12:11:06.043	0	Second line	\N	\N	1
714	384	1	1	670.0000000000	67.0000000000	10.0000000000	\N	2007-09-12 12:11:06.282	0	First line	\N	\N	1
715	384	2	1	1180.0000000000	59.0000000000	20.0000000000	\N	2007-09-12 12:11:06.285	0	Second line	\N	\N	1
716	385	1	1	100.0000000000	10.0000000000	10.0000000000	\N	2007-09-12 12:11:06.538	0	First line	\N	\N	1
717	385	2	1	940.0000000000	47.0000000000	20.0000000000	\N	2007-09-12 12:11:06.54	0	Second line	\N	\N	1
718	386	1	1	980.0000000000	98.0000000000	10.0000000000	\N	2007-09-12 12:11:06.776	0	First line	\N	\N	1
719	386	2	1	200.0000000000	10.0000000000	20.0000000000	\N	2007-09-12 12:11:06.779	0	Second line	\N	\N	1
720	387	1	1	190.0000000000	19.0000000000	10.0000000000	\N	2007-09-12 12:11:07.058	0	First line	\N	\N	1
721	387	2	1	1900.0000000000	95.0000000000	20.0000000000	\N	2007-09-12 12:11:07.065	0	Second line	\N	\N	1
722	388	1	1	240.0000000000	24.0000000000	10.0000000000	\N	2007-09-12 12:11:07.552	0	First line	\N	\N	1
723	388	2	1	660.0000000000	33.0000000000	20.0000000000	\N	2007-09-12 12:11:07.556	0	Second line	\N	\N	1
724	389	1	1	310.0000000000	31.0000000000	10.0000000000	\N	2007-09-12 12:11:08.044	0	First line	\N	\N	1
725	389	2	1	660.0000000000	33.0000000000	20.0000000000	\N	2007-09-12 12:11:08.048	0	Second line	\N	\N	1
726	390	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:11:08.528	0	First line	\N	\N	1
727	390	2	1	1620.0000000000	81.0000000000	20.0000000000	\N	2007-09-12 12:11:08.534	0	Second line	\N	\N	1
728	391	1	1	290.0000000000	29.0000000000	10.0000000000	\N	2007-09-12 12:11:08.805	0	First line	\N	\N	1
729	391	2	1	1360.0000000000	68.0000000000	20.0000000000	\N	2007-09-12 12:11:08.808	0	Second line	\N	\N	1
730	392	1	1	870.0000000000	87.0000000000	10.0000000000	\N	2007-09-12 12:11:09.048	0	First line	\N	\N	1
731	392	2	1	860.0000000000	43.0000000000	20.0000000000	\N	2007-09-12 12:11:09.051	0	Second line	\N	\N	1
732	393	1	1	690.0000000000	69.0000000000	10.0000000000	\N	2007-09-12 12:11:09.287	0	First line	\N	\N	1
733	393	2	1	1320.0000000000	66.0000000000	20.0000000000	\N	2007-09-12 12:11:09.29	0	Second line	\N	\N	1
734	394	1	1	650.0000000000	65.0000000000	10.0000000000	\N	2007-09-12 12:11:09.529	0	First line	\N	\N	1
735	394	2	1	100.0000000000	5.0000000000	20.0000000000	\N	2007-09-12 12:11:09.532	0	Second line	\N	\N	1
736	395	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:11:09.992	0	First line	\N	\N	1
737	395	2	1	220.0000000000	11.0000000000	20.0000000000	\N	2007-09-12 12:11:10.002	0	Second line	\N	\N	1
738	396	1	1	630.0000000000	63.0000000000	10.0000000000	\N	2007-09-12 12:11:10.462	0	First line	\N	\N	1
739	396	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:11:10.478	0	Second line	\N	\N	1
740	397	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:11:10.998	0	First line	\N	\N	1
741	397	2	1	1060.0000000000	53.0000000000	20.0000000000	\N	2007-09-12 12:11:11.003	0	Second line	\N	\N	1
742	398	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:11:11.295	0	First line	\N	\N	1
743	398	2	1	1980.0000000000	99.0000000000	20.0000000000	\N	2007-09-12 12:11:11.297	0	Second line	\N	\N	1
744	399	1	1	250.0000000000	25.0000000000	10.0000000000	\N	2007-09-12 12:11:11.541	0	First line	\N	\N	1
745	399	2	1	1700.0000000000	85.0000000000	20.0000000000	\N	2007-09-12 12:11:11.543	0	Second line	\N	\N	1
746	400	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:11:11.784	0	First line	\N	\N	1
747	400	2	1	1060.0000000000	53.0000000000	20.0000000000	\N	2007-09-12 12:11:11.786	0	Second line	\N	\N	1
748	401	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:11:12.031	0	First line	\N	\N	1
749	401	2	1	80.0000000000	4.0000000000	20.0000000000	\N	2007-09-12 12:11:12.033	0	Second line	\N	\N	1
750	402	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:11:12.451	0	First line	\N	\N	1
751	402	2	1	540.0000000000	27.0000000000	20.0000000000	\N	2007-09-12 12:11:12.463	0	Second line	\N	\N	1
752	403	1	1	620.0000000000	62.0000000000	10.0000000000	\N	2007-09-12 12:11:12.924	0	First line	\N	\N	1
753	403	2	1	580.0000000000	29.0000000000	20.0000000000	\N	2007-09-12 12:11:12.933	0	Second line	\N	\N	1
754	404	1	1	750.0000000000	75.0000000000	10.0000000000	\N	2007-09-12 12:11:13.398	0	First line	\N	\N	1
755	404	2	1	1700.0000000000	85.0000000000	20.0000000000	\N	2007-09-12 12:11:13.404	0	Second line	\N	\N	1
756	405	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:11:13.829	0	First line	\N	\N	1
757	405	2	1	340.0000000000	17.0000000000	20.0000000000	\N	2007-09-12 12:11:13.832	0	Second line	\N	\N	1
758	406	1	1	350.0000000000	35.0000000000	10.0000000000	\N	2007-09-12 12:11:14.079	0	First line	\N	\N	1
759	406	2	1	420.0000000000	21.0000000000	20.0000000000	\N	2007-09-12 12:11:14.081	0	Second line	\N	\N	1
760	407	1	1	210.0000000000	21.0000000000	10.0000000000	\N	2007-09-12 12:11:14.32	0	First line	\N	\N	1
761	407	2	1	1380.0000000000	69.0000000000	20.0000000000	\N	2007-09-12 12:11:14.323	0	Second line	\N	\N	1
762	408	1	1	520.0000000000	52.0000000000	10.0000000000	\N	2007-09-12 12:11:14.565	0	First line	\N	\N	1
763	408	2	1	300.0000000000	15.0000000000	20.0000000000	\N	2007-09-12 12:11:14.568	0	Second line	\N	\N	1
764	409	1	1	570.0000000000	57.0000000000	10.0000000000	\N	2007-09-12 12:11:14.869	0	First line	\N	\N	1
765	409	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:11:14.873	0	Second line	\N	\N	1
766	410	1	1	520.0000000000	52.0000000000	10.0000000000	\N	2007-09-12 12:11:15.298	0	First line	\N	\N	1
767	410	2	1	440.0000000000	22.0000000000	20.0000000000	\N	2007-09-12 12:11:15.301	0	Second line	\N	\N	1
768	411	1	1	260.0000000000	26.0000000000	10.0000000000	\N	2007-09-12 12:11:15.719	0	First line	\N	\N	1
769	411	2	1	140.0000000000	7.0000000000	20.0000000000	\N	2007-09-12 12:11:15.723	0	Second line	\N	\N	1
770	412	1	1	190.0000000000	19.0000000000	10.0000000000	\N	2007-09-12 12:11:16.311	0	First line	\N	\N	1
771	412	2	1	740.0000000000	37.0000000000	20.0000000000	\N	2007-09-12 12:11:16.352	0	Second line	\N	\N	1
772	413	1	1	930.0000000000	93.0000000000	10.0000000000	\N	2007-09-12 12:11:16.731	0	First line	\N	\N	1
773	413	2	1	1380.0000000000	69.0000000000	20.0000000000	\N	2007-09-12 12:11:16.733	0	Second line	\N	\N	1
774	414	1	1	760.0000000000	76.0000000000	10.0000000000	\N	2007-09-12 12:11:16.971	0	First line	\N	\N	1
775	414	2	1	1700.0000000000	85.0000000000	20.0000000000	\N	2007-09-12 12:11:16.973	0	Second line	\N	\N	1
776	415	1	1	40.0000000000	4.0000000000	10.0000000000	\N	2007-09-12 12:11:17.228	0	First line	\N	\N	1
777	415	2	1	440.0000000000	22.0000000000	20.0000000000	\N	2007-09-12 12:11:17.231	0	Second line	\N	\N	1
778	416	1	1	830.0000000000	83.0000000000	10.0000000000	\N	2007-09-12 12:11:17.469	0	First line	\N	\N	1
779	416	2	1	240.0000000000	12.0000000000	20.0000000000	\N	2007-09-12 12:11:17.471	0	Second line	\N	\N	1
780	417	1	1	570.0000000000	57.0000000000	10.0000000000	\N	2007-09-12 12:11:17.923	0	First line	\N	\N	1
781	417	2	1	1960.0000000000	98.0000000000	20.0000000000	\N	2007-09-12 12:11:17.932	0	Second line	\N	\N	1
782	418	1	1	670.0000000000	67.0000000000	10.0000000000	\N	2007-09-12 12:11:18.411	0	First line	\N	\N	1
783	418	2	1	1400.0000000000	70.0000000000	20.0000000000	\N	2007-09-12 12:11:18.435	0	Second line	\N	\N	1
784	419	1	1	660.0000000000	66.0000000000	10.0000000000	\N	2007-09-12 12:11:18.884	0	First line	\N	\N	1
785	419	2	1	1080.0000000000	54.0000000000	20.0000000000	\N	2007-09-12 12:11:18.888	0	Second line	\N	\N	1
786	420	1	1	550.0000000000	55.0000000000	10.0000000000	\N	2007-09-12 12:11:19.283	0	First line	\N	\N	1
787	420	2	1	920.0000000000	46.0000000000	20.0000000000	\N	2007-09-12 12:11:19.285	0	Second line	\N	\N	1
788	421	1	1	350.0000000000	35.0000000000	10.0000000000	\N	2007-09-12 12:11:19.526	0	First line	\N	\N	1
789	421	2	1	1400.0000000000	70.0000000000	20.0000000000	\N	2007-09-12 12:11:19.529	0	Second line	\N	\N	1
790	422	1	1	970.0000000000	97.0000000000	10.0000000000	\N	2007-09-12 12:11:19.778	0	First line	\N	\N	1
791	422	2	1	1340.0000000000	67.0000000000	20.0000000000	\N	2007-09-12 12:11:19.78	0	Second line	\N	\N	1
792	423	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:11:20.028	0	First line	\N	\N	1
793	423	2	1	1660.0000000000	83.0000000000	20.0000000000	\N	2007-09-12 12:11:20.03	0	Second line	\N	\N	1
794	424	1	1	590.0000000000	59.0000000000	10.0000000000	\N	2007-09-12 12:11:20.321	0	First line	\N	\N	1
795	424	2	1	900.0000000000	45.0000000000	20.0000000000	\N	2007-09-12 12:11:20.329	0	Second line	\N	\N	1
796	425	1	1	990.0000000000	99.0000000000	10.0000000000	\N	2007-09-12 12:11:20.832	0	First line	\N	\N	1
797	425	2	1	220.0000000000	11.0000000000	20.0000000000	\N	2007-09-12 12:11:20.842	0	Second line	\N	\N	1
798	426	1	1	590.0000000000	59.0000000000	10.0000000000	\N	2007-09-12 12:11:21.315	0	First line	\N	\N	1
799	426	2	1	200.0000000000	10.0000000000	20.0000000000	\N	2007-09-12 12:11:21.32	0	Second line	\N	\N	1
800	427	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:11:21.773	0	First line	\N	\N	1
801	427	2	1	600.0000000000	30.0000000000	20.0000000000	\N	2007-09-12 12:11:21.784	0	Second line	\N	\N	1
802	428	1	1	650.0000000000	65.0000000000	10.0000000000	\N	2007-09-12 12:11:22.056	0	First line	\N	\N	1
803	428	2	1	800.0000000000	40.0000000000	20.0000000000	\N	2007-09-12 12:11:22.058	0	Second line	\N	\N	1
804	429	1	1	380.0000000000	38.0000000000	10.0000000000	\N	2007-09-12 12:11:22.301	0	First line	\N	\N	1
805	429	2	1	1080.0000000000	54.0000000000	20.0000000000	\N	2007-09-12 12:11:22.304	0	Second line	\N	\N	1
806	430	1	1	250.0000000000	25.0000000000	10.0000000000	\N	2007-09-12 12:11:22.55	0	First line	\N	\N	1
807	430	2	1	1880.0000000000	94.0000000000	20.0000000000	\N	2007-09-12 12:11:22.552	0	Second line	\N	\N	1
808	431	1	1	700.0000000000	70.0000000000	10.0000000000	\N	2007-09-12 12:11:22.799	0	First line	\N	\N	1
809	431	2	1	1480.0000000000	74.0000000000	20.0000000000	\N	2007-09-12 12:11:22.801	0	Second line	\N	\N	1
810	432	1	1	250.0000000000	25.0000000000	10.0000000000	\N	2007-09-12 12:11:23.271	0	First line	\N	\N	1
811	432	2	1	340.0000000000	17.0000000000	20.0000000000	\N	2007-09-12 12:11:23.278	0	Second line	\N	\N	1
812	433	1	1	630.0000000000	63.0000000000	10.0000000000	\N	2007-09-12 12:11:23.746	0	First line	\N	\N	1
813	433	2	1	700.0000000000	35.0000000000	20.0000000000	\N	2007-09-12 12:11:23.75	0	Second line	\N	\N	1
814	434	1	1	980.0000000000	98.0000000000	10.0000000000	\N	2007-09-12 12:11:24.192	0	First line	\N	\N	1
815	434	2	1	420.0000000000	21.0000000000	20.0000000000	\N	2007-09-12 12:11:24.209	0	Second line	\N	\N	1
816	435	1	1	410.0000000000	41.0000000000	10.0000000000	\N	2007-09-12 12:11:24.61	0	First line	\N	\N	1
817	435	2	1	320.0000000000	16.0000000000	20.0000000000	\N	2007-09-12 12:11:24.612	0	Second line	\N	\N	1
818	436	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:11:24.858	0	First line	\N	\N	1
819	436	2	1	1460.0000000000	73.0000000000	20.0000000000	\N	2007-09-12 12:11:24.86	0	Second line	\N	\N	1
820	437	1	1	980.0000000000	98.0000000000	10.0000000000	\N	2007-09-12 12:11:25.114	0	First line	\N	\N	1
821	437	2	1	1000.0000000000	50.0000000000	20.0000000000	\N	2007-09-12 12:11:25.116	0	Second line	\N	\N	1
822	438	1	1	380.0000000000	38.0000000000	10.0000000000	\N	2007-09-12 12:11:25.354	0	First line	\N	\N	1
823	438	2	1	740.0000000000	37.0000000000	20.0000000000	\N	2007-09-12 12:11:25.356	0	Second line	\N	\N	1
824	439	1	1	750.0000000000	75.0000000000	10.0000000000	\N	2007-09-12 12:11:25.669	0	First line	\N	\N	1
825	439	2	1	100.0000000000	5.0000000000	20.0000000000	\N	2007-09-12 12:11:25.675	0	Second line	\N	\N	1
826	440	1	1	890.0000000000	89.0000000000	10.0000000000	\N	2007-09-12 12:11:26.146	0	First line	\N	\N	1
827	440	2	1	1120.0000000000	56.0000000000	20.0000000000	\N	2007-09-12 12:11:26.154	0	Second line	\N	\N	1
828	441	1	1	440.0000000000	44.0000000000	10.0000000000	\N	2007-09-12 12:11:26.601	0	First line	\N	\N	1
829	441	2	1	280.0000000000	14.0000000000	20.0000000000	\N	2007-09-12 12:11:26.604	0	Second line	\N	\N	1
830	442	1	1	860.0000000000	86.0000000000	10.0000000000	\N	2007-09-12 12:11:27.088	0	First line	\N	\N	1
831	442	2	1	1760.0000000000	88.0000000000	20.0000000000	\N	2007-09-12 12:11:27.091	0	Second line	\N	\N	1
832	443	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:11:27.359	0	First line	\N	\N	1
833	443	2	1	1120.0000000000	56.0000000000	20.0000000000	\N	2007-09-12 12:11:27.362	0	Second line	\N	\N	1
834	444	1	1	940.0000000000	94.0000000000	10.0000000000	\N	2007-09-12 12:11:27.601	0	First line	\N	\N	1
835	444	2	1	160.0000000000	8.0000000000	20.0000000000	\N	2007-09-12 12:11:27.603	0	Second line	\N	\N	1
836	445	1	1	790.0000000000	79.0000000000	10.0000000000	\N	2007-09-12 12:11:27.851	0	First line	\N	\N	1
837	445	2	1	1680.0000000000	84.0000000000	20.0000000000	\N	2007-09-12 12:11:27.854	0	Second line	\N	\N	1
838	446	1	1	930.0000000000	93.0000000000	10.0000000000	\N	2007-09-12 12:11:28.101	0	First line	\N	\N	1
839	446	2	1	100.0000000000	5.0000000000	20.0000000000	\N	2007-09-12 12:11:28.103	0	Second line	\N	\N	1
840	447	1	1	510.0000000000	51.0000000000	10.0000000000	\N	2007-09-12 12:11:28.51	0	First line	\N	\N	1
841	447	2	1	1100.0000000000	55.0000000000	20.0000000000	\N	2007-09-12 12:11:28.515	0	Second line	\N	\N	1
842	448	1	1	990.0000000000	99.0000000000	10.0000000000	\N	2007-09-12 12:11:29.01	0	First line	\N	\N	1
843	448	2	1	500.0000000000	25.0000000000	20.0000000000	\N	2007-09-12 12:11:29.022	0	Second line	\N	\N	1
844	449	1	1	850.0000000000	85.0000000000	10.0000000000	\N	2007-09-12 12:11:29.48	0	First line	\N	\N	1
845	449	2	1	280.0000000000	14.0000000000	20.0000000000	\N	2007-09-12 12:11:29.492	0	Second line	\N	\N	1
846	450	1	1	300.0000000000	30.0000000000	10.0000000000	\N	2007-09-12 12:11:29.889	0	First line	\N	\N	1
847	450	2	1	100.0000000000	5.0000000000	20.0000000000	\N	2007-09-12 12:11:29.891	0	Second line	\N	\N	1
848	451	1	1	260.0000000000	26.0000000000	10.0000000000	\N	2007-09-12 12:11:30.128	0	First line	\N	\N	1
849	451	2	1	460.0000000000	23.0000000000	20.0000000000	\N	2007-09-12 12:11:30.13	0	Second line	\N	\N	1
850	452	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:11:30.366	0	First line	\N	\N	1
851	452	2	1	1180.0000000000	59.0000000000	20.0000000000	\N	2007-09-12 12:11:30.369	0	Second line	\N	\N	1
852	453	1	1	760.0000000000	76.0000000000	10.0000000000	\N	2007-09-12 12:11:30.628	0	First line	\N	\N	1
853	453	2	1	1200.0000000000	60.0000000000	20.0000000000	\N	2007-09-12 12:11:30.63	0	Second line	\N	\N	1
854	454	1	1	400.0000000000	40.0000000000	10.0000000000	\N	2007-09-12 12:11:30.91	0	First line	\N	\N	1
855	454	2	1	1640.0000000000	82.0000000000	20.0000000000	\N	2007-09-12 12:11:30.914	0	Second line	\N	\N	1
856	455	1	1	530.0000000000	53.0000000000	10.0000000000	\N	2007-09-12 12:11:31.429	0	First line	\N	\N	1
857	455	2	1	760.0000000000	38.0000000000	20.0000000000	\N	2007-09-12 12:11:31.435	0	Second line	\N	\N	1
858	456	1	1	740.0000000000	74.0000000000	10.0000000000	\N	2007-09-12 12:11:31.902	0	First line	\N	\N	1
859	456	2	1	900.0000000000	45.0000000000	20.0000000000	\N	2007-09-12 12:11:31.91	0	Second line	\N	\N	1
860	457	1	1	490.0000000000	49.0000000000	10.0000000000	\N	2007-09-12 12:11:32.401	0	First line	\N	\N	1
861	457	2	1	780.0000000000	39.0000000000	20.0000000000	\N	2007-09-12 12:11:32.408	0	Second line	\N	\N	1
862	458	1	1	90.0000000000	9.0000000000	10.0000000000	\N	2007-09-12 12:11:32.664	0	First line	\N	\N	1
863	458	2	1	860.0000000000	43.0000000000	20.0000000000	\N	2007-09-12 12:11:32.666	0	Second line	\N	\N	1
864	459	1	1	70.0000000000	7.0000000000	10.0000000000	\N	2007-09-12 12:11:32.916	0	First line	\N	\N	1
865	459	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:11:32.919	0	Second line	\N	\N	1
866	460	1	1	160.0000000000	16.0000000000	10.0000000000	\N	2007-09-12 12:11:33.171	0	First line	\N	\N	1
867	460	2	1	1700.0000000000	85.0000000000	20.0000000000	\N	2007-09-12 12:11:33.173	0	Second line	\N	\N	1
868	461	1	1	930.0000000000	93.0000000000	10.0000000000	\N	2007-09-12 12:11:33.41	0	First line	\N	\N	1
869	461	2	1	940.0000000000	47.0000000000	20.0000000000	\N	2007-09-12 12:11:33.412	0	Second line	\N	\N	1
870	462	1	1	710.0000000000	71.0000000000	10.0000000000	\N	2007-09-12 12:11:33.851	0	First line	\N	\N	1
871	462	2	1	800.0000000000	40.0000000000	20.0000000000	\N	2007-09-12 12:11:33.859	0	Second line	\N	\N	1
872	463	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:11:34.329	0	First line	\N	\N	1
873	463	2	1	920.0000000000	46.0000000000	20.0000000000	\N	2007-09-12 12:11:34.335	0	Second line	\N	\N	1
874	464	1	1	350.0000000000	35.0000000000	10.0000000000	\N	2007-09-12 12:11:35.003	0	First line	\N	\N	1
875	464	2	1	280.0000000000	14.0000000000	20.0000000000	\N	2007-09-12 12:11:35.007	0	Second line	\N	\N	1
876	465	1	1	370.0000000000	37.0000000000	10.0000000000	\N	2007-09-12 12:11:35.272	0	First line	\N	\N	1
877	465	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:11:35.275	0	Second line	\N	\N	1
878	466	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:11:35.515	0	First line	\N	\N	1
879	466	2	1	1080.0000000000	54.0000000000	20.0000000000	\N	2007-09-12 12:11:35.518	0	Second line	\N	\N	1
880	467	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:11:35.781	0	First line	\N	\N	1
881	467	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:11:35.783	0	Second line	\N	\N	1
882	468	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:11:36.062	0	First line	\N	\N	1
883	468	2	1	680.0000000000	34.0000000000	20.0000000000	\N	2007-09-12 12:11:36.068	0	Second line	\N	\N	1
884	469	1	1	590.0000000000	59.0000000000	10.0000000000	\N	2007-09-12 12:11:36.562	0	First line	\N	\N	1
885	469	2	1	620.0000000000	31.0000000000	20.0000000000	\N	2007-09-12 12:11:36.567	0	Second line	\N	\N	1
886	470	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:11:37.095	0	First line	\N	\N	1
887	470	2	1	1780.0000000000	89.0000000000	20.0000000000	\N	2007-09-12 12:11:37.098	0	Second line	\N	\N	1
888	471	1	1	990.0000000000	99.0000000000	10.0000000000	\N	2007-09-12 12:11:37.56	0	First line	\N	\N	1
889	471	2	1	1780.0000000000	89.0000000000	20.0000000000	\N	2007-09-12 12:11:37.568	0	Second line	\N	\N	1
890	472	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:11:37.832	0	First line	\N	\N	1
891	472	2	1	80.0000000000	4.0000000000	20.0000000000	\N	2007-09-12 12:11:37.841	0	Second line	\N	\N	1
892	473	1	1	1000.0000000000	100.0000000000	10.0000000000	\N	2007-09-12 12:11:38.082	0	First line	\N	\N	1
893	473	2	1	1240.0000000000	62.0000000000	20.0000000000	\N	2007-09-12 12:11:38.084	0	Second line	\N	\N	1
894	474	1	1	650.0000000000	65.0000000000	10.0000000000	\N	2007-09-12 12:11:38.328	0	First line	\N	\N	1
895	474	2	1	740.0000000000	37.0000000000	20.0000000000	\N	2007-09-12 12:11:38.33	0	Second line	\N	\N	1
896	475	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:11:38.58	0	First line	\N	\N	1
897	475	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:11:38.582	0	Second line	\N	\N	1
898	476	1	1	210.0000000000	21.0000000000	10.0000000000	\N	2007-09-12 12:11:39.005	0	First line	\N	\N	1
899	476	2	1	1100.0000000000	55.0000000000	20.0000000000	\N	2007-09-12 12:11:39.012	0	Second line	\N	\N	1
900	477	1	1	850.0000000000	85.0000000000	10.0000000000	\N	2007-09-12 12:11:39.446	0	First line	\N	\N	1
901	477	2	1	1660.0000000000	83.0000000000	20.0000000000	\N	2007-09-12 12:11:39.455	0	Second line	\N	\N	1
902	478	1	1	370.0000000000	37.0000000000	10.0000000000	\N	2007-09-12 12:11:39.919	0	First line	\N	\N	1
903	478	2	1	480.0000000000	24.0000000000	20.0000000000	\N	2007-09-12 12:11:39.926	0	Second line	\N	\N	1
904	479	1	1	90.0000000000	9.0000000000	10.0000000000	\N	2007-09-12 12:11:40.346	0	First line	\N	\N	1
905	479	2	1	1500.0000000000	75.0000000000	20.0000000000	\N	2007-09-12 12:11:40.349	0	Second line	\N	\N	1
906	480	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:11:40.592	0	First line	\N	\N	1
907	480	2	1	640.0000000000	32.0000000000	20.0000000000	\N	2007-09-12 12:11:40.594	0	Second line	\N	\N	1
908	481	1	1	110.0000000000	11.0000000000	10.0000000000	\N	2007-09-12 12:11:40.833	0	First line	\N	\N	1
909	481	2	1	1520.0000000000	76.0000000000	20.0000000000	\N	2007-09-12 12:11:40.835	0	Second line	\N	\N	1
910	482	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:11:41.079	0	First line	\N	\N	1
911	482	2	1	1100.0000000000	55.0000000000	20.0000000000	\N	2007-09-12 12:11:41.081	0	Second line	\N	\N	1
912	483	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:11:41.365	0	First line	\N	\N	1
913	483	2	1	1020.0000000000	51.0000000000	20.0000000000	\N	2007-09-12 12:11:41.372	0	Second line	\N	\N	1
914	484	1	1	380.0000000000	38.0000000000	10.0000000000	\N	2007-09-12 12:11:41.842	0	First line	\N	\N	1
915	484	2	1	1020.0000000000	51.0000000000	20.0000000000	\N	2007-09-12 12:11:41.845	0	Second line	\N	\N	1
916	485	1	1	540.0000000000	54.0000000000	10.0000000000	\N	2007-09-12 12:11:42.299	0	First line	\N	\N	1
917	485	2	1	500.0000000000	25.0000000000	20.0000000000	\N	2007-09-12 12:11:42.301	0	Second line	\N	\N	1
918	486	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:11:42.775	0	First line	\N	\N	1
919	486	2	1	500.0000000000	25.0000000000	20.0000000000	\N	2007-09-12 12:11:42.784	0	Second line	\N	\N	1
920	487	1	1	60.0000000000	6.0000000000	10.0000000000	\N	2007-09-12 12:11:43.17	0	First line	\N	\N	1
921	487	2	1	720.0000000000	36.0000000000	20.0000000000	\N	2007-09-12 12:11:43.172	0	Second line	\N	\N	1
922	488	1	1	270.0000000000	27.0000000000	10.0000000000	\N	2007-09-12 12:11:43.416	0	First line	\N	\N	1
923	488	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:11:43.419	0	Second line	\N	\N	1
924	489	1	1	410.0000000000	41.0000000000	10.0000000000	\N	2007-09-12 12:11:43.672	0	First line	\N	\N	1
925	489	2	1	120.0000000000	6.0000000000	20.0000000000	\N	2007-09-12 12:11:43.674	0	Second line	\N	\N	1
926	490	1	1	400.0000000000	40.0000000000	10.0000000000	\N	2007-09-12 12:11:43.923	0	First line	\N	\N	1
927	490	2	1	300.0000000000	15.0000000000	20.0000000000	\N	2007-09-12 12:11:43.925	0	Second line	\N	\N	1
928	491	1	1	70.0000000000	7.0000000000	10.0000000000	\N	2007-09-12 12:11:44.233	0	First line	\N	\N	1
929	491	2	1	760.0000000000	38.0000000000	20.0000000000	\N	2007-09-12 12:11:44.244	0	Second line	\N	\N	1
930	492	1	1	740.0000000000	74.0000000000	10.0000000000	\N	2007-09-12 12:11:44.737	0	First line	\N	\N	1
931	492	2	1	520.0000000000	26.0000000000	20.0000000000	\N	2007-09-12 12:11:44.743	0	Second line	\N	\N	1
932	493	1	1	790.0000000000	79.0000000000	10.0000000000	\N	2007-09-12 12:11:45.198	0	First line	\N	\N	1
933	493	2	1	180.0000000000	9.0000000000	20.0000000000	\N	2007-09-12 12:11:45.202	0	Second line	\N	\N	1
934	494	1	1	920.0000000000	92.0000000000	10.0000000000	\N	2007-09-12 12:11:45.637	0	First line	\N	\N	1
935	494	2	1	820.0000000000	41.0000000000	20.0000000000	\N	2007-09-12 12:11:45.641	0	Second line	\N	\N	1
936	495	1	1	550.0000000000	55.0000000000	10.0000000000	\N	2007-09-12 12:11:45.90	0	First line	\N	\N	1
937	495	2	1	1300.0000000000	65.0000000000	20.0000000000	\N	2007-09-12 12:11:45.902	0	Second line	\N	\N	1
938	496	1	1	460.0000000000	46.0000000000	10.0000000000	\N	2007-09-12 12:11:46.154	0	First line	\N	\N	1
939	496	2	1	720.0000000000	36.0000000000	20.0000000000	\N	2007-09-12 12:11:46.156	0	Second line	\N	\N	1
940	497	1	1	140.0000000000	14.0000000000	10.0000000000	\N	2007-09-12 12:11:46.411	0	First line	\N	\N	1
941	497	2	1	1060.0000000000	53.0000000000	20.0000000000	\N	2007-09-12 12:11:46.413	0	Second line	\N	\N	1
942	498	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:11:46.672	0	First line	\N	\N	1
943	498	2	1	780.0000000000	39.0000000000	20.0000000000	\N	2007-09-12 12:11:46.681	0	Second line	\N	\N	1
944	499	1	1	150.0000000000	15.0000000000	10.0000000000	\N	2007-09-12 12:11:47.117	0	First line	\N	\N	1
945	499	2	1	220.0000000000	11.0000000000	20.0000000000	\N	2007-09-12 12:11:47.126	0	Second line	\N	\N	1
946	500	1	1	540.0000000000	54.0000000000	10.0000000000	\N	2007-09-12 12:11:47.591	0	First line	\N	\N	1
947	500	2	1	1800.0000000000	90.0000000000	20.0000000000	\N	2007-09-12 12:11:47.603	0	Second line	\N	\N	1
948	501	1	1	500.0000000000	50.0000000000	10.0000000000	\N	2007-09-12 12:11:48.068	0	First line	\N	\N	1
949	501	2	1	160.0000000000	8.0000000000	20.0000000000	\N	2007-09-12 12:11:48.075	0	Second line	\N	\N	1
950	502	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:11:48.462	0	First line	\N	\N	1
951	502	2	1	480.0000000000	24.0000000000	20.0000000000	\N	2007-09-12 12:11:48.464	0	Second line	\N	\N	1
952	503	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:11:48.71	0	First line	\N	\N	1
953	503	2	1	1680.0000000000	84.0000000000	20.0000000000	\N	2007-09-12 12:11:48.712	0	Second line	\N	\N	1
954	504	1	1	790.0000000000	79.0000000000	10.0000000000	\N	2007-09-12 12:11:48.965	0	First line	\N	\N	1
955	504	2	1	580.0000000000	29.0000000000	20.0000000000	\N	2007-09-12 12:11:48.967	0	Second line	\N	\N	1
956	505	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:11:49.205	0	First line	\N	\N	1
957	505	2	1	1520.0000000000	76.0000000000	20.0000000000	\N	2007-09-12 12:11:49.215	0	Second line	\N	\N	1
958	506	1	1	450.0000000000	45.0000000000	10.0000000000	\N	2007-09-12 12:11:49.523	0	First line	\N	\N	1
959	506	2	1	360.0000000000	18.0000000000	20.0000000000	\N	2007-09-12 12:11:49.53	0	Second line	\N	\N	1
960	507	1	1	880.0000000000	88.0000000000	10.0000000000	\N	2007-09-12 12:11:50.024	0	First line	\N	\N	1
961	507	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:11:50.029	0	Second line	\N	\N	1
962	508	1	1	620.0000000000	62.0000000000	10.0000000000	\N	2007-09-12 12:11:50.489	0	First line	\N	\N	1
963	508	2	1	1880.0000000000	94.0000000000	20.0000000000	\N	2007-09-12 12:11:50.496	0	Second line	\N	\N	1
964	509	1	1	140.0000000000	14.0000000000	10.0000000000	\N	2007-09-12 12:11:50.96	0	First line	\N	\N	1
965	509	2	1	300.0000000000	15.0000000000	20.0000000000	\N	2007-09-12 12:11:50.962	0	Second line	\N	\N	1
966	510	1	1	270.0000000000	27.0000000000	10.0000000000	\N	2007-09-12 12:11:51.216	0	First line	\N	\N	1
967	510	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:11:51.219	0	Second line	\N	\N	1
968	511	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:11:51.47	0	First line	\N	\N	1
969	511	2	1	340.0000000000	17.0000000000	20.0000000000	\N	2007-09-12 12:11:51.473	0	Second line	\N	\N	1
970	512	1	1	350.0000000000	35.0000000000	10.0000000000	\N	2007-09-12 12:11:51.707	0	First line	\N	\N	1
971	512	2	1	1620.0000000000	81.0000000000	20.0000000000	\N	2007-09-12 12:11:51.709	0	Second line	\N	\N	1
972	513	1	1	830.0000000000	83.0000000000	10.0000000000	\N	2007-09-12 12:11:52	0	First line	\N	\N	1
973	513	2	1	340.0000000000	17.0000000000	20.0000000000	\N	2007-09-12 12:11:52.022	0	Second line	\N	\N	1
974	514	1	1	850.0000000000	85.0000000000	10.0000000000	\N	2007-09-12 12:11:52.485	0	First line	\N	\N	1
975	514	2	1	200.0000000000	10.0000000000	20.0000000000	\N	2007-09-12 12:11:52.491	0	Second line	\N	\N	1
976	515	1	1	640.0000000000	64.0000000000	10.0000000000	\N	2007-09-12 12:11:52.97	0	First line	\N	\N	1
977	515	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:11:52.976	0	Second line	\N	\N	1
978	516	1	1	380.0000000000	38.0000000000	10.0000000000	\N	2007-09-12 12:11:53.459	0	First line	\N	\N	1
979	516	2	1	1680.0000000000	84.0000000000	20.0000000000	\N	2007-09-12 12:11:53.463	0	Second line	\N	\N	1
980	517	1	1	110.0000000000	11.0000000000	10.0000000000	\N	2007-09-12 12:11:53.748	0	First line	\N	\N	1
981	517	2	1	580.0000000000	29.0000000000	20.0000000000	\N	2007-09-12 12:11:53.75	0	Second line	\N	\N	1
982	518	1	1	510.0000000000	51.0000000000	10.0000000000	\N	2007-09-12 12:11:54.006	0	First line	\N	\N	1
983	518	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:11:54.008	0	Second line	\N	\N	1
984	519	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:11:54.249	0	First line	\N	\N	1
985	519	2	1	1380.0000000000	69.0000000000	20.0000000000	\N	2007-09-12 12:11:54.251	0	Second line	\N	\N	1
986	520	1	1	690.0000000000	69.0000000000	10.0000000000	\N	2007-09-12 12:11:54.485	0	First line	\N	\N	1
987	520	2	1	1900.0000000000	95.0000000000	20.0000000000	\N	2007-09-12 12:11:54.487	0	Second line	\N	\N	1
988	521	1	1	600.0000000000	60.0000000000	10.0000000000	\N	2007-09-12 12:11:54.96	0	First line	\N	\N	1
989	521	2	1	1080.0000000000	54.0000000000	20.0000000000	\N	2007-09-12 12:11:54.965	0	Second line	\N	\N	1
990	522	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:11:55.44	0	First line	\N	\N	1
991	522	2	1	1140.0000000000	57.0000000000	20.0000000000	\N	2007-09-12 12:11:55.443	0	Second line	\N	\N	1
992	523	1	1	760.0000000000	76.0000000000	10.0000000000	\N	2007-09-12 12:11:55.942	0	First line	\N	\N	1
993	523	2	1	1360.0000000000	68.0000000000	20.0000000000	\N	2007-09-12 12:11:55.945	0	Second line	\N	\N	1
994	524	1	1	870.0000000000	87.0000000000	10.0000000000	\N	2007-09-12 12:11:56.214	0	First line	\N	\N	1
995	524	2	1	960.0000000000	48.0000000000	20.0000000000	\N	2007-09-12 12:11:56.216	0	Second line	\N	\N	1
996	525	1	1	660.0000000000	66.0000000000	10.0000000000	\N	2007-09-12 12:11:56.469	0	First line	\N	\N	1
997	525	2	1	740.0000000000	37.0000000000	20.0000000000	\N	2007-09-12 12:11:56.472	0	Second line	\N	\N	1
998	526	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:11:56.724	0	First line	\N	\N	1
999	526	2	1	1280.0000000000	64.0000000000	20.0000000000	\N	2007-09-12 12:11:56.726	0	Second line	\N	\N	1
1000	527	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:11:56.965	0	First line	\N	\N	1
1001	527	2	1	820.0000000000	41.0000000000	20.0000000000	\N	2007-09-12 12:11:56.967	0	Second line	\N	\N	1
1002	528	1	1	280.0000000000	28.0000000000	10.0000000000	\N	2007-09-12 12:11:57.387	0	First line	\N	\N	1
1003	528	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:11:57.396	0	Second line	\N	\N	1
1004	529	1	1	710.0000000000	71.0000000000	10.0000000000	\N	2007-09-12 12:11:57.851	0	First line	\N	\N	1
1005	529	2	1	620.0000000000	31.0000000000	20.0000000000	\N	2007-09-12 12:11:57.854	0	Second line	\N	\N	1
1006	530	1	1	450.0000000000	45.0000000000	10.0000000000	\N	2007-09-12 12:11:58.32	0	First line	\N	\N	1
1007	530	2	1	1620.0000000000	81.0000000000	20.0000000000	\N	2007-09-12 12:11:58.328	0	Second line	\N	\N	1
1008	531	1	1	840.0000000000	84.0000000000	10.0000000000	\N	2007-09-12 12:11:58.768	0	First line	\N	\N	1
1009	531	2	1	1500.0000000000	75.0000000000	20.0000000000	\N	2007-09-12 12:11:58.77	0	Second line	\N	\N	1
1010	532	1	1	200.0000000000	20.0000000000	10.0000000000	\N	2007-09-12 12:11:59.019	0	First line	\N	\N	1
1011	532	2	1	520.0000000000	26.0000000000	20.0000000000	\N	2007-09-12 12:11:59.021	0	Second line	\N	\N	1
1012	533	1	1	480.0000000000	48.0000000000	10.0000000000	\N	2007-09-12 12:11:59.267	0	First line	\N	\N	1
1013	533	2	1	600.0000000000	30.0000000000	20.0000000000	\N	2007-09-12 12:11:59.269	0	Second line	\N	\N	1
1014	534	1	1	600.0000000000	60.0000000000	10.0000000000	\N	2007-09-12 12:11:59.504	0	First line	\N	\N	1
1015	534	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:11:59.506	0	Second line	\N	\N	1
1016	535	1	1	140.0000000000	14.0000000000	10.0000000000	\N	2007-09-12 12:11:59.814	0	First line	\N	\N	1
1017	535	2	1	1500.0000000000	75.0000000000	20.0000000000	\N	2007-09-12 12:11:59.816	0	Second line	\N	\N	1
1018	536	1	1	910.0000000000	91.0000000000	10.0000000000	\N	2007-09-12 12:12:00.251	0	First line	\N	\N	1
1019	536	2	1	1900.0000000000	95.0000000000	20.0000000000	\N	2007-09-12 12:12:00.255	0	Second line	\N	\N	1
1020	537	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:12:00.725	0	First line	\N	\N	1
1021	537	2	1	1980.0000000000	99.0000000000	20.0000000000	\N	2007-09-12 12:12:00.732	0	Second line	\N	\N	1
1022	538	1	1	620.0000000000	62.0000000000	10.0000000000	\N	2007-09-12 12:12:01.221	0	First line	\N	\N	1
1023	538	2	1	1520.0000000000	76.0000000000	20.0000000000	\N	2007-09-12 12:12:01.228	0	Second line	\N	\N	1
1024	539	1	1	690.0000000000	69.0000000000	10.0000000000	\N	2007-09-12 12:12:02.091	0	First line	\N	\N	1
1025	539	2	1	1420.0000000000	71.0000000000	20.0000000000	\N	2007-09-12 12:12:02.094	0	Second line	\N	\N	1
1026	540	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:12:02.336	0	First line	\N	\N	1
1027	540	2	1	100.0000000000	5.0000000000	20.0000000000	\N	2007-09-12 12:12:02.343	0	Second line	\N	\N	1
1028	541	1	1	170.0000000000	17.0000000000	10.0000000000	\N	2007-09-12 12:12:02.811	0	First line	\N	\N	1
1029	541	2	1	440.0000000000	22.0000000000	20.0000000000	\N	2007-09-12 12:12:02.815	0	Second line	\N	\N	1
1030	542	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:12:03.191	0	First line	\N	\N	1
1031	542	2	1	720.0000000000	36.0000000000	20.0000000000	\N	2007-09-12 12:12:03.194	0	Second line	\N	\N	1
1032	543	1	1	710.0000000000	71.0000000000	10.0000000000	\N	2007-09-12 12:12:03.429	0	First line	\N	\N	1
1033	543	2	1	980.0000000000	49.0000000000	20.0000000000	\N	2007-09-12 12:12:03.431	0	Second line	\N	\N	1
1034	544	1	1	130.0000000000	13.0000000000	10.0000000000	\N	2007-09-12 12:12:03.672	0	First line	\N	\N	1
1035	544	2	1	1380.0000000000	69.0000000000	20.0000000000	\N	2007-09-12 12:12:03.674	0	Second line	\N	\N	1
1036	545	1	1	690.0000000000	69.0000000000	10.0000000000	\N	2007-09-12 12:12:03.926	0	First line	\N	\N	1
1037	545	2	1	20.0000000000	1.0000000000	20.0000000000	\N	2007-09-12 12:12:03.929	0	Second line	\N	\N	1
1038	546	1	1	960.0000000000	96.0000000000	10.0000000000	\N	2007-09-12 12:12:04.197	0	First line	\N	\N	1
1039	546	2	1	800.0000000000	40.0000000000	20.0000000000	\N	2007-09-12 12:12:04.204	0	Second line	\N	\N	1
1040	547	1	1	750.0000000000	75.0000000000	10.0000000000	\N	2007-09-12 12:12:04.606	0	First line	\N	\N	1
1041	547	2	1	120.0000000000	6.0000000000	20.0000000000	\N	2007-09-12 12:12:04.609	0	Second line	\N	\N	1
1042	548	1	1	360.0000000000	36.0000000000	10.0000000000	\N	2007-09-12 12:12:05.024	0	First line	\N	\N	1
1043	548	2	1	1900.0000000000	95.0000000000	20.0000000000	\N	2007-09-12 12:12:05.03	0	Second line	\N	\N	1
1044	549	1	1	770.0000000000	77.0000000000	10.0000000000	\N	2007-09-12 12:12:05.448	0	First line	\N	\N	1
1045	549	2	1	40.0000000000	2.0000000000	20.0000000000	\N	2007-09-12 12:12:05.453	0	Second line	\N	\N	1
1046	550	1	1	350.0000000000	35.0000000000	10.0000000000	\N	2007-09-12 12:12:05.914	0	First line	\N	\N	1
1047	550	2	1	760.0000000000	38.0000000000	20.0000000000	\N	2007-09-12 12:12:05.92	0	Second line	\N	\N	1
1048	551	1	1	440.0000000000	44.0000000000	10.0000000000	\N	2007-09-12 12:12:06.21	0	First line	\N	\N	1
1049	551	2	1	1700.0000000000	85.0000000000	20.0000000000	\N	2007-09-12 12:12:06.212	0	Second line	\N	\N	1
1050	552	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:12:06.462	0	First line	\N	\N	1
1051	552	2	1	1660.0000000000	83.0000000000	20.0000000000	\N	2007-09-12 12:12:06.464	0	Second line	\N	\N	1
1052	553	1	1	890.0000000000	89.0000000000	10.0000000000	\N	2007-09-12 12:12:06.709	0	First line	\N	\N	1
1053	553	2	1	1760.0000000000	88.0000000000	20.0000000000	\N	2007-09-12 12:12:06.711	0	Second line	\N	\N	1
1054	554	1	1	990.0000000000	99.0000000000	10.0000000000	\N	2007-09-12 12:12:06.95	0	First line	\N	\N	1
1055	554	2	1	400.0000000000	20.0000000000	20.0000000000	\N	2007-09-12 12:12:06.952	0	Second line	\N	\N	1
1056	555	1	1	760.0000000000	76.0000000000	10.0000000000	\N	2007-09-12 12:12:07.328	0	First line	\N	\N	1
1057	555	2	1	920.0000000000	46.0000000000	20.0000000000	\N	2007-09-12 12:12:07.335	0	Second line	\N	\N	1
1058	556	1	1	270.0000000000	27.0000000000	10.0000000000	\N	2007-09-12 12:12:07.823	0	First line	\N	\N	1
1059	556	2	1	1880.0000000000	94.0000000000	20.0000000000	\N	2007-09-12 12:12:07.826	0	Second line	\N	\N	1
1060	557	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:12:08.29	0	First line	\N	\N	1
1061	557	2	1	820.0000000000	41.0000000000	20.0000000000	\N	2007-09-12 12:12:08.296	0	Second line	\N	\N	1
1062	558	1	1	610.0000000000	61.0000000000	10.0000000000	\N	2007-09-12 12:12:08.771	0	First line	\N	\N	1
1063	558	2	1	960.0000000000	48.0000000000	20.0000000000	\N	2007-09-12 12:12:08.78	0	Second line	\N	\N	1
1064	559	1	1	380.0000000000	38.0000000000	10.0000000000	\N	2007-09-12 12:12:09.043	0	First line	\N	\N	1
1065	559	2	1	1120.0000000000	56.0000000000	20.0000000000	\N	2007-09-12 12:12:09.045	0	Second line	\N	\N	1
1066	560	1	1	230.0000000000	23.0000000000	10.0000000000	\N	2007-09-12 12:12:09.291	0	First line	\N	\N	1
1067	560	2	1	380.0000000000	19.0000000000	20.0000000000	\N	2007-09-12 12:12:09.293	0	Second line	\N	\N	1
1068	561	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:12:09.535	0	First line	\N	\N	1
1069	561	2	1	1640.0000000000	82.0000000000	20.0000000000	\N	2007-09-12 12:12:09.538	0	Second line	\N	\N	1
1070	562	1	1	290.0000000000	29.0000000000	10.0000000000	\N	2007-09-12 12:12:09.783	0	First line	\N	\N	1
1071	562	2	1	260.0000000000	13.0000000000	20.0000000000	\N	2007-09-12 12:12:09.785	0	Second line	\N	\N	1
1072	563	1	1	860.0000000000	86.0000000000	10.0000000000	\N	2007-09-12 12:12:10.248	0	First line	\N	\N	1
1073	563	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:12:10.254	0	Second line	\N	\N	1
1074	564	1	1	190.0000000000	19.0000000000	10.0000000000	\N	2007-09-12 12:12:10.729	0	First line	\N	\N	1
1075	564	2	1	500.0000000000	25.0000000000	20.0000000000	\N	2007-09-12 12:12:10.733	0	Second line	\N	\N	1
1076	565	1	1	460.0000000000	46.0000000000	10.0000000000	\N	2007-09-12 12:12:11.218	0	First line	\N	\N	1
1077	565	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:12:11.228	0	Second line	\N	\N	1
1078	566	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:12:11.527	0	First line	\N	\N	1
1079	566	2	1	900.0000000000	45.0000000000	20.0000000000	\N	2007-09-12 12:12:11.53	0	Second line	\N	\N	1
1080	567	1	1	790.0000000000	79.0000000000	10.0000000000	\N	2007-09-12 12:12:11.776	0	First line	\N	\N	1
1081	567	2	1	920.0000000000	46.0000000000	20.0000000000	\N	2007-09-12 12:12:11.778	0	Second line	\N	\N	1
1082	568	1	1	630.0000000000	63.0000000000	10.0000000000	\N	2007-09-12 12:12:12.013	0	First line	\N	\N	1
1083	568	2	1	960.0000000000	48.0000000000	20.0000000000	\N	2007-09-12 12:12:12.023	0	Second line	\N	\N	1
1084	569	1	1	570.0000000000	57.0000000000	10.0000000000	\N	2007-09-12 12:12:12.259	0	First line	\N	\N	1
1085	569	2	1	1940.0000000000	97.0000000000	20.0000000000	\N	2007-09-12 12:12:12.262	0	Second line	\N	\N	1
1086	570	1	1	480.0000000000	48.0000000000	10.0000000000	\N	2007-09-12 12:12:12.691	0	First line	\N	\N	1
1087	570	2	1	480.0000000000	24.0000000000	20.0000000000	\N	2007-09-12 12:12:12.694	0	Second line	\N	\N	1
1088	571	1	1	190.0000000000	19.0000000000	10.0000000000	\N	2007-09-12 12:12:13.14	0	First line	\N	\N	1
1089	571	2	1	880.0000000000	44.0000000000	20.0000000000	\N	2007-09-12 12:12:13.148	0	Second line	\N	\N	1
1090	572	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:12:13.563	0	First line	\N	\N	1
1091	572	2	1	1480.0000000000	74.0000000000	20.0000000000	\N	2007-09-12 12:12:13.567	0	Second line	\N	\N	1
1092	573	1	1	240.0000000000	24.0000000000	10.0000000000	\N	2007-09-12 12:12:14.006	0	First line	\N	\N	1
1093	573	2	1	820.0000000000	41.0000000000	20.0000000000	\N	2007-09-12 12:12:14.009	0	Second line	\N	\N	1
1094	574	1	1	200.0000000000	20.0000000000	10.0000000000	\N	2007-09-12 12:12:14.25	0	First line	\N	\N	1
1095	574	2	1	1680.0000000000	84.0000000000	20.0000000000	\N	2007-09-12 12:12:14.252	0	Second line	\N	\N	1
1096	575	1	1	650.0000000000	65.0000000000	10.0000000000	\N	2007-09-12 12:12:14.492	0	First line	\N	\N	1
1097	575	2	1	760.0000000000	38.0000000000	20.0000000000	\N	2007-09-12 12:12:14.494	0	Second line	\N	\N	1
1098	576	1	1	650.0000000000	65.0000000000	10.0000000000	\N	2007-09-12 12:12:14.736	0	First line	\N	\N	1
1099	576	2	1	1960.0000000000	98.0000000000	20.0000000000	\N	2007-09-12 12:12:14.739	0	Second line	\N	\N	1
1100	577	1	1	870.0000000000	87.0000000000	10.0000000000	\N	2007-09-12 12:12:14.993	0	First line	\N	\N	1
1101	577	2	1	700.0000000000	35.0000000000	20.0000000000	\N	2007-09-12 12:12:15	0	Second line	\N	\N	1
1102	578	1	1	260.0000000000	26.0000000000	10.0000000000	\N	2007-09-12 12:12:15.446	0	First line	\N	\N	1
1103	578	2	1	1340.0000000000	67.0000000000	20.0000000000	\N	2007-09-12 12:12:15.467	0	Second line	\N	\N	1
1104	579	1	1	550.0000000000	55.0000000000	10.0000000000	\N	2007-09-12 12:12:15.915	0	First line	\N	\N	1
1105	579	2	1	1500.0000000000	75.0000000000	20.0000000000	\N	2007-09-12 12:12:15.921	0	Second line	\N	\N	1
1106	580	1	1	50.0000000000	5.0000000000	10.0000000000	\N	2007-09-12 12:12:16.682	0	First line	\N	\N	1
1107	580	2	1	220.0000000000	11.0000000000	20.0000000000	\N	2007-09-12 12:12:16.684	0	Second line	\N	\N	1
1108	581	1	1	200.0000000000	20.0000000000	10.0000000000	\N	2007-09-12 12:12:16.933	0	First line	\N	\N	1
1109	581	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:12:16.935	0	Second line	\N	\N	1
1110	582	1	1	850.0000000000	85.0000000000	10.0000000000	\N	2007-09-12 12:12:17.172	0	First line	\N	\N	1
1111	582	2	1	1120.0000000000	56.0000000000	20.0000000000	\N	2007-09-12 12:12:17.175	0	Second line	\N	\N	1
1112	583	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:12:17.412	0	First line	\N	\N	1
1113	583	2	1	980.0000000000	49.0000000000	20.0000000000	\N	2007-09-12 12:12:17.414	0	Second line	\N	\N	1
1114	584	1	1	1000.0000000000	100.0000000000	10.0000000000	\N	2007-09-12 12:12:17.72	0	First line	\N	\N	1
1115	584	2	1	1100.0000000000	55.0000000000	20.0000000000	\N	2007-09-12 12:12:17.734	0	Second line	\N	\N	1
1116	585	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:12:18.259	0	First line	\N	\N	1
1117	585	2	1	1400.0000000000	70.0000000000	20.0000000000	\N	2007-09-12 12:12:18.284	0	Second line	\N	\N	1
1118	586	1	1	470.0000000000	47.0000000000	10.0000000000	\N	2007-09-12 12:12:18.757	0	First line	\N	\N	1
1119	586	2	1	300.0000000000	15.0000000000	20.0000000000	\N	2007-09-12 12:12:18.762	0	Second line	\N	\N	1
1120	587	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:12:19.192	0	First line	\N	\N	1
1121	587	2	1	1280.0000000000	64.0000000000	20.0000000000	\N	2007-09-12 12:12:19.194	0	Second line	\N	\N	1
1122	588	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:12:19.432	0	First line	\N	\N	1
1123	588	2	1	1500.0000000000	75.0000000000	20.0000000000	\N	2007-09-12 12:12:19.435	0	Second line	\N	\N	1
1124	589	1	1	830.0000000000	83.0000000000	10.0000000000	\N	2007-09-12 12:12:19.671	0	First line	\N	\N	1
1125	589	2	1	2000.0000000000	100.0000000000	20.0000000000	\N	2007-09-12 12:12:19.673	0	Second line	\N	\N	1
1126	590	1	1	420.0000000000	42.0000000000	10.0000000000	\N	2007-09-12 12:12:19.915	0	First line	\N	\N	1
1127	590	2	1	200.0000000000	10.0000000000	20.0000000000	\N	2007-09-12 12:12:19.918	0	Second line	\N	\N	1
1128	591	1	1	170.0000000000	17.0000000000	10.0000000000	\N	2007-09-12 12:12:20.215	0	First line	\N	\N	1
1129	591	2	1	40.0000000000	2.0000000000	20.0000000000	\N	2007-09-12 12:12:20.218	0	Second line	\N	\N	1
1130	592	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:12:20.704	0	First line	\N	\N	1
1131	592	2	1	720.0000000000	36.0000000000	20.0000000000	\N	2007-09-12 12:12:20.714	0	Second line	\N	\N	1
1132	593	1	1	900.0000000000	90.0000000000	10.0000000000	\N	2007-09-12 12:12:21.173	0	First line	\N	\N	1
1133	593	2	1	640.0000000000	32.0000000000	20.0000000000	\N	2007-09-12 12:12:21.178	0	Second line	\N	\N	1
1134	594	1	1	730.0000000000	73.0000000000	10.0000000000	\N	2007-09-12 12:12:21.595	0	First line	\N	\N	1
1135	594	2	1	1900.0000000000	95.0000000000	20.0000000000	\N	2007-09-12 12:12:21.603	0	Second line	\N	\N	1
1136	595	1	1	660.0000000000	66.0000000000	10.0000000000	\N	2007-09-12 12:12:21.952	0	First line	\N	\N	1
1137	595	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:12:21.954	0	Second line	\N	\N	1
1138	596	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:12:22.196	0	First line	\N	\N	1
1139	596	2	1	420.0000000000	21.0000000000	20.0000000000	\N	2007-09-12 12:12:22.198	0	Second line	\N	\N	1
1140	597	1	1	610.0000000000	61.0000000000	10.0000000000	\N	2007-09-12 12:12:22.439	0	First line	\N	\N	1
1141	597	2	1	740.0000000000	37.0000000000	20.0000000000	\N	2007-09-12 12:12:22.441	0	Second line	\N	\N	1
1142	598	1	1	460.0000000000	46.0000000000	10.0000000000	\N	2007-09-12 12:12:22.676	0	First line	\N	\N	1
1143	598	2	1	1100.0000000000	55.0000000000	20.0000000000	\N	2007-09-12 12:12:22.679	0	Second line	\N	\N	1
1144	599	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:12:23.048	0	First line	\N	\N	1
1145	599	2	1	1700.0000000000	85.0000000000	20.0000000000	\N	2007-09-12 12:12:23.051	0	Second line	\N	\N	1
1146	600	1	1	650.0000000000	65.0000000000	10.0000000000	\N	2007-09-12 12:12:23.548	0	First line	\N	\N	1
1147	600	2	1	40.0000000000	2.0000000000	20.0000000000	\N	2007-09-12 12:12:23.558	0	Second line	\N	\N	1
1148	601	1	1	400.0000000000	40.0000000000	10.0000000000	\N	2007-09-12 12:12:24.041	0	First line	\N	\N	1
1149	601	2	1	1320.0000000000	66.0000000000	20.0000000000	\N	2007-09-12 12:12:24.05	0	Second line	\N	\N	1
1150	602	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:12:24.453	0	First line	\N	\N	1
1151	602	2	1	1900.0000000000	95.0000000000	20.0000000000	\N	2007-09-12 12:12:24.455	0	Second line	\N	\N	1
1152	603	1	1	400.0000000000	40.0000000000	10.0000000000	\N	2007-09-12 12:12:24.709	0	First line	\N	\N	1
1153	603	2	1	80.0000000000	4.0000000000	20.0000000000	\N	2007-09-12 12:12:24.712	0	Second line	\N	\N	1
1154	604	1	1	980.0000000000	98.0000000000	10.0000000000	\N	2007-09-12 12:12:24.961	0	First line	\N	\N	1
1155	604	2	1	1660.0000000000	83.0000000000	20.0000000000	\N	2007-09-12 12:12:24.963	0	Second line	\N	\N	1
1156	605	1	1	60.0000000000	6.0000000000	10.0000000000	\N	2007-09-12 12:12:25.20	0	First line	\N	\N	1
1157	605	2	1	1880.0000000000	94.0000000000	20.0000000000	\N	2007-09-12 12:12:25.202	0	Second line	\N	\N	1
1158	606	1	1	240.0000000000	24.0000000000	10.0000000000	\N	2007-09-12 12:12:25.485	0	First line	\N	\N	1
1159	606	2	1	1940.0000000000	97.0000000000	20.0000000000	\N	2007-09-12 12:12:25.492	0	Second line	\N	\N	1
1160	607	1	1	570.0000000000	57.0000000000	10.0000000000	\N	2007-09-12 12:12:25.988	0	First line	\N	\N	1
1161	607	2	1	880.0000000000	44.0000000000	20.0000000000	\N	2007-09-12 12:12:25.997	0	Second line	\N	\N	1
1162	608	1	1	150.0000000000	15.0000000000	10.0000000000	\N	2007-09-12 12:12:26.444	0	First line	\N	\N	1
1163	608	2	1	500.0000000000	25.0000000000	20.0000000000	\N	2007-09-12 12:12:26.455	0	Second line	\N	\N	1
1164	609	1	1	70.0000000000	7.0000000000	10.0000000000	\N	2007-09-12 12:12:26.943	0	First line	\N	\N	1
1165	609	2	1	780.0000000000	39.0000000000	20.0000000000	\N	2007-09-12 12:12:26.948	0	Second line	\N	\N	1
1166	610	1	1	70.0000000000	7.0000000000	10.0000000000	\N	2007-09-12 12:12:27.223	0	First line	\N	\N	1
1167	610	2	1	580.0000000000	29.0000000000	20.0000000000	\N	2007-09-12 12:12:27.225	0	Second line	\N	\N	1
1168	611	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:12:27.469	0	First line	\N	\N	1
1169	611	2	1	1000.0000000000	50.0000000000	20.0000000000	\N	2007-09-12 12:12:27.471	0	Second line	\N	\N	1
1170	612	1	1	900.0000000000	90.0000000000	10.0000000000	\N	2007-09-12 12:12:27.713	0	First line	\N	\N	1
1171	612	2	1	720.0000000000	36.0000000000	20.0000000000	\N	2007-09-12 12:12:27.715	0	Second line	\N	\N	1
1172	613	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:12:27.948	0	First line	\N	\N	1
1173	613	2	1	1620.0000000000	81.0000000000	20.0000000000	\N	2007-09-12 12:12:27.951	0	Second line	\N	\N	1
1174	614	1	1	700.0000000000	70.0000000000	10.0000000000	\N	2007-09-12 12:12:28.375	0	First line	\N	\N	1
1175	614	2	1	60.0000000000	3.0000000000	20.0000000000	\N	2007-09-12 12:12:28.381	0	Second line	\N	\N	1
1176	615	1	1	770.0000000000	77.0000000000	10.0000000000	\N	2007-09-12 12:12:28.841	0	First line	\N	\N	1
1177	615	2	1	840.0000000000	42.0000000000	20.0000000000	\N	2007-09-12 12:12:28.848	0	Second line	\N	\N	1
1178	616	1	1	480.0000000000	48.0000000000	10.0000000000	\N	2007-09-12 12:12:29.315	0	First line	\N	\N	1
1179	616	2	1	1700.0000000000	85.0000000000	20.0000000000	\N	2007-09-12 12:12:29.322	0	Second line	\N	\N	1
1180	617	1	1	170.0000000000	17.0000000000	10.0000000000	\N	2007-09-12 12:12:29.769	0	First line	\N	\N	1
1181	617	2	1	760.0000000000	38.0000000000	20.0000000000	\N	2007-09-12 12:12:29.774	0	Second line	\N	\N	1
1182	618	1	1	940.0000000000	94.0000000000	10.0000000000	\N	2007-09-12 12:12:30.04	0	First line	\N	\N	1
1183	618	2	1	1020.0000000000	51.0000000000	20.0000000000	\N	2007-09-12 12:12:30.042	0	Second line	\N	\N	1
1184	619	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:12:30.28	0	First line	\N	\N	1
1185	619	2	1	360.0000000000	18.0000000000	20.0000000000	\N	2007-09-12 12:12:30.282	0	Second line	\N	\N	1
1186	620	1	1	300.0000000000	30.0000000000	10.0000000000	\N	2007-09-12 12:12:30.526	0	First line	\N	\N	1
1187	620	2	1	960.0000000000	48.0000000000	20.0000000000	\N	2007-09-12 12:12:30.529	0	Second line	\N	\N	1
1188	621	1	1	270.0000000000	27.0000000000	10.0000000000	\N	2007-09-12 12:12:30.769	0	First line	\N	\N	1
1189	621	2	1	760.0000000000	38.0000000000	20.0000000000	\N	2007-09-12 12:12:30.772	0	Second line	\N	\N	1
1190	622	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:12:31.225	0	First line	\N	\N	1
1191	622	2	1	660.0000000000	33.0000000000	20.0000000000	\N	2007-09-12 12:12:31.232	0	Second line	\N	\N	1
1192	623	1	1	970.0000000000	97.0000000000	10.0000000000	\N	2007-09-12 12:12:31.679	0	First line	\N	\N	1
1193	623	2	1	1320.0000000000	66.0000000000	20.0000000000	\N	2007-09-12 12:12:31.688	0	Second line	\N	\N	1
1194	624	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:12:32.187	0	First line	\N	\N	1
1195	624	2	1	1740.0000000000	87.0000000000	20.0000000000	\N	2007-09-12 12:12:32.193	0	Second line	\N	\N	1
1196	625	1	1	330.0000000000	33.0000000000	10.0000000000	\N	2007-09-12 12:12:32.487	0	First line	\N	\N	1
1197	625	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:12:32.49	0	Second line	\N	\N	1
1198	626	1	1	700.0000000000	70.0000000000	10.0000000000	\N	2007-09-12 12:12:32.724	0	First line	\N	\N	1
1199	626	2	1	1040.0000000000	52.0000000000	20.0000000000	\N	2007-09-12 12:12:32.727	0	Second line	\N	\N	1
1200	627	1	1	750.0000000000	75.0000000000	10.0000000000	\N	2007-09-12 12:12:32.96	0	First line	\N	\N	1
1201	627	2	1	1020.0000000000	51.0000000000	20.0000000000	\N	2007-09-12 12:12:32.962	0	Second line	\N	\N	1
1202	628	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:12:33.203	0	First line	\N	\N	1
1203	628	2	1	580.0000000000	29.0000000000	20.0000000000	\N	2007-09-12 12:12:33.205	0	Second line	\N	\N	1
1204	629	1	1	930.0000000000	93.0000000000	10.0000000000	\N	2007-09-12 12:12:33.636	0	First line	\N	\N	1
1205	629	2	1	880.0000000000	44.0000000000	20.0000000000	\N	2007-09-12 12:12:33.646	0	Second line	\N	\N	1
1206	630	1	1	960.0000000000	96.0000000000	10.0000000000	\N	2007-09-12 12:12:34.132	0	First line	\N	\N	1
1207	630	2	1	1000.0000000000	50.0000000000	20.0000000000	\N	2007-09-12 12:12:34.139	0	Second line	\N	\N	1
1208	631	1	1	130.0000000000	13.0000000000	10.0000000000	\N	2007-09-12 12:12:34.586	0	First line	\N	\N	1
1209	631	2	1	1480.0000000000	74.0000000000	20.0000000000	\N	2007-09-12 12:12:34.59	0	Second line	\N	\N	1
1210	632	1	1	160.0000000000	16.0000000000	10.0000000000	\N	2007-09-12 12:12:35.002	0	First line	\N	\N	1
1211	632	2	1	1620.0000000000	81.0000000000	20.0000000000	\N	2007-09-12 12:12:35.004	0	Second line	\N	\N	1
1212	633	1	1	410.0000000000	41.0000000000	10.0000000000	\N	2007-09-12 12:12:35.242	0	First line	\N	\N	1
1213	633	2	1	120.0000000000	6.0000000000	20.0000000000	\N	2007-09-12 12:12:35.244	0	Second line	\N	\N	1
1214	634	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:12:35.481	0	First line	\N	\N	1
1215	634	2	1	700.0000000000	35.0000000000	20.0000000000	\N	2007-09-12 12:12:35.484	0	Second line	\N	\N	1
1216	635	1	1	210.0000000000	21.0000000000	10.0000000000	\N	2007-09-12 12:12:35.725	0	First line	\N	\N	1
1217	635	2	1	1160.0000000000	58.0000000000	20.0000000000	\N	2007-09-12 12:12:35.728	0	Second line	\N	\N	1
1218	636	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:12:36.034	0	First line	\N	\N	1
1219	636	2	1	1560.0000000000	78.0000000000	20.0000000000	\N	2007-09-12 12:12:36.041	0	Second line	\N	\N	1
1220	637	1	1	150.0000000000	15.0000000000	10.0000000000	\N	2007-09-12 12:12:36.497	0	First line	\N	\N	1
1221	637	2	1	1340.0000000000	67.0000000000	20.0000000000	\N	2007-09-12 12:12:36.502	0	Second line	\N	\N	1
1222	638	1	1	150.0000000000	15.0000000000	10.0000000000	\N	2007-09-12 12:12:37.004	0	First line	\N	\N	1
1223	638	2	1	260.0000000000	13.0000000000	20.0000000000	\N	2007-09-12 12:12:37.01	0	Second line	\N	\N	1
1224	639	1	1	740.0000000000	74.0000000000	10.0000000000	\N	2007-09-12 12:12:37.501	0	First line	\N	\N	1
1225	639	2	1	1800.0000000000	90.0000000000	20.0000000000	\N	2007-09-12 12:12:37.504	0	Second line	\N	\N	1
1226	640	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:12:37.776	0	First line	\N	\N	1
1227	640	2	1	1100.0000000000	55.0000000000	20.0000000000	\N	2007-09-12 12:12:37.779	0	Second line	\N	\N	1
1228	641	1	1	570.0000000000	57.0000000000	10.0000000000	\N	2007-09-12 12:12:38.021	0	First line	\N	\N	1
1229	641	2	1	420.0000000000	21.0000000000	20.0000000000	\N	2007-09-12 12:12:38.023	0	Second line	\N	\N	1
1230	642	1	1	160.0000000000	16.0000000000	10.0000000000	\N	2007-09-12 12:12:38.257	0	First line	\N	\N	1
1231	642	2	1	1460.0000000000	73.0000000000	20.0000000000	\N	2007-09-12 12:12:38.26	0	Second line	\N	\N	1
1232	643	1	1	670.0000000000	67.0000000000	10.0000000000	\N	2007-09-12 12:12:38.501	0	First line	\N	\N	1
1233	643	2	1	520.0000000000	26.0000000000	20.0000000000	\N	2007-09-12 12:12:38.503	0	Second line	\N	\N	1
1234	644	1	1	880.0000000000	88.0000000000	10.0000000000	\N	2007-09-12 12:12:38.972	0	First line	\N	\N	1
1235	644	2	1	1740.0000000000	87.0000000000	20.0000000000	\N	2007-09-12 12:12:38.976	0	Second line	\N	\N	1
1236	645	1	1	160.0000000000	16.0000000000	10.0000000000	\N	2007-09-12 12:12:39.432	0	First line	\N	\N	1
1237	645	2	1	1620.0000000000	81.0000000000	20.0000000000	\N	2007-09-12 12:12:39.443	0	Second line	\N	\N	1
1238	646	1	1	960.0000000000	96.0000000000	10.0000000000	\N	2007-09-12 12:12:39.946	0	First line	\N	\N	1
1239	646	2	1	420.0000000000	21.0000000000	20.0000000000	\N	2007-09-12 12:12:39.95	0	Second line	\N	\N	1
1240	647	1	1	160.0000000000	16.0000000000	10.0000000000	\N	2007-09-12 12:12:40.333	0	First line	\N	\N	1
1241	647	2	1	840.0000000000	42.0000000000	20.0000000000	\N	2007-09-12 12:12:40.336	0	Second line	\N	\N	1
1242	648	1	1	300.0000000000	30.0000000000	10.0000000000	\N	2007-09-12 12:12:40.58	0	First line	\N	\N	1
1243	648	2	1	100.0000000000	5.0000000000	20.0000000000	\N	2007-09-12 12:12:40.583	0	Second line	\N	\N	1
1244	649	1	1	450.0000000000	45.0000000000	10.0000000000	\N	2007-09-12 12:12:40.822	0	First line	\N	\N	1
1245	649	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:12:40.824	0	Second line	\N	\N	1
1246	650	1	1	980.0000000000	98.0000000000	10.0000000000	\N	2007-09-12 12:12:41.074	0	First line	\N	\N	1
1247	650	2	1	1560.0000000000	78.0000000000	20.0000000000	\N	2007-09-12 12:12:41.076	0	Second line	\N	\N	1
1248	651	1	1	200.0000000000	20.0000000000	10.0000000000	\N	2007-09-12 12:12:41.409	0	First line	\N	\N	1
1249	651	2	1	840.0000000000	42.0000000000	20.0000000000	\N	2007-09-12 12:12:41.419	0	Second line	\N	\N	1
1250	652	1	1	880.0000000000	88.0000000000	10.0000000000	\N	2007-09-12 12:12:41.884	0	First line	\N	\N	1
1251	652	2	1	140.0000000000	7.0000000000	20.0000000000	\N	2007-09-12 12:12:41.894	0	Second line	\N	\N	1
1252	653	1	1	980.0000000000	98.0000000000	10.0000000000	\N	2007-09-12 12:12:42.344	0	First line	\N	\N	1
1253	653	2	1	1140.0000000000	57.0000000000	20.0000000000	\N	2007-09-12 12:12:42.351	0	Second line	\N	\N	1
1254	654	1	1	660.0000000000	66.0000000000	10.0000000000	\N	2007-09-12 12:12:42.806	0	First line	\N	\N	1
1255	654	2	1	2000.0000000000	100.0000000000	20.0000000000	\N	2007-09-12 12:12:42.818	0	Second line	\N	\N	1
1256	655	1	1	450.0000000000	45.0000000000	10.0000000000	\N	2007-09-12 12:12:43.053	0	First line	\N	\N	1
1257	655	2	1	360.0000000000	18.0000000000	20.0000000000	\N	2007-09-12 12:12:43.055	0	Second line	\N	\N	1
1258	656	1	1	970.0000000000	97.0000000000	10.0000000000	\N	2007-09-12 12:12:43.289	0	First line	\N	\N	1
1259	656	2	1	1280.0000000000	64.0000000000	20.0000000000	\N	2007-09-12 12:12:43.291	0	Second line	\N	\N	1
1260	657	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:12:43.536	0	First line	\N	\N	1
1261	657	2	1	140.0000000000	7.0000000000	20.0000000000	\N	2007-09-12 12:12:43.539	0	Second line	\N	\N	1
1262	658	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:12:43.785	0	First line	\N	\N	1
1263	658	2	1	240.0000000000	12.0000000000	20.0000000000	\N	2007-09-12 12:12:43.787	0	Second line	\N	\N	1
1264	659	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:12:44.241	0	First line	\N	\N	1
1265	659	2	1	1640.0000000000	82.0000000000	20.0000000000	\N	2007-09-12 12:12:44.246	0	Second line	\N	\N	1
1266	660	1	1	700.0000000000	70.0000000000	10.0000000000	\N	2007-09-12 12:12:44.768	0	First line	\N	\N	1
1267	660	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:12:44.776	0	Second line	\N	\N	1
1268	661	1	1	540.0000000000	54.0000000000	10.0000000000	\N	2007-09-12 12:12:45.236	0	First line	\N	\N	1
1269	661	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:12:45.247	0	Second line	\N	\N	1
1270	662	1	1	470.0000000000	47.0000000000	10.0000000000	\N	2007-09-12 12:12:45.601	0	First line	\N	\N	1
1271	662	2	1	200.0000000000	10.0000000000	20.0000000000	\N	2007-09-12 12:12:45.603	0	Second line	\N	\N	1
1272	663	1	1	500.0000000000	50.0000000000	10.0000000000	\N	2007-09-12 12:12:45.835	0	First line	\N	\N	1
1273	663	2	1	1420.0000000000	71.0000000000	20.0000000000	\N	2007-09-12 12:12:45.838	0	Second line	\N	\N	1
1274	664	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:12:46.072	0	First line	\N	\N	1
1275	664	2	1	280.0000000000	14.0000000000	20.0000000000	\N	2007-09-12 12:12:46.075	0	Second line	\N	\N	1
1276	665	1	1	140.0000000000	14.0000000000	10.0000000000	\N	2007-09-12 12:12:46.324	0	First line	\N	\N	1
1277	665	2	1	1520.0000000000	76.0000000000	20.0000000000	\N	2007-09-12 12:12:46.326	0	Second line	\N	\N	1
1278	666	1	1	290.0000000000	29.0000000000	10.0000000000	\N	2007-09-12 12:12:46.643	0	First line	\N	\N	1
1279	666	2	1	120.0000000000	6.0000000000	20.0000000000	\N	2007-09-12 12:12:46.647	0	Second line	\N	\N	1
1280	667	1	1	410.0000000000	41.0000000000	10.0000000000	\N	2007-09-12 12:12:47.11	0	First line	\N	\N	1
1281	667	2	1	1420.0000000000	71.0000000000	20.0000000000	\N	2007-09-12 12:12:47.12	0	Second line	\N	\N	1
1282	668	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:12:47.575	0	First line	\N	\N	1
1283	668	2	1	1840.0000000000	92.0000000000	20.0000000000	\N	2007-09-12 12:12:47.58	0	Second line	\N	\N	1
1284	669	1	1	500.0000000000	50.0000000000	10.0000000000	\N	2007-09-12 12:12:48.036	0	First line	\N	\N	1
1285	669	2	1	1380.0000000000	69.0000000000	20.0000000000	\N	2007-09-12 12:12:48.044	0	Second line	\N	\N	1
1286	670	1	1	460.0000000000	46.0000000000	10.0000000000	\N	2007-09-12 12:12:48.333	0	First line	\N	\N	1
1287	670	2	1	1660.0000000000	83.0000000000	20.0000000000	\N	2007-09-12 12:12:48.335	0	Second line	\N	\N	1
1288	671	1	1	490.0000000000	49.0000000000	10.0000000000	\N	2007-09-12 12:12:48.582	0	First line	\N	\N	1
1289	671	2	1	820.0000000000	41.0000000000	20.0000000000	\N	2007-09-12 12:12:48.594	0	Second line	\N	\N	1
1290	672	1	1	700.0000000000	70.0000000000	10.0000000000	\N	2007-09-12 12:12:48.835	0	First line	\N	\N	1
1291	672	2	1	1960.0000000000	98.0000000000	20.0000000000	\N	2007-09-12 12:12:48.838	0	Second line	\N	\N	1
1292	673	1	1	550.0000000000	55.0000000000	10.0000000000	\N	2007-09-12 12:12:49.07	0	First line	\N	\N	1
1293	673	2	1	120.0000000000	6.0000000000	20.0000000000	\N	2007-09-12 12:12:49.073	0	Second line	\N	\N	1
1294	674	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:12:49.502	0	First line	\N	\N	1
1295	674	2	1	820.0000000000	41.0000000000	20.0000000000	\N	2007-09-12 12:12:49.511	0	Second line	\N	\N	1
1296	675	1	1	940.0000000000	94.0000000000	10.0000000000	\N	2007-09-12 12:12:49.976	0	First line	\N	\N	1
1297	675	2	1	1680.0000000000	84.0000000000	20.0000000000	\N	2007-09-12 12:12:49.989	0	Second line	\N	\N	1
1298	676	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:12:50.468	0	First line	\N	\N	1
1299	676	2	1	1560.0000000000	78.0000000000	20.0000000000	\N	2007-09-12 12:12:50.477	0	Second line	\N	\N	1
1300	677	1	1	840.0000000000	84.0000000000	10.0000000000	\N	2007-09-12 12:12:50.913	0	First line	\N	\N	1
1301	677	2	1	1980.0000000000	99.0000000000	20.0000000000	\N	2007-09-12 12:12:50.915	0	Second line	\N	\N	1
1302	678	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:12:51.156	0	First line	\N	\N	1
1303	678	2	1	1640.0000000000	82.0000000000	20.0000000000	\N	2007-09-12 12:12:51.159	0	Second line	\N	\N	1
1304	679	1	1	830.0000000000	83.0000000000	10.0000000000	\N	2007-09-12 12:12:51.402	0	First line	\N	\N	1
1305	679	2	1	1300.0000000000	65.0000000000	20.0000000000	\N	2007-09-12 12:12:51.404	0	Second line	\N	\N	1
1306	680	1	1	670.0000000000	67.0000000000	10.0000000000	\N	2007-09-12 12:12:51.643	0	First line	\N	\N	1
1307	680	2	1	840.0000000000	42.0000000000	20.0000000000	\N	2007-09-12 12:12:51.645	0	Second line	\N	\N	1
1308	681	1	1	410.0000000000	41.0000000000	10.0000000000	\N	2007-09-12 12:12:51.968	0	First line	\N	\N	1
1309	681	2	1	420.0000000000	21.0000000000	20.0000000000	\N	2007-09-12 12:12:51.972	0	Second line	\N	\N	1
1310	682	1	1	420.0000000000	42.0000000000	10.0000000000	\N	2007-09-12 12:12:52.414	0	First line	\N	\N	1
1311	682	2	1	720.0000000000	36.0000000000	20.0000000000	\N	2007-09-12 12:12:52.424	0	Second line	\N	\N	1
1312	683	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:12:52.913	0	First line	\N	\N	1
1313	683	2	1	660.0000000000	33.0000000000	20.0000000000	\N	2007-09-12 12:12:52.916	0	Second line	\N	\N	1
1314	684	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:12:53.364	0	First line	\N	\N	1
1315	684	2	1	1780.0000000000	89.0000000000	20.0000000000	\N	2007-09-12 12:12:53.366	0	Second line	\N	\N	1
1316	685	1	1	700.0000000000	70.0000000000	10.0000000000	\N	2007-09-12 12:12:53.617	0	First line	\N	\N	1
1317	685	2	1	1880.0000000000	94.0000000000	20.0000000000	\N	2007-09-12 12:12:53.619	0	Second line	\N	\N	1
1318	686	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:12:53.861	0	First line	\N	\N	1
1319	686	2	1	420.0000000000	21.0000000000	20.0000000000	\N	2007-09-12 12:12:53.864	0	Second line	\N	\N	1
1320	687	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:12:54.103	0	First line	\N	\N	1
1321	687	2	1	1260.0000000000	63.0000000000	20.0000000000	\N	2007-09-12 12:12:54.105	0	Second line	\N	\N	1
1322	688	1	1	200.0000000000	20.0000000000	10.0000000000	\N	2007-09-12 12:12:54.342	0	First line	\N	\N	1
1323	688	2	1	560.0000000000	28.0000000000	20.0000000000	\N	2007-09-12 12:12:54.35	0	Second line	\N	\N	1
1324	689	1	1	670.0000000000	67.0000000000	10.0000000000	\N	2007-09-12 12:12:54.80	0	First line	\N	\N	1
1325	689	2	1	380.0000000000	19.0000000000	20.0000000000	\N	2007-09-12 12:12:54.818	0	Second line	\N	\N	1
1326	690	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:12:55.279	0	First line	\N	\N	1
1327	690	2	1	320.0000000000	16.0000000000	20.0000000000	\N	2007-09-12 12:12:55.289	0	Second line	\N	\N	1
1328	691	1	1	590.0000000000	59.0000000000	10.0000000000	\N	2007-09-12 12:12:55.75	0	First line	\N	\N	1
1329	691	2	1	500.0000000000	25.0000000000	20.0000000000	\N	2007-09-12 12:12:55.761	0	Second line	\N	\N	1
1330	692	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:12:56.172	0	First line	\N	\N	1
1331	692	2	1	1120.0000000000	56.0000000000	20.0000000000	\N	2007-09-12 12:12:56.174	0	Second line	\N	\N	1
1332	693	1	1	60.0000000000	6.0000000000	10.0000000000	\N	2007-09-12 12:12:56.413	0	First line	\N	\N	1
1333	693	2	1	1800.0000000000	90.0000000000	20.0000000000	\N	2007-09-12 12:12:56.415	0	Second line	\N	\N	1
1334	694	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:12:56.663	0	First line	\N	\N	1
1335	694	2	1	560.0000000000	28.0000000000	20.0000000000	\N	2007-09-12 12:12:56.665	0	Second line	\N	\N	1
1336	695	1	1	270.0000000000	27.0000000000	10.0000000000	\N	2007-09-12 12:12:56.909	0	First line	\N	\N	1
1337	695	2	1	1680.0000000000	84.0000000000	20.0000000000	\N	2007-09-12 12:12:56.912	0	Second line	\N	\N	1
1338	696	1	1	160.0000000000	16.0000000000	10.0000000000	\N	2007-09-12 12:12:57.195	0	First line	\N	\N	1
1339	696	2	1	1520.0000000000	76.0000000000	20.0000000000	\N	2007-09-12 12:12:57.199	0	Second line	\N	\N	1
1340	697	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:12:57.652	0	First line	\N	\N	1
1341	697	2	1	1060.0000000000	53.0000000000	20.0000000000	\N	2007-09-12 12:12:57.658	0	Second line	\N	\N	1
1342	698	1	1	240.0000000000	24.0000000000	10.0000000000	\N	2007-09-12 12:12:58.151	0	First line	\N	\N	1
1343	698	2	1	1260.0000000000	63.0000000000	20.0000000000	\N	2007-09-12 12:12:58.155	0	Second line	\N	\N	1
1344	699	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:12:58.648	0	First line	\N	\N	1
1345	699	2	1	920.0000000000	46.0000000000	20.0000000000	\N	2007-09-12 12:12:58.655	0	Second line	\N	\N	1
1346	700	1	1	210.0000000000	21.0000000000	10.0000000000	\N	2007-09-12 12:12:58.927	0	First line	\N	\N	1
1347	700	2	1	740.0000000000	37.0000000000	20.0000000000	\N	2007-09-12 12:12:58.93	0	Second line	\N	\N	1
1348	701	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:12:59.177	0	First line	\N	\N	1
1349	701	2	1	1940.0000000000	97.0000000000	20.0000000000	\N	2007-09-12 12:12:59.179	0	Second line	\N	\N	1
1350	702	1	1	160.0000000000	16.0000000000	10.0000000000	\N	2007-09-12 12:12:59.429	0	First line	\N	\N	1
1351	702	2	1	380.0000000000	19.0000000000	20.0000000000	\N	2007-09-12 12:12:59.431	0	Second line	\N	\N	1
1352	703	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:12:59.681	0	First line	\N	\N	1
1353	703	2	1	620.0000000000	31.0000000000	20.0000000000	\N	2007-09-12 12:12:59.684	0	Second line	\N	\N	1
1354	704	1	1	470.0000000000	47.0000000000	10.0000000000	\N	2007-09-12 12:13:00.115	0	First line	\N	\N	1
1355	704	2	1	1520.0000000000	76.0000000000	20.0000000000	\N	2007-09-12 12:13:00.122	0	Second line	\N	\N	1
1356	705	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:13:00.593	0	First line	\N	\N	1
1357	705	2	1	160.0000000000	8.0000000000	20.0000000000	\N	2007-09-12 12:13:00.60	0	Second line	\N	\N	1
1358	706	1	1	470.0000000000	47.0000000000	10.0000000000	\N	2007-09-12 12:13:01.085	0	First line	\N	\N	1
1359	706	2	1	1980.0000000000	99.0000000000	20.0000000000	\N	2007-09-12 12:13:01.093	0	Second line	\N	\N	1
1360	707	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:13:01.49	0	First line	\N	\N	1
1361	707	2	1	1520.0000000000	76.0000000000	20.0000000000	\N	2007-09-12 12:13:01.492	0	Second line	\N	\N	1
1362	708	1	1	140.0000000000	14.0000000000	10.0000000000	\N	2007-09-12 12:13:01.729	0	First line	\N	\N	1
1363	708	2	1	1260.0000000000	63.0000000000	20.0000000000	\N	2007-09-12 12:13:01.731	0	Second line	\N	\N	1
1364	709	1	1	350.0000000000	35.0000000000	10.0000000000	\N	2007-09-12 12:13:01.977	0	First line	\N	\N	1
1365	709	2	1	1660.0000000000	83.0000000000	20.0000000000	\N	2007-09-12 12:13:01.98	0	Second line	\N	\N	1
1366	710	1	1	290.0000000000	29.0000000000	10.0000000000	\N	2007-09-12 12:13:02.224	0	First line	\N	\N	1
1367	710	2	1	740.0000000000	37.0000000000	20.0000000000	\N	2007-09-12 12:13:02.226	0	Second line	\N	\N	1
1368	711	1	1	260.0000000000	26.0000000000	10.0000000000	\N	2007-09-12 12:13:02.512	0	First line	\N	\N	1
1369	711	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:13:02.521	0	Second line	\N	\N	1
1370	712	1	1	920.0000000000	92.0000000000	10.0000000000	\N	2007-09-12 12:13:02.955	0	First line	\N	\N	1
1371	712	2	1	1220.0000000000	61.0000000000	20.0000000000	\N	2007-09-12 12:13:02.967	0	Second line	\N	\N	1
1372	713	1	1	590.0000000000	59.0000000000	10.0000000000	\N	2007-09-12 12:13:03.444	0	First line	\N	\N	1
1373	713	2	1	1700.0000000000	85.0000000000	20.0000000000	\N	2007-09-12 12:13:03.455	0	Second line	\N	\N	1
1374	714	1	1	710.0000000000	71.0000000000	10.0000000000	\N	2007-09-12 12:13:03.948	0	First line	\N	\N	1
1375	714	2	1	320.0000000000	16.0000000000	20.0000000000	\N	2007-09-12 12:13:03.954	0	Second line	\N	\N	1
1376	715	1	1	290.0000000000	29.0000000000	10.0000000000	\N	2007-09-12 12:13:04.231	0	First line	\N	\N	1
1377	715	2	1	1360.0000000000	68.0000000000	20.0000000000	\N	2007-09-12 12:13:04.233	0	Second line	\N	\N	1
1378	716	1	1	600.0000000000	60.0000000000	10.0000000000	\N	2007-09-12 12:13:04.475	0	First line	\N	\N	1
1379	716	2	1	200.0000000000	10.0000000000	20.0000000000	\N	2007-09-12 12:13:04.477	0	Second line	\N	\N	1
1380	717	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:13:04.73	0	First line	\N	\N	1
1381	717	2	1	1160.0000000000	58.0000000000	20.0000000000	\N	2007-09-12 12:13:04.732	0	Second line	\N	\N	1
1382	718	1	1	980.0000000000	98.0000000000	10.0000000000	\N	2007-09-12 12:13:04.972	0	First line	\N	\N	1
1383	718	2	1	500.0000000000	25.0000000000	20.0000000000	\N	2007-09-12 12:13:04.974	0	Second line	\N	\N	1
1384	719	1	1	950.0000000000	95.0000000000	10.0000000000	\N	2007-09-12 12:13:05.43	0	First line	\N	\N	1
1385	719	2	1	1760.0000000000	88.0000000000	20.0000000000	\N	2007-09-12 12:13:05.438	0	Second line	\N	\N	1
1386	720	1	1	810.0000000000	81.0000000000	10.0000000000	\N	2007-09-12 12:13:05.905	0	First line	\N	\N	1
1387	720	2	1	620.0000000000	31.0000000000	20.0000000000	\N	2007-09-12 12:13:05.913	0	Second line	\N	\N	1
1388	721	1	1	940.0000000000	94.0000000000	10.0000000000	\N	2007-09-12 12:13:06.409	0	First line	\N	\N	1
1389	721	2	1	1520.0000000000	76.0000000000	20.0000000000	\N	2007-09-12 12:13:06.419	0	Second line	\N	\N	1
1390	722	1	1	90.0000000000	9.0000000000	10.0000000000	\N	2007-09-12 12:13:06.709	0	First line	\N	\N	1
1391	722	2	1	600.0000000000	30.0000000000	20.0000000000	\N	2007-09-12 12:13:06.721	0	Second line	\N	\N	1
1392	723	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:13:06.952	0	First line	\N	\N	1
1393	723	2	1	820.0000000000	41.0000000000	20.0000000000	\N	2007-09-12 12:13:06.955	0	Second line	\N	\N	1
1394	724	1	1	300.0000000000	30.0000000000	10.0000000000	\N	2007-09-12 12:13:07.209	0	First line	\N	\N	1
1395	724	2	1	1480.0000000000	74.0000000000	20.0000000000	\N	2007-09-12 12:13:07.211	0	Second line	\N	\N	1
1396	725	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:13:07.445	0	First line	\N	\N	1
1397	725	2	1	1740.0000000000	87.0000000000	20.0000000000	\N	2007-09-12 12:13:07.447	0	Second line	\N	\N	1
1398	726	1	1	810.0000000000	81.0000000000	10.0000000000	\N	2007-09-12 12:13:07.869	0	First line	\N	\N	1
1399	726	2	1	500.0000000000	25.0000000000	20.0000000000	\N	2007-09-12 12:13:07.875	0	Second line	\N	\N	1
1400	727	1	1	190.0000000000	19.0000000000	10.0000000000	\N	2007-09-12 12:13:08.32	0	First line	\N	\N	1
1401	727	2	1	100.0000000000	5.0000000000	20.0000000000	\N	2007-09-12 12:13:08.333	0	Second line	\N	\N	1
1402	728	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:13:08.823	0	First line	\N	\N	1
1403	728	2	1	1940.0000000000	97.0000000000	20.0000000000	\N	2007-09-12 12:13:08.826	0	Second line	\N	\N	1
1404	729	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:13:09.236	0	First line	\N	\N	1
1405	729	2	1	1580.0000000000	79.0000000000	20.0000000000	\N	2007-09-12 12:13:09.239	0	Second line	\N	\N	1
1406	730	1	1	910.0000000000	91.0000000000	10.0000000000	\N	2007-09-12 12:13:09.489	0	First line	\N	\N	1
1407	730	2	1	1220.0000000000	61.0000000000	20.0000000000	\N	2007-09-12 12:13:09.492	0	Second line	\N	\N	1
1408	731	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:13:09.731	0	First line	\N	\N	1
1409	731	2	1	620.0000000000	31.0000000000	20.0000000000	\N	2007-09-12 12:13:09.734	0	Second line	\N	\N	1
1410	732	1	1	810.0000000000	81.0000000000	10.0000000000	\N	2007-09-12 12:13:09.979	0	First line	\N	\N	1
1411	732	2	1	100.0000000000	5.0000000000	20.0000000000	\N	2007-09-12 12:13:09.981	0	Second line	\N	\N	1
1412	733	1	1	210.0000000000	21.0000000000	10.0000000000	\N	2007-09-12 12:13:10.255	0	First line	\N	\N	1
1413	733	2	1	1240.0000000000	62.0000000000	20.0000000000	\N	2007-09-12 12:13:10.262	0	Second line	\N	\N	1
1414	734	1	1	930.0000000000	93.0000000000	10.0000000000	\N	2007-09-12 12:13:10.738	0	First line	\N	\N	1
1415	734	2	1	840.0000000000	42.0000000000	20.0000000000	\N	2007-09-12 12:13:10.747	0	Second line	\N	\N	1
1416	735	1	1	640.0000000000	64.0000000000	10.0000000000	\N	2007-09-12 12:13:11.181	0	First line	\N	\N	1
1417	735	2	1	1500.0000000000	75.0000000000	20.0000000000	\N	2007-09-12 12:13:11.188	0	Second line	\N	\N	1
1418	736	1	1	130.0000000000	13.0000000000	10.0000000000	\N	2007-09-12 12:13:11.72	0	First line	\N	\N	1
1419	736	2	1	780.0000000000	39.0000000000	20.0000000000	\N	2007-09-12 12:13:11.725	0	Second line	\N	\N	1
1420	737	1	1	810.0000000000	81.0000000000	10.0000000000	\N	2007-09-12 12:13:12.004	0	First line	\N	\N	1
1421	737	2	1	1120.0000000000	56.0000000000	20.0000000000	\N	2007-09-12 12:13:12.007	0	Second line	\N	\N	1
1422	738	1	1	200.0000000000	20.0000000000	10.0000000000	\N	2007-09-12 12:13:12.256	0	First line	\N	\N	1
1423	738	2	1	40.0000000000	2.0000000000	20.0000000000	\N	2007-09-12 12:13:12.259	0	Second line	\N	\N	1
1424	739	1	1	750.0000000000	75.0000000000	10.0000000000	\N	2007-09-12 12:13:12.502	0	First line	\N	\N	1
1425	739	2	1	640.0000000000	32.0000000000	20.0000000000	\N	2007-09-12 12:13:12.513	0	Second line	\N	\N	1
1426	740	1	1	530.0000000000	53.0000000000	10.0000000000	\N	2007-09-12 12:13:12.771	0	First line	\N	\N	1
1427	740	2	1	980.0000000000	49.0000000000	20.0000000000	\N	2007-09-12 12:13:12.773	0	Second line	\N	\N	1
1428	741	1	1	90.0000000000	9.0000000000	10.0000000000	\N	2007-09-12 12:13:13.223	0	First line	\N	\N	1
1429	741	2	1	1780.0000000000	89.0000000000	20.0000000000	\N	2007-09-12 12:13:13.228	0	Second line	\N	\N	1
1430	742	1	1	950.0000000000	95.0000000000	10.0000000000	\N	2007-09-12 12:13:13.705	0	First line	\N	\N	1
1431	742	2	1	260.0000000000	13.0000000000	20.0000000000	\N	2007-09-12 12:13:13.714	0	Second line	\N	\N	1
1432	743	1	1	40.0000000000	4.0000000000	10.0000000000	\N	2007-09-12 12:13:14.213	0	First line	\N	\N	1
1433	743	2	1	1000.0000000000	50.0000000000	20.0000000000	\N	2007-09-12 12:13:14.216	0	Second line	\N	\N	1
1434	744	1	1	110.0000000000	11.0000000000	10.0000000000	\N	2007-09-12 12:13:14.495	0	First line	\N	\N	1
1435	744	2	1	1720.0000000000	86.0000000000	20.0000000000	\N	2007-09-12 12:13:14.497	0	Second line	\N	\N	1
1436	745	1	1	920.0000000000	92.0000000000	10.0000000000	\N	2007-09-12 12:13:14.741	0	First line	\N	\N	1
1437	745	2	1	1520.0000000000	76.0000000000	20.0000000000	\N	2007-09-12 12:13:14.743	0	Second line	\N	\N	1
1438	746	1	1	370.0000000000	37.0000000000	10.0000000000	\N	2007-09-12 12:13:14.999	0	First line	\N	\N	1
1439	746	2	1	1520.0000000000	76.0000000000	20.0000000000	\N	2007-09-12 12:13:15.002	0	Second line	\N	\N	1
1440	747	1	1	840.0000000000	84.0000000000	10.0000000000	\N	2007-09-12 12:13:15.231	0	First line	\N	\N	1
1441	747	2	1	180.0000000000	9.0000000000	20.0000000000	\N	2007-09-12 12:13:15.234	0	Second line	\N	\N	1
1442	748	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:13:15.656	0	First line	\N	\N	1
1443	748	2	1	100.0000000000	5.0000000000	20.0000000000	\N	2007-09-12 12:13:15.66	0	Second line	\N	\N	1
1444	749	1	1	530.0000000000	53.0000000000	10.0000000000	\N	2007-09-12 12:13:16.338	0	First line	\N	\N	1
1445	749	2	1	680.0000000000	34.0000000000	20.0000000000	\N	2007-09-12 12:13:16.376	0	Second line	\N	\N	1
1446	750	1	1	920.0000000000	92.0000000000	10.0000000000	\N	2007-09-12 12:13:16.954	0	First line	\N	\N	1
1447	750	2	1	500.0000000000	25.0000000000	20.0000000000	\N	2007-09-12 12:13:16.956	0	Second line	\N	\N	1
1448	751	1	1	10.0000000000	1.0000000000	10.0000000000	\N	2007-09-12 12:13:17.199	0	First line	\N	\N	1
1449	751	2	1	1040.0000000000	52.0000000000	20.0000000000	\N	2007-09-12 12:13:17.202	0	Second line	\N	\N	1
1450	752	1	1	400.0000000000	40.0000000000	10.0000000000	\N	2007-09-12 12:13:17.439	0	First line	\N	\N	1
1451	752	2	1	820.0000000000	41.0000000000	20.0000000000	\N	2007-09-12 12:13:17.441	0	Second line	\N	\N	1
1452	753	1	1	870.0000000000	87.0000000000	10.0000000000	\N	2007-09-12 12:13:17.681	0	First line	\N	\N	1
1453	753	2	1	1620.0000000000	81.0000000000	20.0000000000	\N	2007-09-12 12:13:17.683	0	Second line	\N	\N	1
1454	754	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:13:17.974	0	First line	\N	\N	1
1455	754	2	1	780.0000000000	39.0000000000	20.0000000000	\N	2007-09-12 12:13:17.978	0	Second line	\N	\N	1
1456	755	1	1	70.0000000000	7.0000000000	10.0000000000	\N	2007-09-12 12:13:18.46	0	First line	\N	\N	1
1457	755	2	1	1800.0000000000	90.0000000000	20.0000000000	\N	2007-09-12 12:13:18.472	0	Second line	\N	\N	1
1458	756	1	1	740.0000000000	74.0000000000	10.0000000000	\N	2007-09-12 12:13:18.935	0	First line	\N	\N	1
1459	756	2	1	780.0000000000	39.0000000000	20.0000000000	\N	2007-09-12 12:13:18.948	0	Second line	\N	\N	1
1460	757	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:13:19.412	0	First line	\N	\N	1
1461	757	2	1	160.0000000000	8.0000000000	20.0000000000	\N	2007-09-12 12:13:19.421	0	Second line	\N	\N	1
1462	758	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:13:19.706	0	First line	\N	\N	1
1463	758	2	1	1320.0000000000	66.0000000000	20.0000000000	\N	2007-09-12 12:13:19.709	0	Second line	\N	\N	1
1464	759	1	1	960.0000000000	96.0000000000	10.0000000000	\N	2007-09-12 12:13:19.941	0	First line	\N	\N	1
1465	759	2	1	1640.0000000000	82.0000000000	20.0000000000	\N	2007-09-12 12:13:19.944	0	Second line	\N	\N	1
1466	760	1	1	740.0000000000	74.0000000000	10.0000000000	\N	2007-09-12 12:13:20.192	0	First line	\N	\N	1
1467	760	2	1	1280.0000000000	64.0000000000	20.0000000000	\N	2007-09-12 12:13:20.194	0	Second line	\N	\N	1
1468	761	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:13:20.431	0	First line	\N	\N	1
1469	761	2	1	920.0000000000	46.0000000000	20.0000000000	\N	2007-09-12 12:13:20.433	0	Second line	\N	\N	1
1470	762	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:13:20.856	0	First line	\N	\N	1
1471	762	2	1	1640.0000000000	82.0000000000	20.0000000000	\N	2007-09-12 12:13:20.864	0	Second line	\N	\N	1
1472	763	1	1	890.0000000000	89.0000000000	10.0000000000	\N	2007-09-12 12:13:21.339	0	First line	\N	\N	1
1473	763	2	1	440.0000000000	22.0000000000	20.0000000000	\N	2007-09-12 12:13:21.343	0	Second line	\N	\N	1
1474	764	1	1	40.0000000000	4.0000000000	10.0000000000	\N	2007-09-12 12:13:21.818	0	First line	\N	\N	1
1475	764	2	1	380.0000000000	19.0000000000	20.0000000000	\N	2007-09-12 12:13:21.825	0	Second line	\N	\N	1
1476	765	1	1	600.0000000000	60.0000000000	10.0000000000	\N	2007-09-12 12:13:22.243	0	First line	\N	\N	1
1477	765	2	1	1240.0000000000	62.0000000000	20.0000000000	\N	2007-09-12 12:13:22.245	0	Second line	\N	\N	1
1478	766	1	1	380.0000000000	38.0000000000	10.0000000000	\N	2007-09-12 12:13:22.486	0	First line	\N	\N	1
1479	766	2	1	1280.0000000000	64.0000000000	20.0000000000	\N	2007-09-12 12:13:22.489	0	Second line	\N	\N	1
1480	767	1	1	950.0000000000	95.0000000000	10.0000000000	\N	2007-09-12 12:13:22.736	0	First line	\N	\N	1
1481	767	2	1	360.0000000000	18.0000000000	20.0000000000	\N	2007-09-12 12:13:22.739	0	Second line	\N	\N	1
1482	768	1	1	930.0000000000	93.0000000000	10.0000000000	\N	2007-09-12 12:13:23.001	0	First line	\N	\N	1
1483	768	2	1	1420.0000000000	71.0000000000	20.0000000000	\N	2007-09-12 12:13:23.003	0	Second line	\N	\N	1
1484	769	1	1	200.0000000000	20.0000000000	10.0000000000	\N	2007-09-12 12:13:23.285	0	First line	\N	\N	1
1485	769	2	1	480.0000000000	24.0000000000	20.0000000000	\N	2007-09-12 12:13:23.289	0	Second line	\N	\N	1
1486	770	1	1	620.0000000000	62.0000000000	10.0000000000	\N	2007-09-12 12:13:23.71	0	First line	\N	\N	1
1487	770	2	1	1300.0000000000	65.0000000000	20.0000000000	\N	2007-09-12 12:13:23.717	0	Second line	\N	\N	1
1488	771	1	1	410.0000000000	41.0000000000	10.0000000000	\N	2007-09-12 12:13:24.182	0	First line	\N	\N	1
1489	771	2	1	1180.0000000000	59.0000000000	20.0000000000	\N	2007-09-12 12:13:24.189	0	Second line	\N	\N	1
1490	772	1	1	830.0000000000	83.0000000000	10.0000000000	\N	2007-09-12 12:13:24.648	0	First line	\N	\N	1
1491	772	2	1	1980.0000000000	99.0000000000	20.0000000000	\N	2007-09-12 12:13:24.652	0	Second line	\N	\N	1
1492	773	1	1	740.0000000000	74.0000000000	10.0000000000	\N	2007-09-12 12:13:25.036	0	First line	\N	\N	1
1493	773	2	1	840.0000000000	42.0000000000	20.0000000000	\N	2007-09-12 12:13:25.038	0	Second line	\N	\N	1
1494	774	1	1	530.0000000000	53.0000000000	10.0000000000	\N	2007-09-12 12:13:25.289	0	First line	\N	\N	1
1495	774	2	1	440.0000000000	22.0000000000	20.0000000000	\N	2007-09-12 12:13:25.291	0	Second line	\N	\N	1
1496	775	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:13:25.537	0	First line	\N	\N	1
1497	775	2	1	560.0000000000	28.0000000000	20.0000000000	\N	2007-09-12 12:13:25.539	0	Second line	\N	\N	1
1498	776	1	1	70.0000000000	7.0000000000	10.0000000000	\N	2007-09-12 12:13:25.793	0	First line	\N	\N	1
1499	776	2	1	280.0000000000	14.0000000000	20.0000000000	\N	2007-09-12 12:13:25.795	0	Second line	\N	\N	1
1500	777	1	1	570.0000000000	57.0000000000	10.0000000000	\N	2007-09-12 12:13:26.105	0	First line	\N	\N	1
1501	777	2	1	80.0000000000	4.0000000000	20.0000000000	\N	2007-09-12 12:13:26.117	0	Second line	\N	\N	1
1502	778	1	1	430.0000000000	43.0000000000	10.0000000000	\N	2007-09-12 12:13:26.621	0	First line	\N	\N	1
1503	778	2	1	1720.0000000000	86.0000000000	20.0000000000	\N	2007-09-12 12:13:26.626	0	Second line	\N	\N	1
1504	779	1	1	530.0000000000	53.0000000000	10.0000000000	\N	2007-09-12 12:13:27.116	0	First line	\N	\N	1
1505	779	2	1	1960.0000000000	98.0000000000	20.0000000000	\N	2007-09-12 12:13:27.123	0	Second line	\N	\N	1
1506	780	1	1	360.0000000000	36.0000000000	10.0000000000	\N	2007-09-12 12:13:27.543	0	First line	\N	\N	1
1507	780	2	1	640.0000000000	32.0000000000	20.0000000000	\N	2007-09-12 12:13:27.545	0	Second line	\N	\N	1
1508	781	1	1	950.0000000000	95.0000000000	10.0000000000	\N	2007-09-12 12:13:27.792	0	First line	\N	\N	1
1509	781	2	1	980.0000000000	49.0000000000	20.0000000000	\N	2007-09-12 12:13:27.794	0	Second line	\N	\N	1
1510	782	1	1	570.0000000000	57.0000000000	10.0000000000	\N	2007-09-12 12:13:28.049	0	First line	\N	\N	1
1511	782	2	1	220.0000000000	11.0000000000	20.0000000000	\N	2007-09-12 12:13:28.051	0	Second line	\N	\N	1
1512	783	1	1	210.0000000000	21.0000000000	10.0000000000	\N	2007-09-12 12:13:28.286	0	First line	\N	\N	1
1513	783	2	1	1120.0000000000	56.0000000000	20.0000000000	\N	2007-09-12 12:13:28.289	0	Second line	\N	\N	1
1514	784	1	1	60.0000000000	6.0000000000	10.0000000000	\N	2007-09-12 12:13:28.592	0	First line	\N	\N	1
1515	784	2	1	1220.0000000000	61.0000000000	20.0000000000	\N	2007-09-12 12:13:28.599	0	Second line	\N	\N	1
1516	785	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:13:29.06	0	First line	\N	\N	1
1517	785	2	1	1280.0000000000	64.0000000000	20.0000000000	\N	2007-09-12 12:13:29.066	0	Second line	\N	\N	1
1518	786	1	1	390.0000000000	39.0000000000	10.0000000000	\N	2007-09-12 12:13:29.538	0	First line	\N	\N	1
1519	786	2	1	1680.0000000000	84.0000000000	20.0000000000	\N	2007-09-12 12:13:29.548	0	Second line	\N	\N	1
1520	787	1	1	640.0000000000	64.0000000000	10.0000000000	\N	2007-09-12 12:13:29.972	0	First line	\N	\N	1
1521	787	2	1	660.0000000000	33.0000000000	20.0000000000	\N	2007-09-12 12:13:29.976	0	Second line	\N	\N	1
1522	788	1	1	300.0000000000	30.0000000000	10.0000000000	\N	2007-09-12 12:13:30.355	0	First line	\N	\N	1
1523	788	2	1	620.0000000000	31.0000000000	20.0000000000	\N	2007-09-12 12:13:30.358	0	Second line	\N	\N	1
1524	789	1	1	730.0000000000	73.0000000000	10.0000000000	\N	2007-09-12 12:13:30.592	0	First line	\N	\N	1
1525	789	2	1	500.0000000000	25.0000000000	20.0000000000	\N	2007-09-12 12:13:30.595	0	Second line	\N	\N	1
1526	790	1	1	400.0000000000	40.0000000000	10.0000000000	\N	2007-09-12 12:13:30.847	0	First line	\N	\N	1
1527	790	2	1	260.0000000000	13.0000000000	20.0000000000	\N	2007-09-12 12:13:30.856	0	Second line	\N	\N	1
1528	791	1	1	920.0000000000	92.0000000000	10.0000000000	\N	2007-09-12 12:13:31.103	0	First line	\N	\N	1
1529	791	2	1	180.0000000000	9.0000000000	20.0000000000	\N	2007-09-12 12:13:31.105	0	Second line	\N	\N	1
1530	792	1	1	130.0000000000	13.0000000000	10.0000000000	\N	2007-09-12 12:13:31.40	0	First line	\N	\N	1
1531	792	2	1	640.0000000000	32.0000000000	20.0000000000	\N	2007-09-12 12:13:31.412	0	Second line	\N	\N	1
1532	793	1	1	290.0000000000	29.0000000000	10.0000000000	\N	2007-09-12 12:13:31.908	0	First line	\N	\N	1
1533	793	2	1	1460.0000000000	73.0000000000	20.0000000000	\N	2007-09-12 12:13:31.913	0	Second line	\N	\N	1
1534	794	1	1	380.0000000000	38.0000000000	10.0000000000	\N	2007-09-12 12:13:32.343	0	First line	\N	\N	1
1535	794	2	1	780.0000000000	39.0000000000	20.0000000000	\N	2007-09-12 12:13:32.349	0	Second line	\N	\N	1
1536	795	1	1	40.0000000000	4.0000000000	10.0000000000	\N	2007-09-12 12:13:32.796	0	First line	\N	\N	1
1537	795	2	1	1060.0000000000	53.0000000000	20.0000000000	\N	2007-09-12 12:13:32.804	0	Second line	\N	\N	1
1538	796	1	1	980.0000000000	98.0000000000	10.0000000000	\N	2007-09-12 12:13:33.188	0	First line	\N	\N	1
1539	796	2	1	1980.0000000000	99.0000000000	20.0000000000	\N	2007-09-12 12:13:33.19	0	Second line	\N	\N	1
1540	797	1	1	630.0000000000	63.0000000000	10.0000000000	\N	2007-09-12 12:13:33.423	0	First line	\N	\N	1
1541	797	2	1	40.0000000000	2.0000000000	20.0000000000	\N	2007-09-12 12:13:33.425	0	Second line	\N	\N	1
1542	798	1	1	50.0000000000	5.0000000000	10.0000000000	\N	2007-09-12 12:13:33.666	0	First line	\N	\N	1
1543	798	2	1	420.0000000000	21.0000000000	20.0000000000	\N	2007-09-12 12:13:33.669	0	Second line	\N	\N	1
1544	799	1	1	410.0000000000	41.0000000000	10.0000000000	\N	2007-09-12 12:13:33.90	0	First line	\N	\N	1
1545	799	2	1	1080.0000000000	54.0000000000	20.0000000000	\N	2007-09-12 12:13:33.903	0	Second line	\N	\N	1
1546	800	1	1	210.0000000000	21.0000000000	10.0000000000	\N	2007-09-12 12:13:34.20	0	First line	\N	\N	1
1547	800	2	1	1200.0000000000	60.0000000000	20.0000000000	\N	2007-09-12 12:13:34.213	0	Second line	\N	\N	1
1548	801	1	1	250.0000000000	25.0000000000	10.0000000000	\N	2007-09-12 12:13:34.856	0	First line	\N	\N	1
1549	801	2	1	240.0000000000	12.0000000000	20.0000000000	\N	2007-09-12 12:13:34.863	0	Second line	\N	\N	1
1550	802	1	1	350.0000000000	35.0000000000	10.0000000000	\N	2007-09-12 12:13:35.364	0	First line	\N	\N	1
1551	802	2	1	1680.0000000000	84.0000000000	20.0000000000	\N	2007-09-12 12:13:35.37	0	Second line	\N	\N	1
1552	803	1	1	150.0000000000	15.0000000000	10.0000000000	\N	2007-09-12 12:13:35.801	0	First line	\N	\N	1
1553	803	2	1	1020.0000000000	51.0000000000	20.0000000000	\N	2007-09-12 12:13:35.808	0	Second line	\N	\N	1
1554	804	1	1	930.0000000000	93.0000000000	10.0000000000	\N	2007-09-12 12:13:36.078	0	First line	\N	\N	1
1555	804	2	1	840.0000000000	42.0000000000	20.0000000000	\N	2007-09-12 12:13:36.08	0	Second line	\N	\N	1
1556	805	1	1	700.0000000000	70.0000000000	10.0000000000	\N	2007-09-12 12:13:36.315	0	First line	\N	\N	1
1557	805	2	1	1060.0000000000	53.0000000000	20.0000000000	\N	2007-09-12 12:13:36.317	0	Second line	\N	\N	1
1558	806	1	1	10.0000000000	1.0000000000	10.0000000000	\N	2007-09-12 12:13:36.56	0	First line	\N	\N	1
1559	806	2	1	1600.0000000000	80.0000000000	20.0000000000	\N	2007-09-12 12:13:36.563	0	Second line	\N	\N	1
1560	807	1	1	10.0000000000	1.0000000000	10.0000000000	\N	2007-09-12 12:13:36.792	0	First line	\N	\N	1
1561	807	2	1	880.0000000000	44.0000000000	20.0000000000	\N	2007-09-12 12:13:36.803	0	Second line	\N	\N	1
1562	808	1	1	270.0000000000	27.0000000000	10.0000000000	\N	2007-09-12 12:13:37.225	0	First line	\N	\N	1
1563	808	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:13:37.232	0	Second line	\N	\N	1
1564	809	1	1	270.0000000000	27.0000000000	10.0000000000	\N	2007-09-12 12:13:37.68	0	First line	\N	\N	1
1565	809	2	1	1980.0000000000	99.0000000000	20.0000000000	\N	2007-09-12 12:13:37.688	0	Second line	\N	\N	1
1566	810	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:13:38.131	0	First line	\N	\N	1
1567	810	2	1	1080.0000000000	54.0000000000	20.0000000000	\N	2007-09-12 12:13:38.139	0	Second line	\N	\N	1
1568	811	1	1	150.0000000000	15.0000000000	10.0000000000	\N	2007-09-12 12:13:38.614	0	First line	\N	\N	1
1569	811	2	1	80.0000000000	4.0000000000	20.0000000000	\N	2007-09-12 12:13:38.625	0	Second line	\N	\N	1
1570	812	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:13:38.88	0	First line	\N	\N	1
1571	812	2	1	40.0000000000	2.0000000000	20.0000000000	\N	2007-09-12 12:13:38.883	0	Second line	\N	\N	1
1572	813	1	1	210.0000000000	21.0000000000	10.0000000000	\N	2007-09-12 12:13:39.116	0	First line	\N	\N	1
1573	813	2	1	700.0000000000	35.0000000000	20.0000000000	\N	2007-09-12 12:13:39.119	0	Second line	\N	\N	1
1574	814	1	1	160.0000000000	16.0000000000	10.0000000000	\N	2007-09-12 12:13:39.359	0	First line	\N	\N	1
1575	814	2	1	2000.0000000000	100.0000000000	20.0000000000	\N	2007-09-12 12:13:39.361	0	Second line	\N	\N	1
1576	815	1	1	990.0000000000	99.0000000000	10.0000000000	\N	2007-09-12 12:13:39.595	0	First line	\N	\N	1
1577	815	2	1	80.0000000000	4.0000000000	20.0000000000	\N	2007-09-12 12:13:39.598	0	Second line	\N	\N	1
1578	816	1	1	700.0000000000	70.0000000000	10.0000000000	\N	2007-09-12 12:13:40.055	0	First line	\N	\N	1
1579	816	2	1	1560.0000000000	78.0000000000	20.0000000000	\N	2007-09-12 12:13:40.061	0	Second line	\N	\N	1
1580	817	1	1	290.0000000000	29.0000000000	10.0000000000	\N	2007-09-12 12:13:40.52	0	First line	\N	\N	1
1581	817	2	1	1000.0000000000	50.0000000000	20.0000000000	\N	2007-09-12 12:13:40.53	0	Second line	\N	\N	1
1582	818	1	1	810.0000000000	81.0000000000	10.0000000000	\N	2007-09-12 12:13:41.058	0	First line	\N	\N	1
1583	818	2	1	580.0000000000	29.0000000000	20.0000000000	\N	2007-09-12 12:13:41.061	0	Second line	\N	\N	1
1584	819	1	1	240.0000000000	24.0000000000	10.0000000000	\N	2007-09-12 12:13:41.346	0	First line	\N	\N	1
1585	819	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:13:41.349	0	Second line	\N	\N	1
1586	820	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:13:41.596	0	First line	\N	\N	1
1587	820	2	1	1100.0000000000	55.0000000000	20.0000000000	\N	2007-09-12 12:13:41.598	0	Second line	\N	\N	1
1588	821	1	1	290.0000000000	29.0000000000	10.0000000000	\N	2007-09-12 12:13:41.841	0	First line	\N	\N	1
1589	821	2	1	1920.0000000000	96.0000000000	20.0000000000	\N	2007-09-12 12:13:41.843	0	Second line	\N	\N	1
1590	822	1	1	980.0000000000	98.0000000000	10.0000000000	\N	2007-09-12 12:13:42.087	0	First line	\N	\N	1
1591	822	2	1	240.0000000000	12.0000000000	20.0000000000	\N	2007-09-12 12:13:42.089	0	Second line	\N	\N	1
1592	823	1	1	310.0000000000	31.0000000000	10.0000000000	\N	2007-09-12 12:13:42.524	0	First line	\N	\N	1
1593	823	2	1	240.0000000000	12.0000000000	20.0000000000	\N	2007-09-12 12:13:42.534	0	Second line	\N	\N	1
1594	824	1	1	50.0000000000	5.0000000000	10.0000000000	\N	2007-09-12 12:13:43.023	0	First line	\N	\N	1
1595	824	2	1	1280.0000000000	64.0000000000	20.0000000000	\N	2007-09-12 12:13:43.039	0	Second line	\N	\N	1
1596	825	1	1	260.0000000000	26.0000000000	10.0000000000	\N	2007-09-12 12:13:43.49	0	First line	\N	\N	1
1597	825	2	1	1140.0000000000	57.0000000000	20.0000000000	\N	2007-09-12 12:13:43.495	0	Second line	\N	\N	1
1598	826	1	1	260.0000000000	26.0000000000	10.0000000000	\N	2007-09-12 12:13:43.919	0	First line	\N	\N	1
1599	826	2	1	1600.0000000000	80.0000000000	20.0000000000	\N	2007-09-12 12:13:43.921	0	Second line	\N	\N	1
1600	827	1	1	920.0000000000	92.0000000000	10.0000000000	\N	2007-09-12 12:13:44.159	0	First line	\N	\N	1
1601	827	2	1	1680.0000000000	84.0000000000	20.0000000000	\N	2007-09-12 12:13:44.161	0	Second line	\N	\N	1
1602	828	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:13:44.411	0	First line	\N	\N	1
1603	828	2	1	1460.0000000000	73.0000000000	20.0000000000	\N	2007-09-12 12:13:44.414	0	Second line	\N	\N	1
1604	829	1	1	640.0000000000	64.0000000000	10.0000000000	\N	2007-09-12 12:13:44.656	0	First line	\N	\N	1
1605	829	2	1	220.0000000000	11.0000000000	20.0000000000	\N	2007-09-12 12:13:44.659	0	Second line	\N	\N	1
1606	830	1	1	330.0000000000	33.0000000000	10.0000000000	\N	2007-09-12 12:13:44.979	0	First line	\N	\N	1
1607	830	2	1	1260.0000000000	63.0000000000	20.0000000000	\N	2007-09-12 12:13:44.99	0	Second line	\N	\N	1
1608	831	1	1	870.0000000000	87.0000000000	10.0000000000	\N	2007-09-12 12:13:45.432	0	First line	\N	\N	1
1609	831	2	1	1500.0000000000	75.0000000000	20.0000000000	\N	2007-09-12 12:13:45.441	0	Second line	\N	\N	1
1610	832	1	1	500.0000000000	50.0000000000	10.0000000000	\N	2007-09-12 12:13:45.916	0	First line	\N	\N	1
1611	832	2	1	580.0000000000	29.0000000000	20.0000000000	\N	2007-09-12 12:13:45.924	0	Second line	\N	\N	1
1612	833	1	1	180.0000000000	18.0000000000	10.0000000000	\N	2007-09-12 12:13:46.395	0	First line	\N	\N	1
1613	833	2	1	1660.0000000000	83.0000000000	20.0000000000	\N	2007-09-12 12:13:46.403	0	Second line	\N	\N	1
1614	834	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:13:46.67	0	First line	\N	\N	1
1615	834	2	1	800.0000000000	40.0000000000	20.0000000000	\N	2007-09-12 12:13:46.672	0	Second line	\N	\N	1
1616	835	1	1	150.0000000000	15.0000000000	10.0000000000	\N	2007-09-12 12:13:46.919	0	First line	\N	\N	1
1617	835	2	1	1920.0000000000	96.0000000000	20.0000000000	\N	2007-09-12 12:13:46.921	0	Second line	\N	\N	1
1618	836	1	1	110.0000000000	11.0000000000	10.0000000000	\N	2007-09-12 12:13:47.166	0	First line	\N	\N	1
1619	836	2	1	520.0000000000	26.0000000000	20.0000000000	\N	2007-09-12 12:13:47.169	0	Second line	\N	\N	1
1620	837	1	1	90.0000000000	9.0000000000	10.0000000000	\N	2007-09-12 12:13:47.405	0	First line	\N	\N	1
1621	837	2	1	1880.0000000000	94.0000000000	20.0000000000	\N	2007-09-12 12:13:47.407	0	Second line	\N	\N	1
1622	838	1	1	240.0000000000	24.0000000000	10.0000000000	\N	2007-09-12 12:13:47.845	0	First line	\N	\N	1
1623	838	2	1	80.0000000000	4.0000000000	20.0000000000	\N	2007-09-12 12:13:47.851	0	Second line	\N	\N	1
1624	839	1	1	730.0000000000	73.0000000000	10.0000000000	\N	2007-09-12 12:13:48.288	0	First line	\N	\N	1
1625	839	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:13:48.295	0	Second line	\N	\N	1
1626	840	1	1	280.0000000000	28.0000000000	10.0000000000	\N	2007-09-12 12:13:48.782	0	First line	\N	\N	1
1627	840	2	1	600.0000000000	30.0000000000	20.0000000000	\N	2007-09-12 12:13:48.785	0	Second line	\N	\N	1
1628	841	1	1	630.0000000000	63.0000000000	10.0000000000	\N	2007-09-12 12:13:49.205	0	First line	\N	\N	1
1629	841	2	1	300.0000000000	15.0000000000	20.0000000000	\N	2007-09-12 12:13:49.213	0	Second line	\N	\N	1
1630	842	1	1	240.0000000000	24.0000000000	10.0000000000	\N	2007-09-12 12:13:49.463	0	First line	\N	\N	1
1631	842	2	1	260.0000000000	13.0000000000	20.0000000000	\N	2007-09-12 12:13:49.465	0	Second line	\N	\N	1
1632	843	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:13:49.70	0	First line	\N	\N	1
1633	843	2	1	1680.0000000000	84.0000000000	20.0000000000	\N	2007-09-12 12:13:49.702	0	Second line	\N	\N	1
1634	844	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:13:49.946	0	First line	\N	\N	1
1635	844	2	1	1640.0000000000	82.0000000000	20.0000000000	\N	2007-09-12 12:13:49.948	0	Second line	\N	\N	1
1636	845	1	1	290.0000000000	29.0000000000	10.0000000000	\N	2007-09-12 12:13:50.245	0	First line	\N	\N	1
1637	845	2	1	800.0000000000	40.0000000000	20.0000000000	\N	2007-09-12 12:13:50.25	0	Second line	\N	\N	1
1638	846	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:13:50.755	0	First line	\N	\N	1
1639	846	2	1	1660.0000000000	83.0000000000	20.0000000000	\N	2007-09-12 12:13:50.76	0	Second line	\N	\N	1
1640	847	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:13:51.226	0	First line	\N	\N	1
1641	847	2	1	1980.0000000000	99.0000000000	20.0000000000	\N	2007-09-12 12:13:51.237	0	Second line	\N	\N	1
1642	848	1	1	110.0000000000	11.0000000000	10.0000000000	\N	2007-09-12 12:13:51.724	0	First line	\N	\N	1
1643	848	2	1	1780.0000000000	89.0000000000	20.0000000000	\N	2007-09-12 12:13:51.726	0	Second line	\N	\N	1
1644	849	1	1	90.0000000000	9.0000000000	10.0000000000	\N	2007-09-12 12:13:51.976	0	First line	\N	\N	1
1645	849	2	1	520.0000000000	26.0000000000	20.0000000000	\N	2007-09-12 12:13:51.979	0	Second line	\N	\N	1
1646	850	1	1	590.0000000000	59.0000000000	10.0000000000	\N	2007-09-12 12:13:52.215	0	First line	\N	\N	1
1647	850	2	1	1400.0000000000	70.0000000000	20.0000000000	\N	2007-09-12 12:13:52.218	0	Second line	\N	\N	1
1648	851	1	1	310.0000000000	31.0000000000	10.0000000000	\N	2007-09-12 12:13:52.452	0	First line	\N	\N	1
1649	851	2	1	560.0000000000	28.0000000000	20.0000000000	\N	2007-09-12 12:13:52.455	0	Second line	\N	\N	1
1650	852	1	1	390.0000000000	39.0000000000	10.0000000000	\N	2007-09-12 12:13:52.698	0	First line	\N	\N	1
1651	852	2	1	1720.0000000000	86.0000000000	20.0000000000	\N	2007-09-12 12:13:52.70	0	Second line	\N	\N	1
1652	853	1	1	950.0000000000	95.0000000000	10.0000000000	\N	2007-09-12 12:13:53.146	0	First line	\N	\N	1
1653	853	2	1	320.0000000000	16.0000000000	20.0000000000	\N	2007-09-12 12:13:53.161	0	Second line	\N	\N	1
1654	854	1	1	100.0000000000	10.0000000000	10.0000000000	\N	2007-09-12 12:13:53.613	0	First line	\N	\N	1
1655	854	2	1	420.0000000000	21.0000000000	20.0000000000	\N	2007-09-12 12:13:53.617	0	Second line	\N	\N	1
1656	855	1	1	250.0000000000	25.0000000000	10.0000000000	\N	2007-09-12 12:13:54.133	0	First line	\N	\N	1
1657	855	2	1	440.0000000000	22.0000000000	20.0000000000	\N	2007-09-12 12:13:54.138	0	Second line	\N	\N	1
1658	856	1	1	540.0000000000	54.0000000000	10.0000000000	\N	2007-09-12 12:13:54.486	0	First line	\N	\N	1
1659	856	2	1	1200.0000000000	60.0000000000	20.0000000000	\N	2007-09-12 12:13:54.489	0	Second line	\N	\N	1
1660	857	1	1	480.0000000000	48.0000000000	10.0000000000	\N	2007-09-12 12:13:54.731	0	First line	\N	\N	1
1661	857	2	1	720.0000000000	36.0000000000	20.0000000000	\N	2007-09-12 12:13:54.733	0	Second line	\N	\N	1
1662	858	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:13:54.982	0	First line	\N	\N	1
1663	858	2	1	1460.0000000000	73.0000000000	20.0000000000	\N	2007-09-12 12:13:54.994	0	Second line	\N	\N	1
1664	859	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:13:55.228	0	First line	\N	\N	1
1665	859	2	1	1000.0000000000	50.0000000000	20.0000000000	\N	2007-09-12 12:13:55.23	0	Second line	\N	\N	1
1666	860	1	1	440.0000000000	44.0000000000	10.0000000000	\N	2007-09-12 12:13:55.673	0	First line	\N	\N	1
1667	860	2	1	100.0000000000	5.0000000000	20.0000000000	\N	2007-09-12 12:13:55.676	0	Second line	\N	\N	1
1668	861	1	1	130.0000000000	13.0000000000	10.0000000000	\N	2007-09-12 12:13:56.128	0	First line	\N	\N	1
1669	861	2	1	640.0000000000	32.0000000000	20.0000000000	\N	2007-09-12 12:13:56.134	0	Second line	\N	\N	1
1670	862	1	1	130.0000000000	13.0000000000	10.0000000000	\N	2007-09-12 12:13:56.619	0	First line	\N	\N	1
1671	862	2	1	1660.0000000000	83.0000000000	20.0000000000	\N	2007-09-12 12:13:56.624	0	Second line	\N	\N	1
1672	863	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:13:57.013	0	First line	\N	\N	1
1673	863	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:13:57.015	0	Second line	\N	\N	1
1674	864	1	1	830.0000000000	83.0000000000	10.0000000000	\N	2007-09-12 12:13:57.257	0	First line	\N	\N	1
1675	864	2	1	140.0000000000	7.0000000000	20.0000000000	\N	2007-09-12 12:13:57.259	0	Second line	\N	\N	1
1676	865	1	1	840.0000000000	84.0000000000	10.0000000000	\N	2007-09-12 12:13:57.498	0	First line	\N	\N	1
1677	865	2	1	700.0000000000	35.0000000000	20.0000000000	\N	2007-09-12 12:13:57.50	0	Second line	\N	\N	1
1678	866	1	1	700.0000000000	70.0000000000	10.0000000000	\N	2007-09-12 12:13:57.745	0	First line	\N	\N	1
1679	866	2	1	1480.0000000000	74.0000000000	20.0000000000	\N	2007-09-12 12:13:57.747	0	Second line	\N	\N	1
1680	867	1	1	540.0000000000	54.0000000000	10.0000000000	\N	2007-09-12 12:13:58.036	0	First line	\N	\N	1
1681	867	2	1	1160.0000000000	58.0000000000	20.0000000000	\N	2007-09-12 12:13:58.044	0	Second line	\N	\N	1
1682	868	1	1	470.0000000000	47.0000000000	10.0000000000	\N	2007-09-12 12:13:58.561	0	First line	\N	\N	1
1683	868	2	1	1360.0000000000	68.0000000000	20.0000000000	\N	2007-09-12 12:13:58.564	0	Second line	\N	\N	1
1684	869	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:13:59.03	0	First line	\N	\N	1
1685	869	2	1	80.0000000000	4.0000000000	20.0000000000	\N	2007-09-12 12:13:59.033	0	Second line	\N	\N	1
1686	870	1	1	550.0000000000	55.0000000000	10.0000000000	\N	2007-09-12 12:13:59.475	0	First line	\N	\N	1
1687	870	2	1	1320.0000000000	66.0000000000	20.0000000000	\N	2007-09-12 12:13:59.478	0	Second line	\N	\N	1
1688	871	1	1	370.0000000000	37.0000000000	10.0000000000	\N	2007-09-12 12:13:59.723	0	First line	\N	\N	1
1689	871	2	1	1840.0000000000	92.0000000000	20.0000000000	\N	2007-09-12 12:13:59.725	0	Second line	\N	\N	1
1690	872	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:13:59.977	0	First line	\N	\N	1
1691	872	2	1	1960.0000000000	98.0000000000	20.0000000000	\N	2007-09-12 12:13:59.979	0	Second line	\N	\N	1
1692	873	1	1	640.0000000000	64.0000000000	10.0000000000	\N	2007-09-12 12:14:00.231	0	First line	\N	\N	1
1693	873	2	1	1180.0000000000	59.0000000000	20.0000000000	\N	2007-09-12 12:14:00.233	0	Second line	\N	\N	1
1694	874	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:14:00.546	0	First line	\N	\N	1
1695	874	2	1	580.0000000000	29.0000000000	20.0000000000	\N	2007-09-12 12:14:00.562	0	Second line	\N	\N	1
1696	875	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:14:01.08	0	First line	\N	\N	1
1697	875	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:14:01.083	0	Second line	\N	\N	1
1698	876	1	1	650.0000000000	65.0000000000	10.0000000000	\N	2007-09-12 12:14:01.582	0	First line	\N	\N	1
1699	876	2	1	1360.0000000000	68.0000000000	20.0000000000	\N	2007-09-12 12:14:01.593	0	Second line	\N	\N	1
1700	877	1	1	900.0000000000	90.0000000000	10.0000000000	\N	2007-09-12 12:14:02.014	0	First line	\N	\N	1
1701	877	2	1	200.0000000000	10.0000000000	20.0000000000	\N	2007-09-12 12:14:02.016	0	Second line	\N	\N	1
1702	878	1	1	750.0000000000	75.0000000000	10.0000000000	\N	2007-09-12 12:14:02.265	0	First line	\N	\N	1
1703	878	2	1	180.0000000000	9.0000000000	20.0000000000	\N	2007-09-12 12:14:02.267	0	Second line	\N	\N	1
1704	879	1	1	800.0000000000	80.0000000000	10.0000000000	\N	2007-09-12 12:14:02.51	0	First line	\N	\N	1
1705	879	2	1	1220.0000000000	61.0000000000	20.0000000000	\N	2007-09-12 12:14:02.512	0	Second line	\N	\N	1
1706	880	1	1	990.0000000000	99.0000000000	10.0000000000	\N	2007-09-12 12:14:02.76	0	First line	\N	\N	1
1707	880	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:14:02.763	0	Second line	\N	\N	1
1708	881	1	1	880.0000000000	88.0000000000	10.0000000000	\N	2007-09-12 12:14:03.062	0	First line	\N	\N	1
1709	881	2	1	800.0000000000	40.0000000000	20.0000000000	\N	2007-09-12 12:14:03.075	0	Second line	\N	\N	1
1710	882	1	1	90.0000000000	9.0000000000	10.0000000000	\N	2007-09-12 12:14:03.575	0	First line	\N	\N	1
1711	882	2	1	880.0000000000	44.0000000000	20.0000000000	\N	2007-09-12 12:14:03.579	0	Second line	\N	\N	1
1712	883	1	1	880.0000000000	88.0000000000	10.0000000000	\N	2007-09-12 12:14:04.082	0	First line	\N	\N	1
1713	883	2	1	260.0000000000	13.0000000000	20.0000000000	\N	2007-09-12 12:14:04.091	0	Second line	\N	\N	1
1714	884	1	1	180.0000000000	18.0000000000	10.0000000000	\N	2007-09-12 12:14:04.502	0	First line	\N	\N	1
1715	884	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:14:04.505	0	Second line	\N	\N	1
1716	885	1	1	630.0000000000	63.0000000000	10.0000000000	\N	2007-09-12 12:14:04.753	0	First line	\N	\N	1
1717	885	2	1	640.0000000000	32.0000000000	20.0000000000	\N	2007-09-12 12:14:04.755	0	Second line	\N	\N	1
1718	886	1	1	390.0000000000	39.0000000000	10.0000000000	\N	2007-09-12 12:14:05.01	0	First line	\N	\N	1
1719	886	2	1	1960.0000000000	98.0000000000	20.0000000000	\N	2007-09-12 12:14:05.013	0	Second line	\N	\N	1
1720	887	1	1	930.0000000000	93.0000000000	10.0000000000	\N	2007-09-12 12:14:05.249	0	First line	\N	\N	1
1721	887	2	1	1100.0000000000	55.0000000000	20.0000000000	\N	2007-09-12 12:14:05.252	0	Second line	\N	\N	1
1722	888	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:14:05.571	0	First line	\N	\N	1
1723	888	2	1	440.0000000000	22.0000000000	20.0000000000	\N	2007-09-12 12:14:05.575	0	Second line	\N	\N	1
1724	889	1	1	70.0000000000	7.0000000000	10.0000000000	\N	2007-09-12 12:14:06.022	0	First line	\N	\N	1
1725	889	2	1	1560.0000000000	78.0000000000	20.0000000000	\N	2007-09-12 12:14:06.025	0	Second line	\N	\N	1
1726	890	1	1	390.0000000000	39.0000000000	10.0000000000	\N	2007-09-12 12:14:06.469	0	First line	\N	\N	1
1727	890	2	1	1260.0000000000	63.0000000000	20.0000000000	\N	2007-09-12 12:14:06.473	0	Second line	\N	\N	1
1728	891	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:14:06.966	0	First line	\N	\N	1
1729	891	2	1	1920.0000000000	96.0000000000	20.0000000000	\N	2007-09-12 12:14:06.976	0	Second line	\N	\N	1
1730	892	1	1	970.0000000000	97.0000000000	10.0000000000	\N	2007-09-12 12:14:07.276	0	First line	\N	\N	1
1731	892	2	1	420.0000000000	21.0000000000	20.0000000000	\N	2007-09-12 12:14:07.278	0	Second line	\N	\N	1
1732	893	1	1	480.0000000000	48.0000000000	10.0000000000	\N	2007-09-12 12:14:07.52	0	First line	\N	\N	1
1733	893	2	1	1060.0000000000	53.0000000000	20.0000000000	\N	2007-09-12 12:14:07.522	0	Second line	\N	\N	1
1734	894	1	1	980.0000000000	98.0000000000	10.0000000000	\N	2007-09-12 12:14:07.769	0	First line	\N	\N	1
1735	894	2	1	1340.0000000000	67.0000000000	20.0000000000	\N	2007-09-12 12:14:07.771	0	Second line	\N	\N	1
1736	895	1	1	280.0000000000	28.0000000000	10.0000000000	\N	2007-09-12 12:14:08.009	0	First line	\N	\N	1
1737	895	2	1	1560.0000000000	78.0000000000	20.0000000000	\N	2007-09-12 12:14:08.012	0	Second line	\N	\N	1
1738	896	1	1	490.0000000000	49.0000000000	10.0000000000	\N	2007-09-12 12:14:08.441	0	First line	\N	\N	1
1739	896	2	1	480.0000000000	24.0000000000	20.0000000000	\N	2007-09-12 12:14:08.449	0	Second line	\N	\N	1
1740	897	1	1	350.0000000000	35.0000000000	10.0000000000	\N	2007-09-12 12:14:08.868	0	First line	\N	\N	1
1741	897	2	1	260.0000000000	13.0000000000	20.0000000000	\N	2007-09-12 12:14:08.872	0	Second line	\N	\N	1
1742	898	1	1	810.0000000000	81.0000000000	10.0000000000	\N	2007-09-12 12:14:09.34	0	First line	\N	\N	1
1743	898	2	1	840.0000000000	42.0000000000	20.0000000000	\N	2007-09-12 12:14:09.345	0	Second line	\N	\N	1
1744	899	1	1	10.0000000000	1.0000000000	10.0000000000	\N	2007-09-12 12:14:09.765	0	First line	\N	\N	1
1745	899	2	1	240.0000000000	12.0000000000	20.0000000000	\N	2007-09-12 12:14:09.769	0	Second line	\N	\N	1
1746	900	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:14:10.118	0	First line	\N	\N	1
1747	900	2	1	1320.0000000000	66.0000000000	20.0000000000	\N	2007-09-12 12:14:10.121	0	Second line	\N	\N	1
1748	901	1	1	810.0000000000	81.0000000000	10.0000000000	\N	2007-09-12 12:14:10.363	0	First line	\N	\N	1
1749	901	2	1	720.0000000000	36.0000000000	20.0000000000	\N	2007-09-12 12:14:10.365	0	Second line	\N	\N	1
1750	902	1	1	180.0000000000	18.0000000000	10.0000000000	\N	2007-09-12 12:14:10.603	0	First line	\N	\N	1
1751	902	2	1	760.0000000000	38.0000000000	20.0000000000	\N	2007-09-12 12:14:10.606	0	Second line	\N	\N	1
1752	903	1	1	40.0000000000	4.0000000000	10.0000000000	\N	2007-09-12 12:14:10.841	0	First line	\N	\N	1
1753	903	2	1	400.0000000000	20.0000000000	20.0000000000	\N	2007-09-12 12:14:10.843	0	Second line	\N	\N	1
1754	904	1	1	10.0000000000	1.0000000000	10.0000000000	\N	2007-09-12 12:14:11.16	0	First line	\N	\N	1
1755	904	2	1	740.0000000000	37.0000000000	20.0000000000	\N	2007-09-12 12:14:11.167	0	Second line	\N	\N	1
1756	905	1	1	440.0000000000	44.0000000000	10.0000000000	\N	2007-09-12 12:14:11.66	0	First line	\N	\N	1
1757	905	2	1	680.0000000000	34.0000000000	20.0000000000	\N	2007-09-12 12:14:11.668	0	Second line	\N	\N	1
1758	906	1	1	110.0000000000	11.0000000000	10.0000000000	\N	2007-09-12 12:14:12.162	0	First line	\N	\N	1
1759	906	2	1	20.0000000000	1.0000000000	20.0000000000	\N	2007-09-12 12:14:12.176	0	Second line	\N	\N	1
1760	907	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:14:12.619	0	First line	\N	\N	1
1761	907	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:14:12.628	0	Second line	\N	\N	1
1762	908	1	1	530.0000000000	53.0000000000	10.0000000000	\N	2007-09-12 12:14:12.902	0	First line	\N	\N	1
1763	908	2	1	300.0000000000	15.0000000000	20.0000000000	\N	2007-09-12 12:14:12.912	0	Second line	\N	\N	1
1764	909	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:14:13.149	0	First line	\N	\N	1
1765	909	2	1	1480.0000000000	74.0000000000	20.0000000000	\N	2007-09-12 12:14:13.151	0	Second line	\N	\N	1
1766	910	1	1	90.0000000000	9.0000000000	10.0000000000	\N	2007-09-12 12:14:13.398	0	First line	\N	\N	1
1767	910	2	1	280.0000000000	14.0000000000	20.0000000000	\N	2007-09-12 12:14:13.40	0	Second line	\N	\N	1
1768	911	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:14:13.645	0	First line	\N	\N	1
1769	911	2	1	1140.0000000000	57.0000000000	20.0000000000	\N	2007-09-12 12:14:13.647	0	Second line	\N	\N	1
1770	912	1	1	890.0000000000	89.0000000000	10.0000000000	\N	2007-09-12 12:14:14.081	0	First line	\N	\N	1
1771	912	2	1	1160.0000000000	58.0000000000	20.0000000000	\N	2007-09-12 12:14:14.089	0	Second line	\N	\N	1
1772	913	1	1	530.0000000000	53.0000000000	10.0000000000	\N	2007-09-12 12:14:14.577	0	First line	\N	\N	1
1773	913	2	1	940.0000000000	47.0000000000	20.0000000000	\N	2007-09-12 12:14:14.584	0	Second line	\N	\N	1
1774	914	1	1	690.0000000000	69.0000000000	10.0000000000	\N	2007-09-12 12:14:15.063	0	First line	\N	\N	1
1775	914	2	1	940.0000000000	47.0000000000	20.0000000000	\N	2007-09-12 12:14:15.069	0	Second line	\N	\N	1
1776	915	1	1	430.0000000000	43.0000000000	10.0000000000	\N	2007-09-12 12:14:15.365	0	First line	\N	\N	1
1777	915	2	1	500.0000000000	25.0000000000	20.0000000000	\N	2007-09-12 12:14:15.367	0	Second line	\N	\N	1
1778	916	1	1	730.0000000000	73.0000000000	10.0000000000	\N	2007-09-12 12:14:15.612	0	First line	\N	\N	1
1779	916	2	1	400.0000000000	20.0000000000	20.0000000000	\N	2007-09-12 12:14:15.615	0	Second line	\N	\N	1
1780	917	1	1	90.0000000000	9.0000000000	10.0000000000	\N	2007-09-12 12:14:15.857	0	First line	\N	\N	1
1781	917	2	1	840.0000000000	42.0000000000	20.0000000000	\N	2007-09-12 12:14:15.86	0	Second line	\N	\N	1
1782	918	1	1	760.0000000000	76.0000000000	10.0000000000	\N	2007-09-12 12:14:16.119	0	First line	\N	\N	1
1783	918	2	1	920.0000000000	46.0000000000	20.0000000000	\N	2007-09-12 12:14:16.122	0	Second line	\N	\N	1
1784	919	1	1	840.0000000000	84.0000000000	10.0000000000	\N	2007-09-12 12:14:16.881	0	First line	\N	\N	1
1785	919	2	1	1900.0000000000	95.0000000000	20.0000000000	\N	2007-09-12 12:14:16.886	0	Second line	\N	\N	1
1786	920	1	1	730.0000000000	73.0000000000	10.0000000000	\N	2007-09-12 12:14:17.384	0	First line	\N	\N	1
1787	920	2	1	1240.0000000000	62.0000000000	20.0000000000	\N	2007-09-12 12:14:17.391	0	Second line	\N	\N	1
1788	921	1	1	680.0000000000	68.0000000000	10.0000000000	\N	2007-09-12 12:14:17.762	0	First line	\N	\N	1
1789	921	2	1	1800.0000000000	90.0000000000	20.0000000000	\N	2007-09-12 12:14:17.764	0	Second line	\N	\N	1
1790	922	1	1	130.0000000000	13.0000000000	10.0000000000	\N	2007-09-12 12:14:18.003	0	First line	\N	\N	1
1791	922	2	1	1380.0000000000	69.0000000000	20.0000000000	\N	2007-09-12 12:14:18.005	0	Second line	\N	\N	1
1792	923	1	1	970.0000000000	97.0000000000	10.0000000000	\N	2007-09-12 12:14:18.252	0	First line	\N	\N	1
1793	923	2	1	1960.0000000000	98.0000000000	20.0000000000	\N	2007-09-12 12:14:18.255	0	Second line	\N	\N	1
1794	924	1	1	400.0000000000	40.0000000000	10.0000000000	\N	2007-09-12 12:14:18.502	0	First line	\N	\N	1
1795	924	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:14:18.505	0	Second line	\N	\N	1
1796	925	1	1	790.0000000000	79.0000000000	10.0000000000	\N	2007-09-12 12:14:18.902	0	First line	\N	\N	1
1797	925	2	1	260.0000000000	13.0000000000	20.0000000000	\N	2007-09-12 12:14:18.91	0	Second line	\N	\N	1
1798	926	1	1	510.0000000000	51.0000000000	10.0000000000	\N	2007-09-12 12:14:19.353	0	First line	\N	\N	1
1799	926	2	1	1360.0000000000	68.0000000000	20.0000000000	\N	2007-09-12 12:14:19.361	0	Second line	\N	\N	1
1800	927	1	1	60.0000000000	6.0000000000	10.0000000000	\N	2007-09-12 12:14:19.858	0	First line	\N	\N	1
1801	927	2	1	1140.0000000000	57.0000000000	20.0000000000	\N	2007-09-12 12:14:19.864	0	Second line	\N	\N	1
1802	928	1	1	330.0000000000	33.0000000000	10.0000000000	\N	2007-09-12 12:14:20.278	0	First line	\N	\N	1
1803	928	2	1	440.0000000000	22.0000000000	20.0000000000	\N	2007-09-12 12:14:20.28	0	Second line	\N	\N	1
1804	929	1	1	80.0000000000	8.0000000000	10.0000000000	\N	2007-09-12 12:14:20.511	0	First line	\N	\N	1
1805	929	2	1	2000.0000000000	100.0000000000	20.0000000000	\N	2007-09-12 12:14:20.513	0	Second line	\N	\N	1
1806	930	1	1	390.0000000000	39.0000000000	10.0000000000	\N	2007-09-12 12:14:20.758	0	First line	\N	\N	1
1807	930	2	1	740.0000000000	37.0000000000	20.0000000000	\N	2007-09-12 12:14:20.761	0	Second line	\N	\N	1
1808	931	1	1	620.0000000000	62.0000000000	10.0000000000	\N	2007-09-12 12:14:21.011	0	First line	\N	\N	1
1809	931	2	1	1560.0000000000	78.0000000000	20.0000000000	\N	2007-09-12 12:14:21.013	0	Second line	\N	\N	1
1810	932	1	1	380.0000000000	38.0000000000	10.0000000000	\N	2007-09-12 12:14:21.245	0	First line	\N	\N	1
1811	932	2	1	1000.0000000000	50.0000000000	20.0000000000	\N	2007-09-12 12:14:21.247	0	Second line	\N	\N	1
1812	933	1	1	840.0000000000	84.0000000000	10.0000000000	\N	2007-09-12 12:14:21.685	0	First line	\N	\N	1
1813	933	2	1	320.0000000000	16.0000000000	20.0000000000	\N	2007-09-12 12:14:21.699	0	Second line	\N	\N	1
1814	934	1	1	440.0000000000	44.0000000000	10.0000000000	\N	2007-09-12 12:14:22.186	0	First line	\N	\N	1
1815	934	2	1	620.0000000000	31.0000000000	20.0000000000	\N	2007-09-12 12:14:22.198	0	Second line	\N	\N	1
1816	935	1	1	330.0000000000	33.0000000000	10.0000000000	\N	2007-09-12 12:14:22.689	0	First line	\N	\N	1
1817	935	2	1	240.0000000000	12.0000000000	20.0000000000	\N	2007-09-12 12:14:22.697	0	Second line	\N	\N	1
1818	936	1	1	860.0000000000	86.0000000000	10.0000000000	\N	2007-09-12 12:14:23.099	0	First line	\N	\N	1
1819	936	2	1	1220.0000000000	61.0000000000	20.0000000000	\N	2007-09-12 12:14:23.101	0	Second line	\N	\N	1
1820	937	1	1	960.0000000000	96.0000000000	10.0000000000	\N	2007-09-12 12:14:23.34	0	First line	\N	\N	1
1821	937	2	1	680.0000000000	34.0000000000	20.0000000000	\N	2007-09-12 12:14:23.343	0	Second line	\N	\N	1
1822	938	1	1	740.0000000000	74.0000000000	10.0000000000	\N	2007-09-12 12:14:23.586	0	First line	\N	\N	1
1823	938	2	1	940.0000000000	47.0000000000	20.0000000000	\N	2007-09-12 12:14:23.589	0	Second line	\N	\N	1
1824	939	1	1	530.0000000000	53.0000000000	10.0000000000	\N	2007-09-12 12:14:23.821	0	First line	\N	\N	1
1825	939	2	1	140.0000000000	7.0000000000	20.0000000000	\N	2007-09-12 12:14:23.824	0	Second line	\N	\N	1
1826	940	1	1	940.0000000000	94.0000000000	10.0000000000	\N	2007-09-12 12:14:24.112	0	First line	\N	\N	1
1827	940	2	1	920.0000000000	46.0000000000	20.0000000000	\N	2007-09-12 12:14:24.118	0	Second line	\N	\N	1
1828	941	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:14:24.619	0	First line	\N	\N	1
1829	941	2	1	1040.0000000000	52.0000000000	20.0000000000	\N	2007-09-12 12:14:24.631	0	Second line	\N	\N	1
1830	942	1	1	50.0000000000	5.0000000000	10.0000000000	\N	2007-09-12 12:14:25.102	0	First line	\N	\N	1
1831	942	2	1	1300.0000000000	65.0000000000	20.0000000000	\N	2007-09-12 12:14:25.105	0	Second line	\N	\N	1
1832	943	1	1	710.0000000000	71.0000000000	10.0000000000	\N	2007-09-12 12:14:25.528	0	First line	\N	\N	1
1833	943	2	1	1580.0000000000	79.0000000000	20.0000000000	\N	2007-09-12 12:14:25.534	0	Second line	\N	\N	1
1834	944	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:14:25.804	0	First line	\N	\N	1
1835	944	2	1	920.0000000000	46.0000000000	20.0000000000	\N	2007-09-12 12:14:25.806	0	Second line	\N	\N	1
1836	945	1	1	660.0000000000	66.0000000000	10.0000000000	\N	2007-09-12 12:14:26.057	0	First line	\N	\N	1
1837	945	2	1	1920.0000000000	96.0000000000	20.0000000000	\N	2007-09-12 12:14:26.059	0	Second line	\N	\N	1
1838	946	1	1	380.0000000000	38.0000000000	10.0000000000	\N	2007-09-12 12:14:26.302	0	First line	\N	\N	1
1839	946	2	1	480.0000000000	24.0000000000	20.0000000000	\N	2007-09-12 12:14:26.304	0	Second line	\N	\N	1
1840	947	1	1	740.0000000000	74.0000000000	10.0000000000	\N	2007-09-12 12:14:26.547	0	First line	\N	\N	1
1841	947	2	1	1380.0000000000	69.0000000000	20.0000000000	\N	2007-09-12 12:14:26.55	0	Second line	\N	\N	1
1842	948	1	1	280.0000000000	28.0000000000	10.0000000000	\N	2007-09-12 12:14:26.972	0	First line	\N	\N	1
1843	948	2	1	780.0000000000	39.0000000000	20.0000000000	\N	2007-09-12 12:14:26.977	0	Second line	\N	\N	1
1844	949	1	1	630.0000000000	63.0000000000	10.0000000000	\N	2007-09-12 12:14:27.471	0	First line	\N	\N	1
1845	949	2	1	1500.0000000000	75.0000000000	20.0000000000	\N	2007-09-12 12:14:27.479	0	Second line	\N	\N	1
1846	950	1	1	490.0000000000	49.0000000000	10.0000000000	\N	2007-09-12 12:14:27.975	0	First line	\N	\N	1
1847	950	2	1	980.0000000000	49.0000000000	20.0000000000	\N	2007-09-12 12:14:27.983	0	Second line	\N	\N	1
1848	951	1	1	300.0000000000	30.0000000000	10.0000000000	\N	2007-09-12 12:14:28.393	0	First line	\N	\N	1
1849	951	2	1	680.0000000000	34.0000000000	20.0000000000	\N	2007-09-12 12:14:28.396	0	Second line	\N	\N	1
1850	952	1	1	520.0000000000	52.0000000000	10.0000000000	\N	2007-09-12 12:14:28.633	0	First line	\N	\N	1
1851	952	2	1	140.0000000000	7.0000000000	20.0000000000	\N	2007-09-12 12:14:28.635	0	Second line	\N	\N	1
1852	953	1	1	580.0000000000	58.0000000000	10.0000000000	\N	2007-09-12 12:14:28.882	0	First line	\N	\N	1
1853	953	2	1	980.0000000000	49.0000000000	20.0000000000	\N	2007-09-12 12:14:28.884	0	Second line	\N	\N	1
1854	954	1	1	420.0000000000	42.0000000000	10.0000000000	\N	2007-09-12 12:14:29.118	0	First line	\N	\N	1
1855	954	2	1	1680.0000000000	84.0000000000	20.0000000000	\N	2007-09-12 12:14:29.12	0	Second line	\N	\N	1
1856	955	1	1	460.0000000000	46.0000000000	10.0000000000	\N	2007-09-12 12:14:29.418	0	First line	\N	\N	1
1857	955	2	1	1080.0000000000	54.0000000000	20.0000000000	\N	2007-09-12 12:14:29.426	0	Second line	\N	\N	1
1858	956	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:14:29.933	0	First line	\N	\N	1
1859	956	2	1	1340.0000000000	67.0000000000	20.0000000000	\N	2007-09-12 12:14:29.94	0	Second line	\N	\N	1
1860	957	1	1	850.0000000000	85.0000000000	10.0000000000	\N	2007-09-12 12:14:30.413	0	First line	\N	\N	1
1861	957	2	1	1220.0000000000	61.0000000000	20.0000000000	\N	2007-09-12 12:14:30.418	0	Second line	\N	\N	1
1862	958	1	1	40.0000000000	4.0000000000	10.0000000000	\N	2007-09-12 12:14:30.916	0	First line	\N	\N	1
1863	958	2	1	760.0000000000	38.0000000000	20.0000000000	\N	2007-09-12 12:14:30.935	0	Second line	\N	\N	1
1864	959	1	1	50.0000000000	5.0000000000	10.0000000000	\N	2007-09-12 12:14:31.173	0	First line	\N	\N	1
1865	959	2	1	1520.0000000000	76.0000000000	20.0000000000	\N	2007-09-12 12:14:31.175	0	Second line	\N	\N	1
1866	960	1	1	590.0000000000	59.0000000000	10.0000000000	\N	2007-09-12 12:14:31.414	0	First line	\N	\N	1
1867	960	2	1	1380.0000000000	69.0000000000	20.0000000000	\N	2007-09-12 12:14:31.416	0	Second line	\N	\N	1
1868	961	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:14:31.666	0	First line	\N	\N	1
1869	961	2	1	1260.0000000000	63.0000000000	20.0000000000	\N	2007-09-12 12:14:31.669	0	Second line	\N	\N	1
1870	962	1	1	190.0000000000	19.0000000000	10.0000000000	\N	2007-09-12 12:14:31.911	0	First line	\N	\N	1
1871	962	2	1	1800.0000000000	90.0000000000	20.0000000000	\N	2007-09-12 12:14:31.913	0	Second line	\N	\N	1
1872	963	1	1	240.0000000000	24.0000000000	10.0000000000	\N	2007-09-12 12:14:32.361	0	First line	\N	\N	1
1873	963	2	1	1760.0000000000	88.0000000000	20.0000000000	\N	2007-09-12 12:14:32.368	0	Second line	\N	\N	1
1874	964	1	1	780.0000000000	78.0000000000	10.0000000000	\N	2007-09-12 12:14:32.837	0	First line	\N	\N	1
1875	964	2	1	1520.0000000000	76.0000000000	20.0000000000	\N	2007-09-12 12:14:32.85	0	Second line	\N	\N	1
1876	965	1	1	590.0000000000	59.0000000000	10.0000000000	\N	2007-09-12 12:14:33.303	0	First line	\N	\N	1
1877	965	2	1	1180.0000000000	59.0000000000	20.0000000000	\N	2007-09-12 12:14:33.31	0	Second line	\N	\N	1
1878	966	1	1	850.0000000000	85.0000000000	10.0000000000	\N	2007-09-12 12:14:33.706	0	First line	\N	\N	1
1879	966	2	1	100.0000000000	5.0000000000	20.0000000000	\N	2007-09-12 12:14:33.709	0	Second line	\N	\N	1
1880	967	1	1	270.0000000000	27.0000000000	10.0000000000	\N	2007-09-12 12:14:33.957	0	First line	\N	\N	1
1881	967	2	1	80.0000000000	4.0000000000	20.0000000000	\N	2007-09-12 12:14:33.96	0	Second line	\N	\N	1
1882	968	1	1	870.0000000000	87.0000000000	10.0000000000	\N	2007-09-12 12:14:34.198	0	First line	\N	\N	1
1883	968	2	1	960.0000000000	48.0000000000	20.0000000000	\N	2007-09-12 12:14:34.20	0	Second line	\N	\N	1
1884	969	1	1	920.0000000000	92.0000000000	10.0000000000	\N	2007-09-12 12:14:34.438	0	First line	\N	\N	1
1885	969	2	1	260.0000000000	13.0000000000	20.0000000000	\N	2007-09-12 12:14:34.44	0	Second line	\N	\N	1
1886	970	1	1	660.0000000000	66.0000000000	10.0000000000	\N	2007-09-12 12:14:34.743	0	First line	\N	\N	1
1887	970	2	1	180.0000000000	9.0000000000	20.0000000000	\N	2007-09-12 12:14:34.746	0	Second line	\N	\N	1
1888	971	1	1	430.0000000000	43.0000000000	10.0000000000	\N	2007-09-12 12:14:35.182	0	First line	\N	\N	1
1889	971	2	1	120.0000000000	6.0000000000	20.0000000000	\N	2007-09-12 12:14:35.191	0	Second line	\N	\N	1
1890	972	1	1	1000.0000000000	100.0000000000	10.0000000000	\N	2007-09-12 12:14:35.676	0	First line	\N	\N	1
1891	972	2	1	460.0000000000	23.0000000000	20.0000000000	\N	2007-09-12 12:14:35.685	0	Second line	\N	\N	1
1892	973	1	1	270.0000000000	27.0000000000	10.0000000000	\N	2007-09-12 12:14:36.156	0	First line	\N	\N	1
1893	973	2	1	1560.0000000000	78.0000000000	20.0000000000	\N	2007-09-12 12:14:36.169	0	Second line	\N	\N	1
1894	974	1	1	970.0000000000	97.0000000000	10.0000000000	\N	2007-09-12 12:14:36.439	0	First line	\N	\N	1
1895	974	2	1	300.0000000000	15.0000000000	20.0000000000	\N	2007-09-12 12:14:36.441	0	Second line	\N	\N	1
1896	975	1	1	430.0000000000	43.0000000000	10.0000000000	\N	2007-09-12 12:14:36.687	0	First line	\N	\N	1
1897	975	2	1	1400.0000000000	70.0000000000	20.0000000000	\N	2007-09-12 12:14:36.696	0	Second line	\N	\N	1
1898	976	1	1	910.0000000000	91.0000000000	10.0000000000	\N	2007-09-12 12:14:36.941	0	First line	\N	\N	1
1899	976	2	1	400.0000000000	20.0000000000	20.0000000000	\N	2007-09-12 12:14:36.943	0	Second line	\N	\N	1
1900	977	1	1	730.0000000000	73.0000000000	10.0000000000	\N	2007-09-12 12:14:37.195	0	First line	\N	\N	1
1901	977	2	1	880.0000000000	44.0000000000	20.0000000000	\N	2007-09-12 12:14:37.198	0	Second line	\N	\N	1
1902	978	1	1	590.0000000000	59.0000000000	10.0000000000	\N	2007-09-12 12:14:37.647	0	First line	\N	\N	1
1903	978	2	1	340.0000000000	17.0000000000	20.0000000000	\N	2007-09-12 12:14:37.656	0	Second line	\N	\N	1
1904	979	1	1	570.0000000000	57.0000000000	10.0000000000	\N	2007-09-12 12:14:38.098	0	First line	\N	\N	1
1905	979	2	1	280.0000000000	14.0000000000	20.0000000000	\N	2007-09-12 12:14:38.105	0	Second line	\N	\N	1
1906	980	1	1	950.0000000000	95.0000000000	10.0000000000	\N	2007-09-12 12:14:38.551	0	First line	\N	\N	1
1907	980	2	1	1320.0000000000	66.0000000000	20.0000000000	\N	2007-09-12 12:14:38.568	0	Second line	\N	\N	1
1908	981	1	1	750.0000000000	75.0000000000	10.0000000000	\N	2007-09-12 12:14:38.96	0	First line	\N	\N	1
1909	981	2	1	1600.0000000000	80.0000000000	20.0000000000	\N	2007-09-12 12:14:38.962	0	Second line	\N	\N	1
1910	982	1	1	270.0000000000	27.0000000000	10.0000000000	\N	2007-09-12 12:14:39.201	0	First line	\N	\N	1
1911	982	2	1	740.0000000000	37.0000000000	20.0000000000	\N	2007-09-12 12:14:39.203	0	Second line	\N	\N	1
1912	983	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:14:39.441	0	First line	\N	\N	1
1913	983	2	1	1300.0000000000	65.0000000000	20.0000000000	\N	2007-09-12 12:14:39.443	0	Second line	\N	\N	1
1914	984	1	1	960.0000000000	96.0000000000	10.0000000000	\N	2007-09-12 12:14:39.706	0	First line	\N	\N	1
1915	984	2	1	440.0000000000	22.0000000000	20.0000000000	\N	2007-09-12 12:14:39.708	0	Second line	\N	\N	1
1916	985	1	1	390.0000000000	39.0000000000	10.0000000000	\N	2007-09-12 12:14:40.001	0	First line	\N	\N	1
1917	985	2	1	40.0000000000	2.0000000000	20.0000000000	\N	2007-09-12 12:14:40.004	0	Second line	\N	\N	1
1918	986	1	1	260.0000000000	26.0000000000	10.0000000000	\N	2007-09-12 12:14:40.474	0	First line	\N	\N	1
1919	986	2	1	1280.0000000000	64.0000000000	20.0000000000	\N	2007-09-12 12:14:40.481	0	Second line	\N	\N	1
1920	987	1	1	860.0000000000	86.0000000000	10.0000000000	\N	2007-09-12 12:14:40.964	0	First line	\N	\N	1
1921	987	2	1	1060.0000000000	53.0000000000	20.0000000000	\N	2007-09-12 12:14:40.968	0	Second line	\N	\N	1
1922	988	1	1	90.0000000000	9.0000000000	10.0000000000	\N	2007-09-12 12:14:41.421	0	First line	\N	\N	1
1923	988	2	1	860.0000000000	43.0000000000	20.0000000000	\N	2007-09-12 12:14:41.432	0	Second line	\N	\N	1
1924	989	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:14:41.718	0	First line	\N	\N	1
1925	989	2	1	1280.0000000000	64.0000000000	20.0000000000	\N	2007-09-12 12:14:41.72	0	Second line	\N	\N	1
1926	990	1	1	280.0000000000	28.0000000000	10.0000000000	\N	2007-09-12 12:14:41.976	0	First line	\N	\N	1
1927	990	2	1	1960.0000000000	98.0000000000	20.0000000000	\N	2007-09-12 12:14:41.979	0	Second line	\N	\N	1
1928	991	1	1	860.0000000000	86.0000000000	10.0000000000	\N	2007-09-12 12:14:42.24	0	First line	\N	\N	1
1929	991	2	1	1680.0000000000	84.0000000000	20.0000000000	\N	2007-09-12 12:14:42.242	0	Second line	\N	\N	1
1930	992	1	1	790.0000000000	79.0000000000	10.0000000000	\N	2007-09-12 12:14:42.481	0	First line	\N	\N	1
1931	992	2	1	1440.0000000000	72.0000000000	20.0000000000	\N	2007-09-12 12:14:42.492	0	Second line	\N	\N	1
1932	993	1	1	470.0000000000	47.0000000000	10.0000000000	\N	2007-09-12 12:14:42.927	0	First line	\N	\N	1
1933	993	2	1	1360.0000000000	68.0000000000	20.0000000000	\N	2007-09-12 12:14:42.93	0	Second line	\N	\N	1
1934	994	1	1	60.0000000000	6.0000000000	10.0000000000	\N	2007-09-12 12:14:43.403	0	First line	\N	\N	1
1935	994	2	1	720.0000000000	36.0000000000	20.0000000000	\N	2007-09-12 12:14:43.406	0	Second line	\N	\N	1
1936	995	1	1	60.0000000000	6.0000000000	10.0000000000	\N	2007-09-12 12:14:43.865	0	First line	\N	\N	1
1937	995	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:14:43.873	0	Second line	\N	\N	1
1938	996	1	1	850.0000000000	85.0000000000	10.0000000000	\N	2007-09-12 12:14:44.28	0	First line	\N	\N	1
1939	996	2	1	1920.0000000000	96.0000000000	20.0000000000	\N	2007-09-12 12:14:44.283	0	Second line	\N	\N	1
1940	997	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:14:44.526	0	First line	\N	\N	1
1941	997	2	1	660.0000000000	33.0000000000	20.0000000000	\N	2007-09-12 12:14:44.529	0	Second line	\N	\N	1
1942	998	1	1	530.0000000000	53.0000000000	10.0000000000	\N	2007-09-12 12:14:44.784	0	First line	\N	\N	1
1943	998	2	1	1360.0000000000	68.0000000000	20.0000000000	\N	2007-09-12 12:14:44.786	0	Second line	\N	\N	1
1944	999	1	1	340.0000000000	34.0000000000	10.0000000000	\N	2007-09-12 12:14:45.042	0	First line	\N	\N	1
1945	999	2	1	1800.0000000000	90.0000000000	20.0000000000	\N	2007-09-12 12:14:45.045	0	Second line	\N	\N	1
1946	1000	1	1	160.0000000000	16.0000000000	10.0000000000	\N	2007-09-12 12:14:45.359	0	First line	\N	\N	1
1947	1000	2	1	1720.0000000000	86.0000000000	20.0000000000	\N	2007-09-12 12:14:45.365	0	Second line	\N	\N	1
1948	1001	1	1	270.0000000000	27.0000000000	10.0000000000	\N	2007-09-12 12:14:45.87	0	First line	\N	\N	1
1949	1001	2	1	1820.0000000000	91.0000000000	20.0000000000	\N	2007-09-12 12:14:45.879	0	Second line	\N	\N	1
1950	1002	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:14:46.329	0	First line	\N	\N	1
1951	1002	2	1	520.0000000000	26.0000000000	20.0000000000	\N	2007-09-12 12:14:46.333	0	Second line	\N	\N	1
1952	1003	1	1	50.0000000000	5.0000000000	10.0000000000	\N	2007-09-12 12:14:46.75	0	First line	\N	\N	1
1953	1003	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:14:46.753	0	Second line	\N	\N	1
1954	1004	1	1	50.0000000000	5.0000000000	10.0000000000	\N	2007-09-12 12:14:46.989	0	First line	\N	\N	1
1955	1004	2	1	660.0000000000	33.0000000000	20.0000000000	\N	2007-09-12 12:14:46.991	0	Second line	\N	\N	1
1956	1005	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:14:47.238	0	First line	\N	\N	1
1957	1005	2	1	480.0000000000	24.0000000000	20.0000000000	\N	2007-09-12 12:14:47.24	0	Second line	\N	\N	1
1958	1006	1	1	540.0000000000	54.0000000000	10.0000000000	\N	2007-09-12 12:14:47.493	0	First line	\N	\N	1
1959	1006	2	1	1060.0000000000	53.0000000000	20.0000000000	\N	2007-09-12 12:14:47.495	0	Second line	\N	\N	1
1960	1007	1	1	360.0000000000	36.0000000000	10.0000000000	\N	2007-09-12 12:14:47.79	0	First line	\N	\N	1
1961	1007	2	1	1060.0000000000	53.0000000000	20.0000000000	\N	2007-09-12 12:14:47.799	0	Second line	\N	\N	1
1962	1008	1	1	320.0000000000	32.0000000000	10.0000000000	\N	2007-09-12 12:14:48.258	0	First line	\N	\N	1
1963	1008	2	1	640.0000000000	32.0000000000	20.0000000000	\N	2007-09-12 12:14:48.267	0	Second line	\N	\N	1
1964	1009	1	1	330.0000000000	33.0000000000	10.0000000000	\N	2007-09-12 12:14:48.773	0	First line	\N	\N	1
1965	1009	2	1	120.0000000000	6.0000000000	20.0000000000	\N	2007-09-12 12:14:48.791	0	Second line	\N	\N	1
1966	1010	1	1	840.0000000000	84.0000000000	10.0000000000	\N	2007-09-12 12:14:49.289	0	First line	\N	\N	1
1967	1010	2	1	320.0000000000	16.0000000000	20.0000000000	\N	2007-09-12 12:14:49.291	0	Second line	\N	\N	1
1968	1011	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:14:49.535	0	First line	\N	\N	1
1969	1011	2	1	1520.0000000000	76.0000000000	20.0000000000	\N	2007-09-12 12:14:49.537	0	Second line	\N	\N	1
1970	1012	1	1	190.0000000000	19.0000000000	10.0000000000	\N	2007-09-12 12:14:49.789	0	First line	\N	\N	1
1971	1012	2	1	1600.0000000000	80.0000000000	20.0000000000	\N	2007-09-12 12:14:49.791	0	Second line	\N	\N	1
1972	1013	1	1	520.0000000000	52.0000000000	10.0000000000	\N	2007-09-12 12:14:50.029	0	First line	\N	\N	1
1973	1013	2	1	1740.0000000000	87.0000000000	20.0000000000	\N	2007-09-12 12:14:50.031	0	Second line	\N	\N	1
1974	1014	1	1	520.0000000000	52.0000000000	10.0000000000	\N	2007-09-12 12:14:50.303	0	First line	\N	\N	1
1975	1014	2	1	1420.0000000000	71.0000000000	20.0000000000	\N	2007-09-12 12:14:50.307	0	Second line	\N	\N	1
1976	1015	1	1	360.0000000000	36.0000000000	10.0000000000	\N	2007-09-12 12:14:50.77	0	First line	\N	\N	1
1977	1015	2	1	1340.0000000000	67.0000000000	20.0000000000	\N	2007-09-12 12:14:50.774	0	Second line	\N	\N	1
1978	1016	1	1	510.0000000000	51.0000000000	10.0000000000	\N	2007-09-12 12:14:51.244	0	First line	\N	\N	1
1979	1016	2	1	1360.0000000000	68.0000000000	20.0000000000	\N	2007-09-12 12:14:51.251	0	Second line	\N	\N	1
1980	1017	1	1	760.0000000000	76.0000000000	10.0000000000	\N	2007-09-12 12:14:51.73	0	First line	\N	\N	1
1981	1017	2	1	740.0000000000	37.0000000000	20.0000000000	\N	2007-09-12 12:14:51.736	0	Second line	\N	\N	1
1982	1018	1	1	260.0000000000	26.0000000000	10.0000000000	\N	2007-09-12 12:14:52.127	0	First line	\N	\N	1
1983	1018	2	1	820.0000000000	41.0000000000	20.0000000000	\N	2007-09-12 12:14:52.129	0	Second line	\N	\N	1
1984	1019	1	1	10.0000000000	1.0000000000	10.0000000000	\N	2007-09-12 12:14:52.373	0	First line	\N	\N	1
1985	1019	2	1	1460.0000000000	73.0000000000	20.0000000000	\N	2007-09-12 12:14:52.375	0	Second line	\N	\N	1
1986	1020	1	1	60.0000000000	6.0000000000	10.0000000000	\N	2007-09-12 12:14:52.617	0	First line	\N	\N	1
1987	1020	2	1	80.0000000000	4.0000000000	20.0000000000	\N	2007-09-12 12:14:52.619	0	Second line	\N	\N	1
1988	1021	1	1	250.0000000000	25.0000000000	10.0000000000	\N	2007-09-12 12:14:52.862	0	First line	\N	\N	1
1989	1021	2	1	1760.0000000000	88.0000000000	20.0000000000	\N	2007-09-12 12:14:52.864	0	Second line	\N	\N	1
1990	1022	1	1	160.0000000000	16.0000000000	10.0000000000	\N	2007-09-12 12:14:53.194	0	First line	\N	\N	1
1991	1022	2	1	2000.0000000000	100.0000000000	20.0000000000	\N	2007-09-12 12:14:53.198	0	Second line	\N	\N	1
1992	1023	1	1	150.0000000000	15.0000000000	10.0000000000	\N	2007-09-12 12:14:53.673	0	First line	\N	\N	1
1993	1023	2	1	1160.0000000000	58.0000000000	20.0000000000	\N	2007-09-12 12:14:53.687	0	Second line	\N	\N	1
1994	1024	1	1	960.0000000000	96.0000000000	10.0000000000	\N	2007-09-12 12:14:54.136	0	First line	\N	\N	1
1995	1024	2	1	920.0000000000	46.0000000000	20.0000000000	\N	2007-09-12 12:14:54.145	0	Second line	\N	\N	1
1996	1025	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:14:54.573	0	First line	\N	\N	1
1997	1025	2	1	900.0000000000	45.0000000000	20.0000000000	\N	2007-09-12 12:14:54.593	0	Second line	\N	\N	1
1998	1026	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:14:54.886	0	First line	\N	\N	1
1999	1026	2	1	600.0000000000	30.0000000000	20.0000000000	\N	2007-09-12 12:14:54.898	0	Second line	\N	\N	1
2000	1027	1	1	50.0000000000	5.0000000000	10.0000000000	\N	2007-09-12 12:14:55.139	0	First line	\N	\N	1
2001	1027	2	1	1980.0000000000	99.0000000000	20.0000000000	\N	2007-09-12 12:14:55.141	0	Second line	\N	\N	1
2002	1028	1	1	390.0000000000	39.0000000000	10.0000000000	\N	2007-09-12 12:14:55.382	0	First line	\N	\N	1
2003	1028	2	1	1020.0000000000	51.0000000000	20.0000000000	\N	2007-09-12 12:14:55.384	0	Second line	\N	\N	1
2004	1029	1	1	90.0000000000	9.0000000000	10.0000000000	\N	2007-09-12 12:14:55.635	0	First line	\N	\N	1
2005	1029	2	1	640.0000000000	32.0000000000	20.0000000000	\N	2007-09-12 12:14:55.638	0	Second line	\N	\N	1
2006	1030	1	1	220.0000000000	22.0000000000	10.0000000000	\N	2007-09-12 12:14:56.071	0	First line	\N	\N	1
2007	1030	2	1	600.0000000000	30.0000000000	20.0000000000	\N	2007-09-12 12:14:56.082	0	Second line	\N	\N	1
2008	1031	1	1	640.0000000000	64.0000000000	10.0000000000	\N	2007-09-12 12:14:56.555	0	First line	\N	\N	1
2009	1031	2	1	1860.0000000000	93.0000000000	20.0000000000	\N	2007-09-12 12:14:56.559	0	Second line	\N	\N	1
2010	1032	1	1	620.0000000000	62.0000000000	10.0000000000	\N	2007-09-12 12:14:57.045	0	First line	\N	\N	1
2011	1032	2	1	1480.0000000000	74.0000000000	20.0000000000	\N	2007-09-12 12:14:57.055	0	Second line	\N	\N	1
2012	1033	1	1	980.0000000000	98.0000000000	10.0000000000	\N	2007-09-12 12:14:57.333	0	First line	\N	\N	1
2013	1033	2	1	640.0000000000	32.0000000000	20.0000000000	\N	2007-09-12 12:14:57.335	0	Second line	\N	\N	1
2014	1034	1	1	210.0000000000	21.0000000000	10.0000000000	\N	2007-09-12 12:14:57.583	0	First line	\N	\N	1
2015	1034	2	1	60.0000000000	3.0000000000	20.0000000000	\N	2007-09-12 12:14:57.585	0	Second line	\N	\N	1
2016	1035	1	1	20.0000000000	2.0000000000	10.0000000000	\N	2007-09-12 12:14:57.831	0	First line	\N	\N	1
2017	1035	2	1	1840.0000000000	92.0000000000	20.0000000000	\N	2007-09-12 12:14:57.833	0	Second line	\N	\N	1
2018	1036	1	1	720.0000000000	72.0000000000	10.0000000000	\N	2007-09-12 12:14:58.094	0	First line	\N	\N	1
2019	1036	2	1	620.0000000000	31.0000000000	20.0000000000	\N	2007-09-12 12:14:58.096	0	Second line	\N	\N	1
2020	1037	1	1	910.0000000000	91.0000000000	10.0000000000	\N	2007-09-12 12:14:58.468	0	First line	\N	\N	1
2021	1037	2	1	1400.0000000000	70.0000000000	20.0000000000	\N	2007-09-12 12:14:58.474	0	Second line	\N	\N	1
2022	1038	1	1	250.0000000000	25.0000000000	10.0000000000	\N	2007-09-12 12:14:58.939	0	First line	\N	\N	1
2023	1038	2	1	140.0000000000	7.0000000000	20.0000000000	\N	2007-09-12 12:14:58.951	0	Second line	\N	\N	1
2024	1039	1	1	300.0000000000	30.0000000000	10.0000000000	\N	2007-09-12 12:14:59.431	0	First line	\N	\N	1
2025	1039	2	1	80.0000000000	4.0000000000	20.0000000000	\N	2007-09-12 12:14:59.441	0	Second line	\N	\N	1
2026	1040	1	1	530.0000000000	53.0000000000	10.0000000000	\N	2007-09-12 12:14:59.884	0	First line	\N	\N	1
2027	1040	2	1	300.0000000000	15.0000000000	20.0000000000	\N	2007-09-12 12:14:59.89	0	Second line	\N	\N	1
2028	1041	1	1	760.0000000000	76.0000000000	10.0000000000	\N	2007-09-12 12:15:00.165	0	First line	\N	\N	1
2029	1041	2	1	680.0000000000	34.0000000000	20.0000000000	\N	2007-09-12 12:15:00.168	0	Second line	\N	\N	1
2030	1042	1	1	980.0000000000	98.0000000000	10.0000000000	\N	2007-09-12 12:15:00.405	0	First line	\N	\N	1
2031	1042	2	1	60.0000000000	3.0000000000	20.0000000000	\N	2007-09-12 12:15:00.407	0	Second line	\N	\N	1
2032	1043	1	1	460.0000000000	46.0000000000	10.0000000000	\N	2007-09-12 12:15:00.66	0	First line	\N	\N	1
2033	1043	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:15:00.663	0	Second line	\N	\N	1
2034	1044	1	1	140.0000000000	14.0000000000	10.0000000000	\N	2007-09-12 12:15:00.91	0	First line	\N	\N	1
2035	1044	2	1	60.0000000000	3.0000000000	20.0000000000	\N	2007-09-12 12:15:00.912	0	Second line	\N	\N	1
2036	1045	1	1	910.0000000000	91.0000000000	10.0000000000	\N	2007-09-12 12:15:01.359	0	First line	\N	\N	1
2037	1045	2	1	1880.0000000000	94.0000000000	20.0000000000	\N	2007-09-12 12:15:01.368	0	Second line	\N	\N	1
2038	1046	1	1	560.0000000000	56.0000000000	10.0000000000	\N	2007-09-12 12:15:01.816	0	First line	\N	\N	1
2039	1046	2	1	760.0000000000	38.0000000000	20.0000000000	\N	2007-09-12 12:15:01.82	0	Second line	\N	\N	1
2040	1047	1	1	760.0000000000	76.0000000000	10.0000000000	\N	2007-09-12 12:15:02.334	0	First line	\N	\N	1
2041	1047	2	1	420.0000000000	21.0000000000	20.0000000000	\N	2007-09-12 12:15:02.338	0	Second line	\N	\N	1
2042	1048	1	1	350.0000000000	35.0000000000	10.0000000000	\N	2007-09-12 12:15:02.74	0	First line	\N	\N	1
2043	1048	2	1	1660.0000000000	83.0000000000	20.0000000000	\N	2007-09-12 12:15:02.743	0	Second line	\N	\N	1
2044	1049	1	1	250.0000000000	25.0000000000	10.0000000000	\N	2007-09-12 12:15:02.988	0	First line	\N	\N	1
2045	1049	2	1	1160.0000000000	58.0000000000	20.0000000000	\N	2007-09-12 12:15:02.991	0	Second line	\N	\N	1
2046	1050	1	1	120.0000000000	12.0000000000	10.0000000000	\N	2007-09-12 12:15:03.234	0	First line	\N	\N	1
2047	1050	2	1	1140.0000000000	57.0000000000	20.0000000000	\N	2007-09-12 12:15:03.236	0	Second line	\N	\N	1
2048	1051	1	1	260.0000000000	26.0000000000	10.0000000000	\N	2007-09-12 12:15:03.48	0	First line	\N	\N	1
2049	1051	2	1	200.0000000000	10.0000000000	20.0000000000	\N	2007-09-12 12:15:03.482	0	Second line	\N	\N	1
2050	1052	1	1	290.0000000000	29.0000000000	10.0000000000	\N	2007-09-12 12:15:03.814	0	First line	\N	\N	1
2051	1052	2	1	860.0000000000	43.0000000000	20.0000000000	\N	2007-09-12 12:15:03.818	0	Second line	\N	\N	1
2052	1053	1	1	30.0000000000	3.0000000000	10.0000000000	\N	2007-09-12 12:15:04.337	0	First line	\N	\N	1
2053	1053	2	1	480.0000000000	24.0000000000	20.0000000000	\N	2007-09-12 12:15:04.345	0	Second line	\N	\N	1
2054	1054	1	1	820.0000000000	82.0000000000	10.0000000000	\N	2007-09-12 12:15:04.798	0	First line	\N	\N	1
2055	1054	2	1	1540.0000000000	77.0000000000	20.0000000000	\N	2007-09-12 12:15:04.804	0	Second line	\N	\N	1
2056	1055	3	1	15.0000000000	1.0000000000	15.0000000000	0	2007-12-28 14:47:08.524	0	Coffee - one per day - Monthly	\N	\N	1
2066	1065	3	1	15.0000000000	1.0000000000	15.0000000000	0	2008-03-06 09:19:01.556	0	Coffee - one per day - Monthly	\N	\N	1
207600	107500	251	3	15.0000000000	1.0000000000	15.0000000000	0	2009-07-20 16:41:52.245	0	Lemonade plan - Setup Fee	20	d85d1780-1594-4c25-8980-39ddaf2e15ce	5
207700	107600	2	1	20.0000000000	1.0000000000	20.0000000000	0	2009-11-04 17:37:51.128	0	Lemonade - all you can drink monthly	20	ca3ebd8e-3f51-4f40-aead-e42a2c288f1b	2
207900	107700	2700	1	25.0000000000	1.0000000000	25.0000000000	\N	2009-12-17 13:21:16.192	0	Long Distance Plan A - fixed rate	21	\N	0
207901	107701	2701	1	40.0000000000	1.0000000000	40.0000000000	\N	2009-12-17 13:22:02.115	0	Long Distance Plan B - fixed rate	21	\N	0
207902	107702	2702	1	30.0000000000	1.0000000000	30.0000000000	\N	2009-12-17 13:22:31.627	0	Long Distance Plan - 1000 min included	21	\N	0
208000	107800	2602	1	3.5000000000	1.0000000000	3.5000000000	\N	2009-12-21 13:17:00.14	0	Lemonade 	21	\N	0
208001	107801	2602	1	3.5000000000	1.0000000000	3.5000000000	\N	2009-12-21 13:17:58.45	0	Lemonade 	21	\N	0
208002	107802	2602	1	3.5000000000	1.0000000000	3.5000000000	\N	2009-12-21 13:18:17.379	0	Lemonade 	21	\N	0
208003	107803	2602	1	3.5000000000	1.0000000000	3.5000000000	\N	2009-12-21 13:18:59.123	0	Lemonade 	21	\N	0
208004	107804	2602	1	3.5000000000	1.0000000000	3.5000000000	\N	2009-12-21 13:19:17.927	0	Lemonade 	21	\N	0
208011	107811	2602	1	3.5000000000	1.0000000000	3.5000000000	\N	2009-12-21 13:21:42.292	0	Lemonade 	21	\N	0
208005	107805	2602	1	3.5000000000	1.0000000000	3.5000000000	\N	2009-12-21 13:19:38.061	0	Lemonade 	21	\N	0
208006	107806	2602	1	3.5000000000	1.0000000000	3.5000000000	\N	2009-12-21 13:19:56.159	0	Lemonade 	21	\N	0
208009	107809	2602	1	3.5000000000	1.0000000000	3.5000000000	\N	2009-12-21 13:21:03.215	0	Lemonade 	21	\N	0
208007	107807	2602	1	3.5000000000	1.0000000000	3.5000000000	\N	2009-12-21 13:20:23.277	0	Lemonade 	21	\N	0
208008	107808	2602	1	3.5000000000	1.0000000000	3.5000000000	\N	2009-12-21 13:20:44.579	0	Lemonade 	21	\N	0
208010	107810	2602	1	3.5000000000	1.0000000000	3.5000000000	\N	2009-12-21 13:21:21.348	0	Lemonade 	21	\N	0
208100	107900	3201	1	125.0000000000	2500.0000000000	0.0500000000	\N	2011-02-15 16:25:57.921	0	Traffic (Minute)	21	\N	1
208200	108000	3103	1	2500.0000000000	100.0000000000	25.0000000000	\N	2011-02-18 13:01:04.096	0	Voice Modem - Monthly rental	21	\N	1
\.


--
-- Data for Name: order_line_type; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY order_line_type (id, editable) FROM stdin;
1	1
2	0
3	0
\.


--
-- Data for Name: order_period; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY order_period (id, entity_id, value, unit_id, optlock) FROM stdin;
1	\N	\N	\N	1
2	1	1	1	1
3	2	1	1	1
\.


--
-- Data for Name: order_process; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY order_process (id, order_id, invoice_id, billing_process_id, periods_included, period_start, period_end, is_review, origin, optlock) FROM stdin;
1	1	1	\N	1	\N	\N	0	2	1
2	2	2	\N	1	\N	\N	0	2	1
3	3	3	\N	1	\N	\N	0	2	1
4	4	4	\N	1	2006-07-26	2006-08-26	0	2	1
5	4	5	2	1	2006-08-26	2006-09-26	0	1	1
15	4	15	12	1	2006-09-26	2006-10-26	0	1	1
25	4	25	22	1	2006-10-26	2006-11-26	1	1	1
35	15	35	\N	1	\N	\N	0	2	1
45	25	45	2	1	\N	\N	0	2	1
55	35	55	\N	1	2006-10-01	2006-11-01	0	2	1
65	45	65	\N	1	2006-09-26	2006-10-26	0	2	1
75	5	75	\N	1	2006-12-07	2007-01-07	0	2	1
8500	107500	8500	\N	1	\N	\N	0	2	0
8600	107900	8600	\N	1	2011-02-15	2011-02-15	0	2	0
\.


--
-- Data for Name: paper_invoice_batch; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY paper_invoice_batch (id, total_invoices, delivery_date, is_self_managed, optlock) FROM stdin;
\.


--
-- Data for Name: partner; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY partner (id, user_id, balance, total_payments, total_refunds, total_payouts, percentage_rate, referral_fee, fee_currency_id, one_time, period_unit_id, period_value, next_payout_date, due_payout, automatic_process, related_clerk, optlock) FROM stdin;
10	10740	0.0000000000	0.0000000000	0.0000000000	0.0000000000	10.0000000000	0.0000000000	1	0	1	1	2009-04-01	0.0000000000	1	1	1
12	10742	0.0000000000	0.0000000000	0.0000000000	0.0000000000	10.0000000000	0.0000000000	1	0	3	10	2009-03-15	0.0000000000	1	1	1
11	10741	0.0000000000	0.0000000000	0.0000000000	0.0000000000	0.0000000000	1.0000000000	1	1	1	1	2009-03-01	0.0000000000	0	1	2
\.


--
-- Data for Name: partner_payout; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY partner_payout (id, starting_date, ending_date, payments_amount, refunds_amount, balance_left, payment_id, partner_id, optlock) FROM stdin;
\.


--
-- Data for Name: partner_range; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY partner_range (id, partner_id, percentage_rate, referral_fee, range_from, range_to, optlock) FROM stdin;
10	11	\N	2.2999999523	1	10	0
11	11	\N	4.6999998093	11	20	0
\.


--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY payment (id, user_id, attempt, result_id, amount, create_datetime, update_datetime, payment_date, method_id, credit_card_id, deleted, is_refund, is_preauth, payment_id, currency_id, payout_id, ach_id, balance, optlock, payment_period, payment_notes) FROM stdin;
1	2	1	4	20.0000000000	2006-07-26 09:44:49.443	2006-12-21 11:04:58.113	2006-07-26	1	\N	1	0	0	\N	1	\N	\N	0.0000000000	1	\N	\N
2	2	1	4	7.0000000000	2006-07-26 09:47:16.694	2006-12-21 11:04:51.974	2006-07-26	1	\N	1	0	0	\N	1	\N	\N	0.0000000000	1	\N	\N
3	2	1	4	10.0000000000	2006-07-26 09:47:41.67	2006-12-21 11:04:44.875	2006-07-26	1	\N	1	0	0	\N	1	\N	\N	0.0000000000	1	\N	\N
4	2	1	4	20.0000000000	2006-07-26 09:51:14.346	2006-12-21 11:04:36.935	2006-07-26	2	1	1	0	0	\N	1	\N	\N	0.0000000000	1	\N	\N
5	2	1	4	10.0000000000	2006-07-26 09:52:08.855	\N	2006-07-26	2	2	1	1	0	4	1	\N	\N	0.0000000000	1	\N	\N
6	2	1	4	95.0000000000	2006-12-21 11:08:11.878	\N	2006-12-21	1	\N	1	0	0	\N	1	\N	\N	0.0000000000	1	\N	\N
1600	10746	1	4	100.0000000000	2009-03-25 00:00:00	\N	2009-03-25	1	\N	1	0	0	\N	1	\N	\N	100.0000000000	1	\N	\N
1601	10746	1	4	50.0000000000	2009-03-27 00:00:00	\N	2009-03-27	1	\N	1	1	0	\N	1	\N	\N	0.0000000000	1	\N	\N
1700	10747	1	4	50.0000000000	2009-03-10 00:00:00	\N	2009-03-10	1	\N	1	0	0	\N	1	\N	\N	50.0000000000	1	\N	\N
1800	10748	1	4	25.0000000000	2009-03-13 00:00:00	\N	2009-03-13	1	\N	1	0	0	\N	1	\N	\N	25.0000000000	1	\N	\N
1900	10791	1	4	125.0000000000	2011-02-18 11:21:32.283	\N	2011-02-18	2	101500	0	0	0	\N	12	\N	\N	0.0000000000	1	\N	
\.


--
-- Data for Name: payment_authorization; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY payment_authorization (id, payment_id, processor, code1, code2, code3, approval_code, avs, transaction_id, md5, card_code, create_datetime, response_message, optlock) FROM stdin;
\.


--
-- Data for Name: payment_info_cheque; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY payment_info_cheque (id, payment_id, bank, cheque_number, cheque_date, optlock) FROM stdin;
1	1	Gloin's Gold	123-123-123	2006-09-10	1
2	2	Gold Miners Ltd.	123-123-123	2005-10-10	1
3	3	Gold Miners Ltd.	123-123-145	2006-12-12	1
4	6	Bree First Bank	123-21312-A	2006-10-10	1
1400	1600	ABC Bank	213987213987	2009-03-18	0
1401	1601	ABC Bank	497834095830	2009-03-25	0
1500	1700	ABC Bank	485740398420	2009-03-06	0
1600	1800	ABC Bank	875939859305	2009-03-07	0
\.


--
-- Data for Name: payment_invoice; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY payment_invoice (id, payment_id, invoice_id, amount, create_datetime, optlock) FROM stdin;
1	6	15	95.0000000000	2006-12-21 11:08:11.928	1
100	1900	8600	125.0000000000	2011-02-18 11:21:32.626	0
\.


--
-- Data for Name: payment_method; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY payment_method (id) FROM stdin;
1
2
3
4
5
6
7
8
9
\.


--
-- Data for Name: payment_result; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY payment_result (id) FROM stdin;
1
2
3
4
\.


--
-- Data for Name: period_unit; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY period_unit (id) FROM stdin;
1
2
3
4
\.


--
-- Data for Name: permission; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY permission (id, type_id, foreign_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	2	\N
8	2	\N
9	2	\N
10	2	\N
11	2	\N
12	3	\N
13	3	\N
14	3	\N
15	3	\N
16	3	\N
17	3	\N
18	3	\N
19	1	7
20	3	\N
21	3	\N
22	1	8
23	1	9
24	1	10
25	1	11
26	1	12
27	1	13
28	1	14
29	1	15
30	1	16
31	1	17
32	1	18
33	1	19
34	4	\N
35	1	20
36	1	21
37	1	22
38	1	23
39	1	24
40	1	25
41	1	26
42	1	27
43	1	28
44	1	29
45	1	30
46	1	31
47	1	32
48	1	33
49	1	34
50	1	35
51	1	36
52	1	37
53	1	38
54	1	39
55	1	40
56	1	41
57	1	42
58	1	43
59	1	44
60	1	45
61	1	46
62	1	47
63	1	48
64	1	49
65	1	50
66	1	51
67	5	1
68	5	2
69	5	3
70	5	4
71	5	5
72	5	6
73	5	7
74	5	8
75	5	9
76	5	10
77	1	52
78	1	53
79	1	54
80	1	55
81	3	\N
82	3	\N
83	1	56
84	5	11
85	1	57
86	1	6
87	1	59
88	1	60
89	1	61
90	1	62
91	1	63
92	1	64
93	1	65
94	1	66
95	1	67
96	1	68
97	1	69
98	1	70
99	5	12
100	5	13
101	5	14
102	5	15
103	5	16
104	1	71
105	1	72
106	1	73
107	1	74
108	6	\N
109	1	75
110	1	76
111	5	17
112	5	18
113	7	\N
114	3	\N
115	2	\N
116	1	77
117	1	78
118	1	79
119	1	80
120	8	\N
122	5	19
123	1	82
124	1	81
125	1	83
126	1	85
127	1	84
128	1	86
129	1	87
130	1	88
131	1	89
132	1	90
133	1	91
134	3	\N
135	1	92
136	1	93
137	9	\N
138	1	94
139	1	95
140	1	96
145	3	\N
146	1	97
\.


--
-- Data for Name: permission_role_map; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY permission_role_map (permission_id, role_id) FROM stdin;
\.


--
-- Data for Name: permission_type; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY permission_type (id, description) FROM stdin;
1	Menu option
2	User creation
3	User edition
4	Item edition
5	Reports
6	Orders
7	Inovices
8	Web Services
9	Server Access
\.


--
-- Data for Name: permission_user; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY permission_user (permission_id, user_id, is_grant, id) FROM stdin;
120	1	1	1
137	1	1	2
120	12	1	3
\.


--
-- Data for Name: plan; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY plan (id, item_id, description, period_id) FROM stdin;
200	3500	Moving device, incremental pricing, combination subscription and usage fee, roaming, account setup fee	2
\.


--
-- Data for Name: plan_item; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY plan_item (id, plan_id, item_id, price_model_id, precedence, bundled_quantity, period_id) FROM stdin;
200	200	3400	2501	-1	1.0000000000	1
201	200	3406	2502	-1	0.0000000000	2
\.


--
-- Data for Name: pluggable_task; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY pluggable_task (id, entity_id, type_id, processing_order, optlock, notes) FROM stdin;
2	1	3	1	1	\N
3	1	38	2	2	\N
4	1	5	1	1	\N
5	1	6	1	1	\N
6	1	37	1	2	\N
7	1	36	1	1	\N
8	1	10	1	1	\N
10	2	1	1	1	\N
11	2	3	1	1	\N
12	2	4	2	1	\N
13	2	5	1	1	\N
14	2	6	1	1	\N
15	2	7	1	1	\N
16	2	9	1	1	\N
17	2	10	1	1	\N
18	2	12	2	1	\N
23	1	23	1	1	\N
420	1	33	1	1	\N
421	1	32	1	3	\N
431	1	1	2	1	\N
480	1	44	1	1	\N
500	1	47	1	1	\N
510	1	48	2	1	\N
530	1	50	3	1	\N
550	1	55	1	1	\N
560	1	56	2	3	\N
571	1	71	1	1	\N
580	2	58	1	1	\N
590	2	63	1	1	\N
410	1	79	1	1	\N
572	1	73	2	0	\N
6020	1	44	1	1	\N
6030	1	81	1	1	\N
6040	1	78	1	4	\N
6050	1	82	2	7	\N
9	1	12	2	3	
20	1	21	1	2	A plug-in for testing only, it does not send any requests to any real payment gateway
6060	1	28	1	1	
\.


--
-- Data for Name: pluggable_task_parameter; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY pluggable_task_parameter (id, task_id, name, int_value, str_value, float_value, optlock) FROM stdin;
2	7	smtp_server	\N		\N	1
3	7	from	\N	admin@prancingpony.me	\N	1
4	7	username	\N		\N	1
5	7	password	\N		\N	1
6	7	port	\N		\N	1
7	7	reply_to	\N		\N	1
8	7	bcc_to	\N		\N	1
9	7	from_name	\N	Prancing Pony	\N	1
10	18	design	\N	simple_invoice_b2b	\N	1
11	16	smtp_server	\N	\N	\N	1
12	16	from	\N	boss@mordor.com	\N	1
13	16	username	\N	\N	\N	1
14	16	password	\N	\N	\N	1
15	16	port	\N	\N	\N	1
16	16	reply_to	\N	\N	\N	1
17	16	bcc_to	\N	\N	\N	1
18	16	from_name	\N	Mordor Inc.	\N	1
24	20	all	\N	yes	\N	1
540	421	format_file	\N	asterisk.xml	\N	1
550	421	suffix	\N	csv	\N	1
551	421	batch_size	\N	100	\N	1
690	23	item_type_id	\N	1	\N	1
700	510	username	\N	test-username	\N	1
710	510	password	\N	test-password	\N	1
720	510	remove	\N	VOID	\N	1
760	530	loginUser	\N	test-username	\N	1
770	530	loginPassword	\N	test-password	\N	1
780	530	portalId	\N	test-portalId	\N	1
790	530	applicationId	\N	test-applicationId	\N	1
800	530	bnet	\N	test-bnet	\N	1
8200	560	file	\N	ValidatePurchaseRules.pkg	\N	1
8303	580	contactType	2	\N	\N	1
8304	580	externalSavingPluginId	590	\N	\N	1
580	420	file	\N	Mediation.pkg ItemsRules.pkg PricingRules.pkg RateCard.pkg	\N	1
8305	572	url	\N	jdbc:postgresql://localhost:5432/jbilling_test	\N	1
8306	572	username	\N	jbilling	\N	1
830700	6020	table_name	\N	cdrentries	\N	1
830701	6020	key_column_name	\N	accountcode	\N	1
830702	6020	driver	\N	org.postgresql.Driver	\N	1
830703	6020	url	\N	jdbc:postgresql://localhost:5432/jbilling_test	\N	1
830704	6020	username	\N	jbilling	\N	1
830705	6020	password	\N		\N	1
830706	6020	timestamp_column_name	\N	ts	\N	1
830800	6040	config_filename	\N	rules-generator-config.xml	\N	1
830801	6040	output_filename	\N	InternalEventsRulesTask520.pkg	\N	1
830802	6040	template_filename	\N	rules-generator-template-integration-test.vm	\N	1
831200	6050	start_time	\N	20100728-0000	\N	1
831300	9	sql_query	\N	true	\N	0
831301	9	language	\N		\N	0
1	9	design	\N	telbru_invoice	\N	3
831400	20	name_prefix	\N		\N	0
831401	20	code	\N		\N	0
831402	20	accept-ach	\N		\N	0
35	20	processor_name	\N	Test Only Processor	\N	2
\.


--
-- Data for Name: pluggable_task_type; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY pluggable_task_type (id, category_id, class_name, min_parameters) FROM stdin;
1	1	com.sapienter.jbilling.server.pluggableTask.BasicLineTotalTask	0
2	1	com.sapienter.jbilling.server.pluggableTask.GSTTaxTask	2
3	4	com.sapienter.jbilling.server.pluggableTask.CalculateDueDate	0
4	4	com.sapienter.jbilling.server.pluggableTask.BasicCompositionTask	0
5	2	com.sapienter.jbilling.server.pluggableTask.BasicOrderFilterTask	0
6	3	com.sapienter.jbilling.server.pluggableTask.BasicInvoiceFilterTask	0
7	5	com.sapienter.jbilling.server.pluggableTask.BasicOrderPeriodTask	0
8	6	com.sapienter.jbilling.server.pluggableTask.PaymentAuthorizeNetTask	2
9	7	com.sapienter.jbilling.server.pluggableTask.BasicEmailNotificationTask	6
10	8	com.sapienter.jbilling.server.pluggableTask.BasicPaymentInfoTask	0
11	6	com.sapienter.jbilling.server.pluggableTask.PaymentPartnerTestTask	0
12	7	com.sapienter.jbilling.server.pluggableTask.PaperInvoiceNotificationTask	1
13	4	com.sapienter.jbilling.server.pluggableTask.CalculateDueDateDfFm	0
14	3	com.sapienter.jbilling.server.pluggableTask.NoInvoiceFilterTask	0
15	17	com.sapienter.jbilling.server.pluggableTask.BasicPenaltyTask	2
16	2	com.sapienter.jbilling.server.pluggableTask.OrderFilterAnticipatedTask	0
17	5	com.sapienter.jbilling.server.pluggableTask.OrderPeriodAnticipateTask	0
18	6	com.sapienter.jbilling.server.pluggableTask.PaymentBitMoversTask	0
19	6	com.sapienter.jbilling.server.pluggableTask.PaymentEmailAuthorizeNetTask	1
20	10	com.sapienter.jbilling.server.pluggableTask.ProcessorEmailAlarmTask	3
21	6	com.sapienter.jbilling.server.pluggableTask.PaymentFakeTask	0
23	11	com.sapienter.jbilling.server.user.tasks.BasicSubscriptionStatusManagerTask	0
24	6	com.sapienter.jbilling.server.user.tasks.PaymentACHCommerceTask	5
25	12	com.sapienter.jbilling.server.payment.tasks.NoAsyncParameters	0
26	12	com.sapienter.jbilling.server.payment.tasks.RouterAsyncParameters	0
28	13	com.sapienter.jbilling.server.item.tasks.BasicItemManager	0
29	13	com.sapienter.jbilling.server.item.tasks.RulesItemManager	0
30	1	com.sapienter.jbilling.server.order.task.RulesLineTotalTask	0
31	14	com.sapienter.jbilling.server.item.tasks.RulesPricingTask	0
32	15	com.sapienter.jbilling.server.mediation.task.SeparatorFileReader	1
33	16	com.sapienter.jbilling.server.mediation.task.RulesMediationTask	0
34	15	com.sapienter.jbilling.server.mediation.task.FixedFileReader	1
35	8	com.sapienter.jbilling.server.user.tasks.PaymentInfoNoValidateTask	0
36	7	com.sapienter.jbilling.server.notification.task.TestNotificationTask	0
37	5	com.sapienter.jbilling.server.process.task.ProRateOrderPeriodTask	0
38	4	com.sapienter.jbilling.server.process.task.DailyProRateCompositionTask	0
39	6	com.sapienter.jbilling.server.payment.tasks.PaymentAtlasTask	2
40	17	com.sapienter.jbilling.server.order.task.RefundOnCancelTask	0
41	17	com.sapienter.jbilling.server.order.task.CancellationFeeRulesTask	0
42	6	com.sapienter.jbilling.server.payment.tasks.PaymentFilterTask	0
43	17	com.sapienter.jbilling.server.payment.blacklist.tasks.BlacklistUserStatusTask	0
44	15	com.sapienter.jbilling.server.mediation.task.JDBCReader	0
45	15	com.sapienter.jbilling.server.mediation.task.MySQLReader	0
46	17	com.sapienter.jbilling.server.provisioning.task.ProvisioningCommandsRulesTask	0
47	18	com.sapienter.jbilling.server.provisioning.task.TestExternalProvisioningTask	0
22	6	com.sapienter.jbilling.server.payment.tasks.PaymentRouterCCFTask	2
48	18	com.sapienter.jbilling.server.provisioning.task.CAIProvisioningTask	2
49	6	com.sapienter.jbilling.server.payment.tasks.PaymentRouterCurrencyTask	2
50	18	com.sapienter.jbilling.server.provisioning.task.MMSCProvisioningTask	5
51	3	com.sapienter.jbilling.server.invoice.task.NegativeBalanceInvoiceFilterTask	0
52	17	com.sapienter.jbilling.server.invoice.task.FileInvoiceExportTask	1
53	17	com.sapienter.jbilling.server.system.event.task.InternalEventsRulesTask	0
54	17	com.sapienter.jbilling.server.user.balance.DynamicBalanceManagerTask	0
55	19	com.sapienter.jbilling.server.user.tasks.UserBalanceValidatePurchaseTask	0
56	19	com.sapienter.jbilling.server.user.tasks.RulesValidatePurchaseTask	0
57	6	com.sapienter.jbilling.server.payment.tasks.PaymentsGatewayTask	4
58	17	com.sapienter.jbilling.server.payment.tasks.SaveCreditCardExternallyTask	1
59	13	com.sapienter.jbilling.server.order.task.RulesItemManager2	0
60	1	com.sapienter.jbilling.server.order.task.RulesLineTotalTask2	0
61	14	com.sapienter.jbilling.server.item.tasks.RulesPricingTask2	0
63	6	com.sapienter.jbilling.server.pluggableTask.PaymentFakeExternalStorage	0
64	6	com.sapienter.jbilling.server.payment.tasks.PaymentWorldPayTask	3
65	6	com.sapienter.jbilling.server.payment.tasks.PaymentWorldPayExternalTask	3
66	17	com.sapienter.jbilling.server.user.tasks.AutoRechargeTask	0
67	6	com.sapienter.jbilling.server.payment.tasks.PaymentBeanstreamTask	3
68	6	com.sapienter.jbilling.server.payment.tasks.PaymentSageTask	2
69	20	com.sapienter.jbilling.server.process.task.BasicBillingProcessFilterTask	0
70	20	com.sapienter.jbilling.server.process.task.BillableUsersBillingProcessFilterTask	0
71	21	com.sapienter.jbilling.server.mediation.task.SaveToFileMediationErrorHandler	0
73	21	com.sapienter.jbilling.server.mediation.task.SaveToJDBCMediationErrorHandler	1
75	6	com.sapienter.jbilling.server.payment.tasks.PaymentPaypalExternalTask	3
76	6	com.sapienter.jbilling.server.payment.tasks.PaymentAuthorizeNetCIMTask	2
77	6	com.sapienter.jbilling.server.payment.tasks.PaymentMethodRouterTask	4
78	23	com.sapienter.jbilling.server.rule.task.VelocityRulesGeneratorTask	2
81	22	com.sapienter.jbilling.server.mediation.task.MediationProcessTask	0
82	22	com.sapienter.jbilling.server.billing.task.BillingProcessTask	1
79	14	com.sapienter.jbilling.server.pricing.tasks.PriceModelPricingTask	0
80	14	com.sapienter.jbilling.server.pricing.tasks.TieredPriceModelPricingTask	0
84	17	com.sapienter.jbilling.server.payment.tasks.SaveACHExternallyTask	1
85	20	com.sapienter.jbilling.server.process.task.BillableUserOrdersBillingProcessFilterTask	0
86	17	com.sapienter.jbilling.server.item.tasks.ItemChangesExternalTask	0
87	17	com.sapienter.jbilling.server.order.task.PooledTarrifPlanTask	0
\.


--
-- Data for Name: pluggable_task_type_category; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY pluggable_task_type_category (id, interface_name) FROM stdin;
1	com.sapienter.jbilling.server.pluggableTask.OrderProcessingTask
2	com.sapienter.jbilling.server.pluggableTask.OrderFilterTask
3	com.sapienter.jbilling.server.pluggableTask.InvoiceFilterTask
4	com.sapienter.jbilling.server.pluggableTask.InvoiceCompositionTask
5	com.sapienter.jbilling.server.pluggableTask.OrderPeriodTask
6	com.sapienter.jbilling.server.pluggableTask.PaymentTask
7	com.sapienter.jbilling.server.pluggableTask.NotificationTask
8	com.sapienter.jbilling.server.pluggableTask.PaymentInfoTask
9	com.sapienter.jbilling.server.pluggableTask.PenaltyTask
10	com.sapienter.jbilling.server.pluggableTask.ProcessorAlarm
11	com.sapienter.jbilling.server.user.tasks.ISubscriptionStatusManager
12	com.sapienter.jbilling.server.payment.tasks.IAsyncPaymentParameters
13	com.sapienter.jbilling.server.item.tasks.IItemPurchaseManager
14	com.sapienter.jbilling.server.item.tasks.IPricing
15	com.sapienter.jbilling.server.mediation.task.IMediationReader
16	com.sapienter.jbilling.server.mediation.task.IMediationProcess
17	com.sapienter.jbilling.server.system.event.task.IInternalEventsTask
18	com.sapienter.jbilling.server.provisioning.task.IExternalProvisioning
19	com.sapienter.jbilling.server.user.tasks.IValidatePurchaseTask
20	com.sapienter.jbilling.server.process.task.IBillingProcessFilterTask
21	com.sapienter.jbilling.server.mediation.task.IMediationErrorHandler
22	com.sapienter.jbilling.server.process.task.IScheduledTask
23	com.sapienter.jbilling.server.rule.task.IRulesGenerator
\.


--
-- Data for Name: preference; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY preference (id, type_id, table_id, foreign_id, int_value, str_value, float_value) FROM stdin;
1	1	5	1	0	\N	\N
2	2	5	1	\N	/billing/css/jbilling.css	\N
3	3	5	1	\N	/billing/graphics/jbilling.jpg	\N
4	4	5	1	5	\N	\N
5	5	5	1	\N	\N	10.0000000000
6	6	5	1	\N	\N	0.0000000000
7	7	5	1	0	\N	\N
8	8	5	1	1	\N	\N
9	9	5	1	1	\N	\N
10	10	5	1	0	\N	\N
11	11	5	1	1	\N	\N
12	12	5	1	1	\N	\N
13	13	5	1	1	\N	\N
14	14	5	1	0	\N	\N
25	1	5	2	0	\N	\N
26	2	5	2	\N	/billing/css/jbilling.css	\N
27	3	5	2	\N	/billing/graphics/jbilling.jpg	\N
28	4	5	2	5	\N	\N
29	5	5	2	\N	\N	10.0000000000
30	6	5	2	\N	\N	0.0000000000
31	7	5	2	0	\N	\N
32	8	5	2	1	\N	\N
33	9	5	2	1	\N	\N
34	10	5	2	0	\N	\N
35	11	5	2	12	\N	\N
36	12	5	2	1	\N	\N
37	13	5	2	1	\N	\N
38	14	5	2	0	\N	\N
39	39	5	1	3	\N	\N
40	40	5	1	60	\N	\N
41	19	5	2	2	\N	\N
42	41	5	1	1	\N	\N
43	28	5	1	\N	admin@prancingpony.me	\N
44	26	10	1	200	\N	\N
46	44	5	1	1	\N	\N
47	49	5	1	\N	\N	5.0000000000
15	19	5	1	1024	\N	\N
\.


--
-- Data for Name: preference_type; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY preference_type (id, int_def_value, str_def_value, float_def_value) FROM stdin;
1	\N	\N	\N
2	\N	/billing/css/jbilling.css	\N
3	\N	/billing/graphics/jb-log-small.jpg	\N
4	\N	\N	\N
5	\N	\N	\N
6	\N	\N	\N
7	\N	\N	\N
8	\N	\N	\N
9	\N	\N	\N
10	\N	\N	\N
11	\N	\N	\N
12	\N	\N	\N
13	\N	\N	\N
14	\N	\N	\N
15	\N	\N	\N
16	\N	\N	\N
17	\N	\N	\N
18	\N	\N	\N
19	1	\N	\N
20	1	\N	\N
21	0	\N	\N
22	\N	\N	\N
23	\N	\N	\N
24	0	\N	\N
25	0	\N	\N
26	20	\N	\N
27	0	\N	\N
28	\N	\N	\N
29	\N	https://www.paypal.com/en_US/i/btn/x-click-but6.gif	\N
30	\N	\N	\N
31	\N	2000-01-01	\N
32	0	\N	\N
33	0	\N	\N
34	\N	\N	0.0000000000
35	0	\N	\N
36	1	\N	\N
37	0	\N	\N
38	1	\N	\N
39	0	\N	\N
40	0	\N	\N
41	0	\N	\N
42	1	\N	\N
43	0	\N	\N
44	0	\N	\N
45	0	\N	\N
46	0	\N	\N
47	0	\N	\N
48	1	\N	\N
49	\N	\N	\N
\.


--
-- Data for Name: price_model; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY price_model (id, strategy_type, rate, included_quantity, currency_id, next_model_id) FROM stdin;
1	METERED	10.0000000000	\N	3	\N
2	METERED	20.0000000000	\N	3	\N
3	METERED	15.0000000000	\N	3	\N
4	METERED	12.9899997711	\N	3	\N
14	METERED	5.0000000000	\N	3	\N
150	METERED	0.0000000000	\N	3	\N
151	METERED	15.0000000000	\N	3	\N
152	METERED	10.0000000000	\N	3	\N
1600	METERED	0.0000000000	\N	3	\N
1601	METERED	0.0000000000	\N	3	\N
1602	METERED	3.5000000000	\N	3	\N
1701	METERED	25.0000000000	\N	3	\N
1703	METERED	40.0000000000	\N	3	\N
1705	METERED	30.0000000000	\N	3	\N
1801	METERED	0.0000000000	\N	3	\N
1803	METERED	0.0000000000	\N	3	\N
1900	METERED	0.0000000000	\N	3	\N
2001	METERED	99.9900000000	\N	3	\N
2003	METERED	15.0000000000	\N	3	\N
2104	GRADUATED	0.0000000000	\N	3	\N
2105	METERED	0.0000000000	\N	3	\N
2200	METERED	99.9000000000	\N	3	\N
2100	METERED	49.9000000000	\N	3	\N
2201	METERED	0.0500000000	\N	3	\N
2101	METERED	20.0000000000	\N	3	\N
2102	METERED	1400.0000000000	\N	3	\N
2202	METERED	50.0000000000	\N	3	\N
2103	METERED	25.0000000000	\N	3	\N
2300	METERED	59.9000000000	\N	3	\N
2400	METERED	1000.0000000000	\N	3	\N
2401	METERED	3.0000000000	\N	3	\N
2402	METERED	0.4000000000	\N	3	\N
2403	METERED	0.8000000000	\N	3	\N
2404	METERED	2.0000000000	\N	3	\N
2405	METERED	1.5000000000	\N	3	\N
2406	METERED	2.5000000000	\N	3	\N
2407	METERED	0.0500000000	\N	3	\N
2500	METERED	0.0000000000	\N	3	\N
2501	METERED	1000.0000000000	\N	3	\N
2502	METERED	2.5000000000	\N	3	\N
\.


--
-- Data for Name: price_model_attribute; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY price_model_attribute (price_model_id, attribute_name, attribute_value) FROM stdin;
2104	included	0
\.


--
-- Data for Name: process_run; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY process_run (id, process_id, run_date, started, finished, payment_finished, invoices_generated, optlock, status_id) FROM stdin;
2	2	2006-08-26	2000-12-19 00:00:00	2000-12-19 00:05:00.519	\N	1	1	34
12	12	2006-09-26	2006-12-19 16:10:00.116	2006-12-19 16:10:02.87	\N	1	1	34
\.


--
-- Data for Name: process_run_total; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY process_run_total (id, process_run_id, currency_id, total_invoiced, total_paid, total_not_paid, optlock) FROM stdin;
1	2	1	63.0000000000	0.0000000000	0.0000000000	1
11	12	1	83.0000000000	0.0000000000	0.0000000000	1
\.


--
-- Data for Name: process_run_total_pm; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY process_run_total_pm (id, process_run_total_id, payment_method_id, total, optlock) FROM stdin;
\.


--
-- Data for Name: process_run_user; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY process_run_user (id, process_run_id, user_id, status, created, optlock) FROM stdin;
\.


--
-- Data for Name: promotion; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY promotion (id, item_id, code, notes, once, since, until) FROM stdin;
\.


--
-- Data for Name: promotion_user_map; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY promotion_user_map (user_id, promotion_id) FROM stdin;
\.


--
-- Data for Name: purchase_order; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY purchase_order (id, user_id, period_id, billing_type_id, active_since, active_until, cycle_start, create_datetime, next_billable_day, created_by, status_id, currency_id, deleted, notify, last_notified, notification_step, due_date_unit_id, due_date_value, df_fm, anticipate_periods, own_invoice, notes, notes_in_invoice, is_current, optlock) FROM stdin;
107900	10791	1	1	2011-02-15	\N	\N	2011-02-15 16:25:57.921	\N	1	17	12	0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1
108000	10816	2	1	2011-02-01	\N	\N	2011-02-18 13:01:04.096	\N	1	16	12	0	\N	\N	\N	\N	\N	\N	\N	\N	To replace an old modem that is too old	\N	\N	1
\.


--
-- Data for Name: recent_item; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY recent_item (id, type, object_id, user_id, version) FROM stdin;
66	PRODUCT	3403	1	0
67	PRODUCT	3404	1	0
68	PRODUCT	3405	1	0
69	PRODUCT	3406	1	0
70	PRODUCT	3407	1	0
\.


--
-- Data for Name: report; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY report (id, type_id, entity_id, name, file_name, optlock) FROM stdin;
1	1	1	total_invoiced	total_invoiced.jasper	0
\.


--
-- Data for Name: report_parameter; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY report_parameter (id, report_id, dtype, name) FROM stdin;
1	1	date	start_date
2	1	date	end_date
3	1	integer	period
\.


--
-- Data for Name: report_type; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY report_type (id, name, optlock) FROM stdin;
1	invoice	0
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY role (id) FROM stdin;
1
2
3
4
5
\.


--
-- Data for Name: shortcut; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY shortcut (id, user_id, controller, action, name, object_id, version) FROM stdin;
\.


--
-- Data for Name: user_credit_card_map; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY user_credit_card_map (user_id, credit_card_id) FROM stdin;
2	3
73	13
74	14
75	15
76	16
77	17
78	18
79	19
80	20
81	21
82	22
83	23
84	24
85	25
86	26
87	27
88	28
89	29
90	30
91	31
92	32
93	33
94	34
95	35
96	36
97	37
98	38
99	39
100	40
101	41
102	42
103	43
104	44
105	45
106	46
107	47
108	48
109	49
110	50
111	51
112	52
113	53
114	54
115	55
116	56
117	57
118	58
119	59
120	60
121	61
122	62
123	63
124	64
125	65
126	66
127	67
128	68
129	69
130	70
131	71
132	72
133	73
134	74
135	75
136	76
137	77
138	78
139	79
140	80
141	81
142	82
143	83
144	84
145	85
146	86
147	87
148	88
149	89
150	90
151	91
152	92
153	93
154	94
155	95
156	96
157	97
158	98
159	99
160	100
161	101
162	102
163	103
164	104
165	105
166	106
167	107
168	108
169	109
170	110
171	111
172	112
173	113
174	114
175	115
176	116
177	117
178	118
179	119
180	120
181	121
182	122
183	123
184	124
185	125
186	126
187	127
188	128
189	129
190	130
191	131
192	132
193	133
194	134
195	135
196	136
197	137
198	138
199	139
200	140
201	141
202	142
203	143
204	144
205	145
206	146
207	147
208	148
209	149
210	150
211	151
212	152
213	153
214	154
215	155
216	156
217	157
218	158
219	159
220	160
221	161
222	162
223	163
224	164
225	165
226	166
227	167
228	168
229	169
230	170
231	171
232	172
233	173
234	174
235	175
236	176
237	177
238	178
239	179
240	180
241	181
242	182
243	183
244	184
245	185
246	186
247	187
248	188
249	189
250	190
251	191
252	192
253	193
254	194
255	195
256	196
257	197
258	198
259	199
260	200
261	201
262	202
263	203
264	204
265	205
266	206
267	207
268	208
269	209
270	210
271	211
272	212
273	213
274	214
275	215
276	216
277	217
278	218
279	219
280	220
281	221
282	222
283	223
284	224
285	225
286	226
287	227
288	228
289	229
290	230
291	231
292	232
293	233
294	234
295	235
296	236
297	237
298	238
299	239
300	240
301	241
302	242
303	243
304	244
305	245
306	246
307	247
308	248
309	249
310	250
311	251
312	252
313	253
314	254
315	255
316	256
317	257
318	258
319	259
320	260
321	261
322	262
323	263
324	264
325	265
326	266
327	267
328	268
329	269
330	270
331	271
332	272
333	273
334	274
335	275
336	276
337	277
338	278
339	279
340	280
341	281
342	282
343	283
344	284
345	285
346	286
347	287
348	288
349	289
350	290
351	291
352	292
353	293
354	294
355	295
356	296
357	297
358	298
359	299
360	300
361	301
362	302
363	303
364	304
365	305
366	306
367	307
368	308
369	309
370	310
371	311
372	312
373	313
374	314
375	315
376	316
377	317
378	318
379	319
380	320
381	321
382	322
383	323
384	324
385	325
386	326
387	327
388	328
389	329
390	330
391	331
392	332
393	333
394	334
395	335
396	336
397	337
398	338
399	339
400	340
401	341
402	342
403	343
404	344
405	345
406	346
407	347
408	348
409	349
410	350
411	351
412	352
413	353
414	354
415	355
416	356
417	357
418	358
419	359
420	360
421	361
422	362
423	363
424	364
425	365
426	366
427	367
428	368
429	369
430	370
431	371
432	372
433	373
434	374
435	375
436	376
437	377
438	378
439	379
440	380
441	381
442	382
443	383
444	384
445	385
446	386
447	387
448	388
449	389
450	390
451	391
452	392
453	393
454	394
455	395
456	396
457	397
458	398
459	399
460	400
461	401
462	402
463	403
464	404
465	405
466	406
467	407
468	408
469	409
470	410
471	411
472	412
473	413
474	414
475	415
476	416
477	417
478	418
479	419
480	420
481	421
482	422
483	423
484	424
485	425
486	426
487	427
488	428
489	429
490	430
491	431
492	432
493	433
494	434
495	435
496	436
497	437
498	438
499	439
500	440
501	441
502	442
503	443
504	444
505	445
506	446
507	447
508	448
509	449
510	450
511	451
512	452
513	453
514	454
515	455
516	456
517	457
518	458
519	459
520	460
521	461
522	462
523	463
524	464
525	465
526	466
527	467
528	468
529	469
530	470
531	471
532	472
533	473
534	474
535	475
536	476
537	477
538	478
539	479
540	480
541	481
542	482
543	483
544	484
545	485
546	486
547	487
548	488
549	489
550	490
551	491
552	492
553	493
554	494
555	495
556	496
557	497
558	498
559	499
560	500
561	501
562	502
563	503
564	504
565	505
566	506
567	507
568	508
569	509
570	510
571	511
572	512
573	513
574	514
575	515
576	516
577	517
578	518
579	519
580	520
581	521
582	522
583	523
584	524
585	525
586	526
587	527
588	528
589	529
590	530
591	531
592	532
593	533
594	534
595	535
596	536
597	537
598	538
599	539
600	540
601	541
602	542
603	543
604	544
605	545
606	546
607	547
608	548
609	549
610	550
611	551
612	552
613	553
614	554
615	555
616	556
617	557
618	558
619	559
620	560
621	561
622	562
623	563
624	564
625	565
626	566
627	567
628	568
629	569
630	570
631	571
632	572
633	573
634	574
635	575
636	576
637	577
638	578
639	579
640	580
641	581
642	582
643	583
644	584
645	585
646	586
647	587
648	588
649	589
650	590
651	591
652	592
653	593
654	594
655	595
656	596
657	597
658	598
659	599
660	600
661	601
662	602
663	603
664	604
665	605
666	606
667	607
668	608
669	609
670	610
671	611
672	612
673	613
674	614
675	615
676	616
677	617
678	618
679	619
680	620
681	621
682	622
683	623
684	624
685	625
686	626
687	627
688	628
689	629
690	630
691	631
692	632
693	633
694	634
695	635
696	636
697	637
698	638
699	639
700	640
701	641
702	642
703	643
704	644
705	645
706	646
707	647
708	648
709	649
710	650
711	651
712	652
713	653
714	654
715	655
716	656
717	657
718	658
719	659
720	660
721	661
722	662
723	663
724	664
725	665
726	666
727	667
728	668
729	669
730	670
731	671
732	672
733	673
734	674
735	675
736	676
737	677
738	678
739	679
740	680
741	681
742	682
743	683
744	684
745	685
746	686
747	687
748	688
749	689
750	690
751	691
752	692
753	693
754	694
755	695
756	696
757	697
758	698
759	699
760	700
761	701
762	702
763	703
764	704
765	705
766	706
767	707
768	708
769	709
770	710
771	711
772	712
773	713
774	714
775	715
776	716
777	717
778	718
779	719
780	720
781	721
782	722
783	723
784	724
785	725
786	726
787	727
788	728
789	729
790	730
791	731
792	732
793	733
794	734
795	735
796	736
797	737
798	738
799	739
800	740
801	741
802	742
803	743
804	744
805	745
806	746
807	747
808	748
809	749
810	750
811	751
812	752
813	753
814	754
815	755
816	756
817	757
818	758
819	759
820	760
821	761
822	762
823	763
824	764
825	765
826	766
827	767
828	768
829	769
830	770
831	771
832	772
833	773
834	774
835	775
836	776
837	777
838	778
839	779
840	780
841	781
842	782
843	783
844	784
845	785
846	786
847	787
848	788
849	789
850	790
851	791
852	792
853	793
854	794
855	795
856	796
857	797
858	798
859	799
860	800
861	801
862	802
863	803
864	804
865	805
866	806
867	807
869	809
870	810
871	811
872	812
873	813
874	814
875	815
876	816
877	817
878	818
879	819
880	820
881	821
882	822
883	823
884	824
885	825
886	826
887	827
888	828
889	829
890	830
891	831
892	832
893	833
894	834
895	835
896	836
897	837
898	838
899	839
900	840
901	841
902	842
903	843
904	844
905	845
906	846
907	847
908	848
909	849
910	850
911	851
912	852
913	853
914	854
915	855
916	856
917	857
918	858
919	859
920	860
921	861
922	862
923	863
924	864
925	865
926	866
927	867
928	868
929	869
930	870
931	871
932	872
933	873
934	874
935	875
936	876
937	877
938	878
939	879
940	880
941	881
942	882
943	883
944	884
945	885
946	886
947	887
948	888
949	889
950	890
951	891
952	892
953	893
954	894
955	895
956	896
957	897
958	898
959	899
960	900
961	901
962	902
963	903
964	904
965	905
966	906
967	907
968	908
969	909
970	910
971	911
972	912
973	913
974	914
975	915
976	916
977	917
978	918
979	919
980	920
981	921
982	922
983	923
984	924
985	925
986	926
987	927
988	928
989	929
990	930
991	931
992	932
993	933
994	934
995	935
996	936
997	937
998	938
999	939
1000	940
1001	941
1002	942
1003	943
1004	944
1005	945
1007	947
1008	948
1009	949
1010	950
1011	951
1012	952
1013	953
1014	954
1015	955
1016	956
1017	957
1018	958
1019	959
1020	960
1021	961
1022	962
1023	963
1024	964
1025	965
1026	966
1027	967
1028	968
1029	969
1030	970
1031	971
1032	972
1033	973
1034	974
1035	975
1036	976
1037	977
1038	978
1039	979
1040	980
1041	981
1042	982
1043	983
1044	984
1045	985
1046	986
1047	987
1048	988
1049	989
1050	990
1051	991
1052	992
1053	993
1054	994
1055	995
1056	996
1057	997
1058	998
1059	999
1060	1000
1061	1001
1062	1002
1063	1003
1064	1004
1065	1005
1066	1006
1067	1007
1068	1008
1069	1009
1070	1010
1071	1011
1072	1012
868	808
1006	946
10730	101300
10731	101301
10740	101400
10742	101401
\.


--
-- Data for Name: user_role_map; Type: TABLE DATA; Schema: public; Owner: jbilling
--

COPY user_role_map (user_id, role_id) FROM stdin;
1	2
2	5
12	2
13	5
23	5
33	5
43	5
53	5
63	5
73	5
74	5
75	5
76	5
77	5
78	5
79	5
80	5
81	5
82	5
83	5
84	5
85	5
86	5
87	5
88	5
89	5
90	5
91	5
92	5
93	5
94	5
95	5
96	5
97	5
98	5
99	5
100	5
101	5
102	5
103	5
104	5
105	5
106	5
107	5
108	5
109	5
110	5
111	5
112	5
113	5
114	5
115	5
116	5
117	5
118	5
119	5
120	5
121	5
122	5
123	5
124	5
125	5
126	5
127	5
128	5
129	5
130	5
131	5
132	5
133	5
134	5
135	5
136	5
137	5
138	5
139	5
140	5
141	5
142	5
143	5
144	5
145	5
146	5
147	5
148	5
149	5
150	5
151	5
152	5
153	5
154	5
155	5
156	5
157	5
158	5
159	5
160	5
161	5
162	5
163	5
164	5
165	5
166	5
167	5
168	5
169	5
170	5
171	5
172	5
173	5
174	5
175	5
176	5
177	5
178	5
179	5
180	5
181	5
182	5
183	5
184	5
185	5
186	5
187	5
188	5
189	5
190	5
191	5
192	5
193	5
194	5
195	5
196	5
197	5
198	5
199	5
200	5
201	5
202	5
203	5
204	5
205	5
206	5
207	5
208	5
209	5
210	5
211	5
212	5
213	5
214	5
215	5
216	5
217	5
218	5
219	5
220	5
221	5
222	5
223	5
224	5
225	5
226	5
227	5
228	5
229	5
230	5
231	5
232	5
233	5
234	5
235	5
236	5
237	5
238	5
239	5
240	5
241	5
242	5
243	5
244	5
245	5
246	5
247	5
248	5
249	5
250	5
251	5
252	5
253	5
254	5
255	5
256	5
257	5
258	5
259	5
260	5
261	5
262	5
263	5
264	5
265	5
266	5
267	5
268	5
269	5
270	5
271	5
272	5
273	5
274	5
275	5
276	5
277	5
278	5
279	5
280	5
281	5
282	5
283	5
284	5
285	5
286	5
287	5
288	5
289	5
290	5
291	5
292	5
293	5
294	5
295	5
296	5
297	5
298	5
299	5
300	5
301	5
302	5
303	5
304	5
305	5
306	5
307	5
308	5
309	5
310	5
311	5
312	5
313	5
314	5
315	5
316	5
317	5
318	5
319	5
320	5
321	5
322	5
323	5
324	5
325	5
326	5
327	5
328	5
329	5
330	5
331	5
332	5
333	5
334	5
335	5
336	5
337	5
338	5
339	5
340	5
341	5
342	5
343	5
344	5
345	5
346	5
347	5
348	5
349	5
350	5
351	5
352	5
353	5
354	5
355	5
356	5
357	5
358	5
359	5
360	5
361	5
362	5
363	5
364	5
365	5
366	5
367	5
368	5
369	5
370	5
371	5
372	5
373	5
374	5
375	5
376	5
377	5
378	5
379	5
380	5
381	5
382	5
383	5
384	5
385	5
386	5
387	5
388	5
389	5
390	5
391	5
392	5
393	5
394	5
395	5
396	5
397	5
398	5
399	5
400	5
401	5
402	5
403	5
404	5
405	5
406	5
407	5
408	5
409	5
410	5
411	5
412	5
413	5
414	5
415	5
416	5
417	5
418	5
419	5
420	5
421	5
422	5
423	5
424	5
425	5
426	5
427	5
428	5
429	5
430	5
431	5
432	5
433	5
434	5
435	5
436	5
437	5
438	5
439	5
440	5
441	5
442	5
443	5
444	5
445	5
446	5
447	5
448	5
449	5
450	5
451	5
452	5
453	5
454	5
455	5
456	5
457	5
458	5
459	5
460	5
461	5
462	5
463	5
464	5
465	5
466	5
467	5
468	5
469	5
470	5
471	5
472	5
473	5
474	5
475	5
476	5
477	5
478	5
479	5
480	5
481	5
482	5
483	5
484	5
485	5
486	5
487	5
488	5
489	5
490	5
491	5
492	5
493	5
494	5
495	5
496	5
497	5
498	5
499	5
500	5
501	5
502	5
503	5
504	5
505	5
506	5
507	5
508	5
509	5
510	5
511	5
512	5
513	5
514	5
515	5
516	5
517	5
518	5
519	5
520	5
521	5
522	5
523	5
524	5
525	5
526	5
527	5
528	5
529	5
530	5
531	5
532	5
533	5
534	5
535	5
536	5
537	5
538	5
539	5
540	5
541	5
542	5
543	5
544	5
545	5
546	5
547	5
548	5
549	5
550	5
551	5
552	5
553	5
554	5
555	5
556	5
557	5
558	5
559	5
560	5
561	5
562	5
563	5
564	5
565	5
566	5
567	5
568	5
569	5
570	5
571	5
572	5
573	5
574	5
575	5
576	5
577	5
578	5
579	5
580	5
581	5
582	5
583	5
584	5
585	5
586	5
587	5
588	5
589	5
590	5
591	5
592	5
593	5
594	5
595	5
596	5
597	5
598	5
599	5
600	5
601	5
602	5
603	5
604	5
605	5
606	5
607	5
608	5
609	5
610	5
611	5
612	5
613	5
614	5
615	5
616	5
617	5
618	5
619	5
620	5
621	5
622	5
623	5
624	5
625	5
626	5
627	5
628	5
629	5
630	5
631	5
632	5
633	5
634	5
635	5
636	5
637	5
638	5
639	5
640	5
641	5
642	5
643	5
644	5
645	5
646	5
647	5
648	5
649	5
650	5
651	5
652	5
653	5
654	5
655	5
656	5
657	5
658	5
659	5
660	5
661	5
662	5
663	5
664	5
665	5
666	5
667	5
668	5
669	5
670	5
671	5
672	5
673	5
674	5
675	5
676	5
677	5
678	5
679	5
680	5
681	5
682	5
683	5
684	5
685	5
686	5
687	5
688	5
689	5
690	5
691	5
692	5
693	5
694	5
695	5
696	5
697	5
698	5
699	5
700	5
701	5
702	5
703	5
704	5
705	5
706	5
707	5
708	5
709	5
710	5
711	5
712	5
713	5
714	5
715	5
716	5
717	5
718	5
719	5
720	5
721	5
722	5
723	5
724	5
725	5
726	5
727	5
728	5
729	5
730	5
731	5
732	5
733	5
734	5
735	5
736	5
737	5
738	5
739	5
740	5
741	5
742	5
743	5
744	5
745	5
746	5
747	5
748	5
749	5
750	5
751	5
752	5
753	5
754	5
755	5
756	5
757	5
758	5
759	5
760	5
761	5
762	5
763	5
764	5
765	5
766	5
767	5
768	5
769	5
770	5
771	5
772	5
773	5
774	5
775	5
776	5
777	5
778	5
779	5
780	5
781	5
782	5
783	5
784	5
785	5
786	5
787	5
788	5
789	5
790	5
791	5
792	5
793	5
794	5
795	5
796	5
797	5
798	5
799	5
800	5
801	5
802	5
803	5
804	5
805	5
806	5
807	5
808	5
809	5
810	5
811	5
812	5
813	5
814	5
815	5
816	5
817	5
818	5
819	5
820	5
821	5
822	5
823	5
824	5
825	5
826	5
827	5
828	5
829	5
830	5
831	5
832	5
833	5
834	5
835	5
836	5
837	5
838	5
839	5
840	5
841	5
842	5
843	5
844	5
845	5
846	5
847	5
848	5
849	5
850	5
851	5
852	5
853	5
854	5
855	5
856	5
857	5
858	5
859	5
860	5
861	5
862	5
863	5
864	5
865	5
866	5
867	5
868	5
869	5
870	5
871	5
872	5
873	5
874	5
875	5
876	5
877	5
878	5
879	5
880	5
881	5
882	5
883	5
884	5
885	5
886	5
887	5
888	5
889	5
890	5
891	5
892	5
893	5
894	5
895	5
896	5
897	5
898	5
899	5
900	5
901	5
902	5
903	5
904	5
905	5
906	5
907	5
908	5
909	5
910	5
911	5
912	5
913	5
914	5
915	5
916	5
917	5
918	5
919	5
920	5
921	5
922	5
923	5
924	5
925	5
926	5
927	5
928	5
929	5
930	5
931	5
932	5
933	5
934	5
935	5
936	5
937	5
938	5
939	5
940	5
941	5
942	5
943	5
944	5
945	5
946	5
947	5
948	5
949	5
950	5
951	5
952	5
953	5
954	5
955	5
956	5
957	5
958	5
959	5
960	5
961	5
962	5
963	5
964	5
965	5
966	5
967	5
968	5
969	5
970	5
971	5
972	5
973	5
974	5
975	5
976	5
977	5
978	5
979	5
980	5
981	5
982	5
983	5
984	5
985	5
986	5
987	5
988	5
989	5
990	5
991	5
992	5
993	5
994	5
995	5
996	5
997	5
998	5
999	5
1000	5
1001	5
1002	5
1003	5
1004	5
1005	5
1006	5
1007	5
1008	5
1009	5
1010	5
1011	5
1012	5
1013	5
1014	5
1015	5
1016	5
1017	5
1018	5
1019	5
1020	5
1021	5
1022	5
1023	5
1024	5
1025	5
1026	5
1027	5
1028	5
1029	5
1030	5
1031	5
1032	5
1033	5
1034	5
1035	5
1036	5
1037	5
1038	5
1039	5
1040	5
1041	5
1042	5
1043	5
1044	5
1045	5
1046	5
1047	5
1048	5
1049	5
1050	5
1051	5
1052	5
1053	5
1054	5
1055	5
1056	5
1057	5
1058	5
1059	5
1060	5
1061	5
1062	5
1063	5
1064	5
1065	5
1066	5
1067	5
1068	5
1069	5
1070	5
1071	5
1072	5
10730	5
10731	5
10740	4
10741	4
10742	4
10743	5
10744	5
10746	5
10747	5
10748	5
10750	5
10760	5
10761	5
10762	5
10770	5
10771	5
10772	5
10773	5
10774	5
10775	5
10776	5
10777	5
10778	5
10779	5
10780	5
10781	5
10791	5
10792	5
10793	5
10794	5
10795	5
10796	5
10797	5
10798	5
10799	5
10800	5
10801	5
10802	5
10803	5
10804	5
10805	5
10806	5
10807	5
10808	5
10809	5
10810	5
10811	5
10812	5
10813	5
10814	5
10815	5
10816	5
10817	5
10818	5
10819	5
10820	5
10821	5
10822	5
10823	5
10824	5
10825	5
10826	5
10827	5
10828	5
10829	5
10830	5
10831	5
10832	5
10833	5
10834	5
10835	5
10836	5
10837	5
10838	5
10839	5
10840	5
10940	5
10941	5
10942	5
10943	5
10944	5
10945	5
10946	5
10947	5
10948	5
10949	5
10950	5
10951	5
10952	5
10953	5
10954	5
10955	5
10956	5
\.


--
-- Name: ach_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY ach
    ADD CONSTRAINT ach_pkey PRIMARY KEY (id);


--
-- Name: ageing_entity_step_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY ageing_entity_step
    ADD CONSTRAINT ageing_entity_step_pkey PRIMARY KEY (id);


--
-- Name: base_user_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY base_user
    ADD CONSTRAINT base_user_pkey PRIMARY KEY (id);


--
-- Name: billing_process_configuration_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY billing_process_configuration
    ADD CONSTRAINT billing_process_configuration_pkey PRIMARY KEY (id);


--
-- Name: billing_process_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY billing_process
    ADD CONSTRAINT billing_process_pkey PRIMARY KEY (id);


--
-- Name: blacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY blacklist
    ADD CONSTRAINT blacklist_pkey PRIMARY KEY (id);


--
-- Name: breadcrumb_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY breadcrumb
    ADD CONSTRAINT breadcrumb_pkey PRIMARY KEY (id);


--
-- Name: cdrentries_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY cdrentries
    ADD CONSTRAINT cdrentries_pkey PRIMARY KEY (id);


--
-- Name: contact_field_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY contact_field
    ADD CONSTRAINT contact_field_pkey PRIMARY KEY (id);


--
-- Name: contact_field_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY contact_field_type
    ADD CONSTRAINT contact_field_type_pkey PRIMARY KEY (id);


--
-- Name: contact_map_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY contact_map
    ADD CONSTRAINT contact_map_pkey PRIMARY KEY (id);


--
-- Name: contact_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (id);


--
-- Name: contact_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY contact_type
    ADD CONSTRAINT contact_type_pkey PRIMARY KEY (id);


--
-- Name: country_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- Name: credit_card_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY credit_card
    ADD CONSTRAINT credit_card_pkey PRIMARY KEY (id);


--
-- Name: currency_exchange_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY currency_exchange
    ADD CONSTRAINT currency_exchange_pkey PRIMARY KEY (id);


--
-- Name: currency_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY currency
    ADD CONSTRAINT currency_pkey PRIMARY KEY (id);


--
-- Name: customer_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: customer_price_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY customer_price
    ADD CONSTRAINT customer_price_pkey PRIMARY KEY (plan_item_id, user_id);


--
-- Name: entity_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY entity
    ADD CONSTRAINT entity_pkey PRIMARY KEY (id);


--
-- Name: event_log_message_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY event_log_message
    ADD CONSTRAINT event_log_message_pkey PRIMARY KEY (id);


--
-- Name: event_log_module_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY event_log_module
    ADD CONSTRAINT event_log_module_pkey PRIMARY KEY (id);


--
-- Name: event_log_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY event_log
    ADD CONSTRAINT event_log_pkey PRIMARY KEY (id);


--
-- Name: filter_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY filter
    ADD CONSTRAINT filter_pkey PRIMARY KEY (id);


--
-- Name: filter_set_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY filter_set
    ADD CONSTRAINT filter_set_pkey PRIMARY KEY (id);


--
-- Name: generic_status_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY generic_status
    ADD CONSTRAINT generic_status_pkey PRIMARY KEY (id);


--
-- Name: generic_status_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY generic_status_type
    ADD CONSTRAINT generic_status_type_pkey PRIMARY KEY (id);


--
-- Name: international_description_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY international_description
    ADD CONSTRAINT international_description_pkey PRIMARY KEY (table_id, foreign_id, psudo_column, language_id);


--
-- Name: invoice_delivery_method_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY invoice_delivery_method
    ADD CONSTRAINT invoice_delivery_method_pkey PRIMARY KEY (id);


--
-- Name: invoice_line_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY invoice_line
    ADD CONSTRAINT invoice_line_pkey PRIMARY KEY (id);


--
-- Name: invoice_line_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY invoice_line_type
    ADD CONSTRAINT invoice_line_type_pkey PRIMARY KEY (id);


--
-- Name: invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY invoice
    ADD CONSTRAINT invoice_pkey PRIMARY KEY (id);


--
-- Name: item_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id);


--
-- Name: item_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY item_type
    ADD CONSTRAINT item_type_pkey PRIMARY KEY (id);


--
-- Name: jbilling_table_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY jbilling_table
    ADD CONSTRAINT jbilling_table_pkey PRIMARY KEY (id);


--
-- Name: language_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY language
    ADD CONSTRAINT language_pkey PRIMARY KEY (id);


--
-- Name: list_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY list_entity
    ADD CONSTRAINT list_entity_pkey PRIMARY KEY (id);


--
-- Name: list_field_entity_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY list_field_entity
    ADD CONSTRAINT list_field_entity_pkey PRIMARY KEY (id);


--
-- Name: list_field_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY list_field
    ADD CONSTRAINT list_field_pkey PRIMARY KEY (id);


--
-- Name: list_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY list
    ADD CONSTRAINT list_pkey PRIMARY KEY (id);


--
-- Name: mediation_cfg_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY mediation_cfg
    ADD CONSTRAINT mediation_cfg_pkey PRIMARY KEY (id);


--
-- Name: mediation_errors_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY mediation_errors
    ADD CONSTRAINT mediation_errors_pkey PRIMARY KEY (accountcode);


--
-- Name: mediation_process_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY mediation_process
    ADD CONSTRAINT mediation_process_pkey PRIMARY KEY (id);


--
-- Name: mediation_record_line_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY mediation_record_line
    ADD CONSTRAINT mediation_record_line_pkey PRIMARY KEY (id);


--
-- Name: mediation_record_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY mediation_record
    ADD CONSTRAINT mediation_record_pkey PRIMARY KEY (id);


--
-- Name: menu_option_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY menu_option
    ADD CONSTRAINT menu_option_pkey PRIMARY KEY (id);


--
-- Name: notification_category_pk; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY notification_category
    ADD CONSTRAINT notification_category_pk PRIMARY KEY (id);


--
-- Name: notification_message_arch_line_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY notification_message_arch_line
    ADD CONSTRAINT notification_message_arch_line_pkey PRIMARY KEY (id);


--
-- Name: notification_message_arch_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY notification_message_arch
    ADD CONSTRAINT notification_message_arch_pkey PRIMARY KEY (id);


--
-- Name: notification_message_line_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY notification_message_line
    ADD CONSTRAINT notification_message_line_pkey PRIMARY KEY (id);


--
-- Name: notification_message_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY notification_message
    ADD CONSTRAINT notification_message_pkey PRIMARY KEY (id);


--
-- Name: notification_message_section_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY notification_message_section
    ADD CONSTRAINT notification_message_section_pkey PRIMARY KEY (id);


--
-- Name: notification_message_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY notification_message_type
    ADD CONSTRAINT notification_message_type_pkey PRIMARY KEY (id);


--
-- Name: order_billing_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY order_billing_type
    ADD CONSTRAINT order_billing_type_pkey PRIMARY KEY (id);


--
-- Name: order_line_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY order_line
    ADD CONSTRAINT order_line_pkey PRIMARY KEY (id);


--
-- Name: order_line_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY order_line_type
    ADD CONSTRAINT order_line_type_pkey PRIMARY KEY (id);


--
-- Name: order_period_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY order_period
    ADD CONSTRAINT order_period_pkey PRIMARY KEY (id);


--
-- Name: order_process_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY order_process
    ADD CONSTRAINT order_process_pkey PRIMARY KEY (id);


--
-- Name: paper_invoice_batch_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY paper_invoice_batch
    ADD CONSTRAINT paper_invoice_batch_pkey PRIMARY KEY (id);


--
-- Name: partner_payout_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY partner_payout
    ADD CONSTRAINT partner_payout_pkey PRIMARY KEY (id);


--
-- Name: partner_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY partner
    ADD CONSTRAINT partner_pkey PRIMARY KEY (id);


--
-- Name: partner_range_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY partner_range
    ADD CONSTRAINT partner_range_pkey PRIMARY KEY (id);


--
-- Name: payment_authorization_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY payment_authorization
    ADD CONSTRAINT payment_authorization_pkey PRIMARY KEY (id);


--
-- Name: payment_info_cheque_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY payment_info_cheque
    ADD CONSTRAINT payment_info_cheque_pkey PRIMARY KEY (id);


--
-- Name: payment_invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY payment_invoice
    ADD CONSTRAINT payment_invoice_pkey PRIMARY KEY (id);


--
-- Name: payment_method_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY payment_method
    ADD CONSTRAINT payment_method_pkey PRIMARY KEY (id);


--
-- Name: payment_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id);


--
-- Name: payment_result_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY payment_result
    ADD CONSTRAINT payment_result_pkey PRIMARY KEY (id);


--
-- Name: period_unit_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY period_unit
    ADD CONSTRAINT period_unit_pkey PRIMARY KEY (id);


--
-- Name: permission_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY permission
    ADD CONSTRAINT permission_pkey PRIMARY KEY (id);


--
-- Name: permission_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY permission_type
    ADD CONSTRAINT permission_type_pkey PRIMARY KEY (id);


--
-- Name: permission_user_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY permission_user
    ADD CONSTRAINT permission_user_pkey PRIMARY KEY (id);


--
-- Name: plan_item_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY plan_item
    ADD CONSTRAINT plan_item_pkey PRIMARY KEY (id);


--
-- Name: plan_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY plan
    ADD CONSTRAINT plan_pkey PRIMARY KEY (id);


--
-- Name: pluggable_task_parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY pluggable_task_parameter
    ADD CONSTRAINT pluggable_task_parameter_pkey PRIMARY KEY (id);


--
-- Name: pluggable_task_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY pluggable_task
    ADD CONSTRAINT pluggable_task_pkey PRIMARY KEY (id);


--
-- Name: pluggable_task_type_category_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY pluggable_task_type_category
    ADD CONSTRAINT pluggable_task_type_category_pkey PRIMARY KEY (id);


--
-- Name: pluggable_task_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY pluggable_task_type
    ADD CONSTRAINT pluggable_task_type_pkey PRIMARY KEY (id);


--
-- Name: preference_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY preference
    ADD CONSTRAINT preference_pkey PRIMARY KEY (id);


--
-- Name: preference_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY preference_type
    ADD CONSTRAINT preference_type_pkey PRIMARY KEY (id);


--
-- Name: price_model_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY price_model_attribute
    ADD CONSTRAINT price_model_attribute_pkey PRIMARY KEY (price_model_id, attribute_name);


--
-- Name: price_model_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY price_model
    ADD CONSTRAINT price_model_pkey PRIMARY KEY (id);


--
-- Name: process_run_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY process_run
    ADD CONSTRAINT process_run_pkey PRIMARY KEY (id);


--
-- Name: process_run_total_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY process_run_total
    ADD CONSTRAINT process_run_total_pkey PRIMARY KEY (id);


--
-- Name: process_run_total_pm_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY process_run_total_pm
    ADD CONSTRAINT process_run_total_pm_pkey PRIMARY KEY (id);


--
-- Name: process_run_user_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY process_run_user
    ADD CONSTRAINT process_run_user_pkey PRIMARY KEY (id);


--
-- Name: promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY promotion
    ADD CONSTRAINT promotion_pkey PRIMARY KEY (id);


--
-- Name: purchase_order_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY purchase_order
    ADD CONSTRAINT purchase_order_pkey PRIMARY KEY (id);


--
-- Name: recent_item_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY recent_item
    ADD CONSTRAINT recent_item_pkey PRIMARY KEY (id);


--
-- Name: role_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- Name: shortcut_pkey; Type: CONSTRAINT; Schema: public; Owner: jbilling; Tablespace: 
--

ALTER TABLE ONLY shortcut
    ADD CONSTRAINT shortcut_pkey PRIMARY KEY (id);


--
-- Name: ach_i_2; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ach_i_2 ON ach USING btree (user_id);


--
-- Name: bp_pm_index_total; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX bp_pm_index_total ON process_run_total_pm USING btree (process_run_total_id);


--
-- Name: bp_run_process_ix; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX bp_run_process_ix ON process_run USING btree (process_id);


--
-- Name: bp_run_total_run_ix; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX bp_run_total_run_ix ON process_run_total USING btree (process_run_id);


--
-- Name: contact_i_del; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX contact_i_del ON contact USING btree (deleted);


--
-- Name: contact_map_i_1; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX contact_map_i_1 ON contact_map USING btree (contact_id);


--
-- Name: contact_map_i_3; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX contact_map_i_3 ON contact_map USING btree (table_id, foreign_id, type_id);


--
-- Name: create_datetime; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX create_datetime ON payment_authorization USING btree (create_datetime);


--
-- Name: currency_entity_map_i_2; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX currency_entity_map_i_2 ON currency_entity_map USING btree (currency_id, entity_id);


--
-- Name: customer_i_2; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX customer_i_2 ON customer USING btree (user_id);


--
-- Name: int_description_i_lan; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX int_description_i_lan ON international_description USING btree (language_id);


--
-- Name: international_description_i_2; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX international_description_i_2 ON international_description USING btree (table_id, foreign_id, language_id);


--
-- Name: ix_base_user_un; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_base_user_un ON base_user USING btree (entity_id, user_name);


--
-- Name: ix_blacklist_entity_type; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_blacklist_entity_type ON blacklist USING btree (entity_id, type);


--
-- Name: ix_blacklist_user_type; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_blacklist_user_type ON blacklist USING btree (user_id, type);


--
-- Name: ix_cc_number; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_cc_number ON credit_card USING btree (cc_number_plain);


--
-- Name: ix_cc_number_encrypted; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_cc_number_encrypted ON credit_card USING btree (cc_number);


--
-- Name: ix_cf_type_entity; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_cf_type_entity ON contact_field_type USING btree (entity_id);


--
-- Name: ix_contact_address; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_contact_address ON contact USING btree (street_addres1, city, postal_code, street_addres2, state_province, country_code);


--
-- Name: ix_contact_field_cid; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_contact_field_cid ON contact_field USING btree (contact_id);


--
-- Name: ix_contact_field_content; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_contact_field_content ON contact_field USING btree (content);


--
-- Name: ix_contact_fname; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_contact_fname ON contact USING btree (first_name);


--
-- Name: ix_contact_fname_lname; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_contact_fname_lname ON contact USING btree (first_name, last_name);


--
-- Name: ix_contact_lname; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_contact_lname ON contact USING btree (last_name);


--
-- Name: ix_contact_orgname; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_contact_orgname ON contact USING btree (organization_name);


--
-- Name: ix_contact_phone; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_contact_phone ON contact USING btree (phone_phone_number, phone_area_code, phone_country_code);


--
-- Name: ix_el_main; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_el_main ON event_log USING btree (module_id, message_id, create_datetime);


--
-- Name: ix_invoice_date; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_invoice_date ON invoice USING btree (create_datetime);


--
-- Name: ix_invoice_due_date; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_invoice_due_date ON invoice USING btree (user_id, due_date);


--
-- Name: ix_invoice_line_invoice_id; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_invoice_line_invoice_id ON invoice_line USING btree (invoice_id);


--
-- Name: ix_invoice_number; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_invoice_number ON invoice USING btree (user_id, public_number);


--
-- Name: ix_invoice_process; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_invoice_process ON invoice USING btree (billing_process_id);


--
-- Name: ix_invoice_ts; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_invoice_ts ON invoice USING btree (create_timestamp, user_id);


--
-- Name: ix_invoice_user_id; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_invoice_user_id ON invoice USING btree (user_id, deleted);


--
-- Name: ix_item_ent; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_item_ent ON item USING btree (entity_id, internal_number);


--
-- Name: ix_mrl_order_line; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_mrl_order_line ON mediation_record_line USING btree (order_line_id);


--
-- Name: ix_order_line_item_id; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_order_line_item_id ON order_line USING btree (item_id);


--
-- Name: ix_order_line_order_id; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_order_line_order_id ON order_line USING btree (order_id);


--
-- Name: ix_order_process_in; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_order_process_in ON order_process USING btree (invoice_id);


--
-- Name: ix_pa_payment; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_pa_payment ON payment_authorization USING btree (payment_id);


--
-- Name: ix_promotion_code; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_promotion_code ON promotion USING btree (code);


--
-- Name: ix_purchase_order_date; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_purchase_order_date ON purchase_order USING btree (user_id, create_datetime);


--
-- Name: ix_uq_order_process_or_bp; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_uq_order_process_or_bp ON order_process USING btree (order_id, billing_process_id);


--
-- Name: ix_uq_order_process_or_in; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_uq_order_process_or_in ON order_process USING btree (order_id, invoice_id);


--
-- Name: ix_uq_payment_inv_map_pa_in; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX ix_uq_payment_inv_map_pa_in ON payment_invoice USING btree (payment_id, invoice_id);


--
-- Name: mediation_record_i; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX mediation_record_i ON mediation_record USING btree (id_key, status_id);


--
-- Name: partner_i_3; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX partner_i_3 ON partner USING btree (user_id);


--
-- Name: partner_payout_i_2; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX partner_payout_i_2 ON partner_payout USING btree (partner_id);


--
-- Name: partner_range_p; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX partner_range_p ON partner_range USING btree (partner_id);


--
-- Name: payment_i_2; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX payment_i_2 ON payment USING btree (user_id, create_datetime);


--
-- Name: payment_i_3; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX payment_i_3 ON payment USING btree (user_id, balance);


--
-- Name: permission_role_map_i_2; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX permission_role_map_i_2 ON permission_role_map USING btree (permission_id, role_id);


--
-- Name: permission_user_map_i_2; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX permission_user_map_i_2 ON permission_user USING btree (permission_id, user_id);


--
-- Name: plan_item_item_id_i; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX plan_item_item_id_i ON plan_item USING btree (precedence);


--
-- Name: plan_item_precedence_i; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX plan_item_precedence_i ON plan_item USING btree (item_id);


--
-- Name: promotion_user_map_i_2; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX promotion_user_map_i_2 ON promotion_user_map USING btree (user_id, promotion_id);


--
-- Name: purchase_order_i_notif; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX purchase_order_i_notif ON purchase_order USING btree (active_until, notification_step);


--
-- Name: purchase_order_i_user; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX purchase_order_i_user ON purchase_order USING btree (user_id, deleted);


--
-- Name: transaction_id; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX transaction_id ON payment_authorization USING btree (transaction_id);


--
-- Name: user_credit_card_map_i_2; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX user_credit_card_map_i_2 ON user_credit_card_map USING btree (user_id, credit_card_id);


--
-- Name: user_role_map_i_2; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX user_role_map_i_2 ON user_role_map USING btree (user_id, role_id);


--
-- Name: user_role_map_i_role; Type: INDEX; Schema: public; Owner: jbilling; Tablespace: 
--

CREATE INDEX user_role_map_i_role ON user_role_map USING btree (role_id);


--
-- Name: ach_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY ach
    ADD CONSTRAINT ach_fk_1 FOREIGN KEY (user_id) REFERENCES base_user(id);


--
-- Name: ageing_entity_step_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY ageing_entity_step
    ADD CONSTRAINT ageing_entity_step_fk_2 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: base_user_fk_3; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY base_user
    ADD CONSTRAINT base_user_fk_3 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: base_user_fk_4; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY base_user
    ADD CONSTRAINT base_user_fk_4 FOREIGN KEY (language_id) REFERENCES language(id);


--
-- Name: base_user_fk_5; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY base_user
    ADD CONSTRAINT base_user_fk_5 FOREIGN KEY (currency_id) REFERENCES currency(id);


--
-- Name: billing_process_configuration_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY billing_process_configuration
    ADD CONSTRAINT billing_process_configuration_fk_1 FOREIGN KEY (period_unit_id) REFERENCES period_unit(id);


--
-- Name: billing_process_configuration_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY billing_process_configuration
    ADD CONSTRAINT billing_process_configuration_fk_2 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: billing_process_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY billing_process
    ADD CONSTRAINT billing_process_fk_1 FOREIGN KEY (period_unit_id) REFERENCES period_unit(id);


--
-- Name: billing_process_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY billing_process
    ADD CONSTRAINT billing_process_fk_2 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: billing_process_fk_3; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY billing_process
    ADD CONSTRAINT billing_process_fk_3 FOREIGN KEY (paper_invoice_batch_id) REFERENCES paper_invoice_batch(id);


--
-- Name: blacklist_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY blacklist
    ADD CONSTRAINT blacklist_fk_1 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: blacklist_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY blacklist
    ADD CONSTRAINT blacklist_fk_2 FOREIGN KEY (user_id) REFERENCES base_user(id);


--
-- Name: category_id_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY notification_message_type
    ADD CONSTRAINT category_id_fk_1 FOREIGN KEY (category_id) REFERENCES notification_category(id);


--
-- Name: contact_field_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY contact_field
    ADD CONSTRAINT contact_field_fk_1 FOREIGN KEY (contact_id) REFERENCES contact(id);


--
-- Name: contact_field_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY contact_field
    ADD CONSTRAINT contact_field_fk_2 FOREIGN KEY (type_id) REFERENCES contact_field_type(id);


--
-- Name: contact_field_type_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY contact_field_type
    ADD CONSTRAINT contact_field_type_fk_1 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: contact_map_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY contact_map
    ADD CONSTRAINT contact_map_fk_1 FOREIGN KEY (table_id) REFERENCES jbilling_table(id);


--
-- Name: contact_map_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY contact_map
    ADD CONSTRAINT contact_map_fk_2 FOREIGN KEY (type_id) REFERENCES contact_type(id);


--
-- Name: contact_map_fk_3; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY contact_map
    ADD CONSTRAINT contact_map_fk_3 FOREIGN KEY (contact_id) REFERENCES contact(id);


--
-- Name: contact_type_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY contact_type
    ADD CONSTRAINT contact_type_fk_1 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: currency_entity_map_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY currency_entity_map
    ADD CONSTRAINT currency_entity_map_fk_1 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: currency_entity_map_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY currency_entity_map
    ADD CONSTRAINT currency_entity_map_fk_2 FOREIGN KEY (currency_id) REFERENCES currency(id);


--
-- Name: currency_exchange_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY currency_exchange
    ADD CONSTRAINT currency_exchange_fk_1 FOREIGN KEY (currency_id) REFERENCES currency(id);


--
-- Name: customer_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_fk_1 FOREIGN KEY (invoice_delivery_method_id) REFERENCES invoice_delivery_method(id);


--
-- Name: customer_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_fk_2 FOREIGN KEY (partner_id) REFERENCES partner(id);


--
-- Name: customer_fk_3; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_fk_3 FOREIGN KEY (user_id) REFERENCES base_user(id);


--
-- Name: customer_price_plan_item_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY customer_price
    ADD CONSTRAINT customer_price_plan_item_id_fk FOREIGN KEY (plan_item_id) REFERENCES plan_item(id);


--
-- Name: customer_price_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY customer_price
    ADD CONSTRAINT customer_price_user_id_fk FOREIGN KEY (user_id) REFERENCES base_user(id);


--
-- Name: entity_delivery_method_map_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY entity_delivery_method_map
    ADD CONSTRAINT entity_delivery_method_map_fk_1 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: entity_delivery_method_map_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY entity_delivery_method_map
    ADD CONSTRAINT entity_delivery_method_map_fk_2 FOREIGN KEY (method_id) REFERENCES invoice_delivery_method(id);


--
-- Name: entity_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY entity
    ADD CONSTRAINT entity_fk_1 FOREIGN KEY (currency_id) REFERENCES currency(id);


--
-- Name: entity_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY entity
    ADD CONSTRAINT entity_fk_2 FOREIGN KEY (language_id) REFERENCES language(id);


--
-- Name: entity_payment_method_map_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY entity_payment_method_map
    ADD CONSTRAINT entity_payment_method_map_fk_1 FOREIGN KEY (payment_method_id) REFERENCES payment_method(id);


--
-- Name: entity_payment_method_map_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY entity_payment_method_map
    ADD CONSTRAINT entity_payment_method_map_fk_2 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: event_log_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY event_log
    ADD CONSTRAINT event_log_fk_1 FOREIGN KEY (module_id) REFERENCES event_log_module(id);


--
-- Name: event_log_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY event_log
    ADD CONSTRAINT event_log_fk_2 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: event_log_fk_3; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY event_log
    ADD CONSTRAINT event_log_fk_3 FOREIGN KEY (user_id) REFERENCES base_user(id);


--
-- Name: event_log_fk_4; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY event_log
    ADD CONSTRAINT event_log_fk_4 FOREIGN KEY (table_id) REFERENCES jbilling_table(id);


--
-- Name: event_log_fk_5; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY event_log
    ADD CONSTRAINT event_log_fk_5 FOREIGN KEY (message_id) REFERENCES event_log_message(id);


--
-- Name: event_log_fk_6; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY event_log
    ADD CONSTRAINT event_log_fk_6 FOREIGN KEY (affected_user_id) REFERENCES base_user(id);


--
-- Name: generic_status_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY generic_status
    ADD CONSTRAINT generic_status_fk_1 FOREIGN KEY (dtype) REFERENCES generic_status_type(id);


--
-- Name: international_description_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY international_description
    ADD CONSTRAINT international_description_fk_1 FOREIGN KEY (language_id) REFERENCES language(id);


--
-- Name: international_description_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY international_description
    ADD CONSTRAINT international_description_fk_2 FOREIGN KEY (table_id) REFERENCES jbilling_table(id);


--
-- Name: invoice_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY invoice
    ADD CONSTRAINT invoice_fk_1 FOREIGN KEY (billing_process_id) REFERENCES billing_process(id);


--
-- Name: invoice_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY invoice
    ADD CONSTRAINT invoice_fk_2 FOREIGN KEY (paper_invoice_batch_id) REFERENCES paper_invoice_batch(id);


--
-- Name: invoice_fk_3; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY invoice
    ADD CONSTRAINT invoice_fk_3 FOREIGN KEY (currency_id) REFERENCES currency(id);


--
-- Name: invoice_fk_4; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY invoice
    ADD CONSTRAINT invoice_fk_4 FOREIGN KEY (delegated_invoice_id) REFERENCES invoice(id);


--
-- Name: invoice_line_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY invoice_line
    ADD CONSTRAINT invoice_line_fk_1 FOREIGN KEY (invoice_id) REFERENCES invoice(id);


--
-- Name: invoice_line_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY invoice_line
    ADD CONSTRAINT invoice_line_fk_2 FOREIGN KEY (item_id) REFERENCES item(id);


--
-- Name: invoice_line_fk_3; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY invoice_line
    ADD CONSTRAINT invoice_line_fk_3 FOREIGN KEY (type_id) REFERENCES invoice_line_type(id);


--
-- Name: item_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY item
    ADD CONSTRAINT item_fk_1 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: item_type_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY item_type
    ADD CONSTRAINT item_type_fk_1 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: item_type_map_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY item_type_map
    ADD CONSTRAINT item_type_map_fk_1 FOREIGN KEY (item_id) REFERENCES item(id);


--
-- Name: item_type_map_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY item_type_map
    ADD CONSTRAINT item_type_map_fk_2 FOREIGN KEY (type_id) REFERENCES item_type(id);


--
-- Name: list_entity_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY list_entity
    ADD CONSTRAINT list_entity_fk_1 FOREIGN KEY (list_id) REFERENCES list(id);


--
-- Name: list_entity_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY list_entity
    ADD CONSTRAINT list_entity_fk_2 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: list_field_entity_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY list_field_entity
    ADD CONSTRAINT list_field_entity_fk_1 FOREIGN KEY (list_entity_id) REFERENCES list_entity(id);


--
-- Name: list_field_entity_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY list_field_entity
    ADD CONSTRAINT list_field_entity_fk_2 FOREIGN KEY (list_field_id) REFERENCES list_field(id);


--
-- Name: list_field_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY list_field
    ADD CONSTRAINT list_field_fk_1 FOREIGN KEY (list_id) REFERENCES list(id);


--
-- Name: mediation_cfg_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY mediation_cfg
    ADD CONSTRAINT mediation_cfg_fk_1 FOREIGN KEY (pluggable_task_id) REFERENCES pluggable_task(id);


--
-- Name: mediation_order_map_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY mediation_order_map
    ADD CONSTRAINT mediation_order_map_fk_1 FOREIGN KEY (mediation_process_id) REFERENCES mediation_process(id);


--
-- Name: mediation_order_map_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY mediation_order_map
    ADD CONSTRAINT mediation_order_map_fk_2 FOREIGN KEY (order_id) REFERENCES purchase_order(id);


--
-- Name: mediation_process_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY mediation_process
    ADD CONSTRAINT mediation_process_fk_1 FOREIGN KEY (configuration_id) REFERENCES mediation_cfg(id);


--
-- Name: mediation_record_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY mediation_record
    ADD CONSTRAINT mediation_record_fk_1 FOREIGN KEY (mediation_process_id) REFERENCES mediation_process(id);


--
-- Name: mediation_record_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY mediation_record
    ADD CONSTRAINT mediation_record_fk_2 FOREIGN KEY (status_id) REFERENCES generic_status(id);


--
-- Name: mediation_record_line_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY mediation_record_line
    ADD CONSTRAINT mediation_record_line_fk_1 FOREIGN KEY (mediation_record_id) REFERENCES mediation_record(id);


--
-- Name: mediation_record_line_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY mediation_record_line
    ADD CONSTRAINT mediation_record_line_fk_2 FOREIGN KEY (order_line_id) REFERENCES order_line(id);


--
-- Name: menu_option_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY menu_option
    ADD CONSTRAINT menu_option_fk_1 FOREIGN KEY (parent_id) REFERENCES menu_option(id);


--
-- Name: notif_mess_arch_line_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY notification_message_arch_line
    ADD CONSTRAINT notif_mess_arch_line_fk_1 FOREIGN KEY (message_archive_id) REFERENCES notification_message_arch(id);


--
-- Name: notification_message_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY notification_message
    ADD CONSTRAINT notification_message_fk_1 FOREIGN KEY (language_id) REFERENCES language(id);


--
-- Name: notification_message_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY notification_message
    ADD CONSTRAINT notification_message_fk_2 FOREIGN KEY (type_id) REFERENCES notification_message_type(id);


--
-- Name: notification_message_fk_3; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY notification_message
    ADD CONSTRAINT notification_message_fk_3 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: notification_message_line_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY notification_message_line
    ADD CONSTRAINT notification_message_line_fk_1 FOREIGN KEY (message_section_id) REFERENCES notification_message_section(id);


--
-- Name: notification_message_section_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY notification_message_section
    ADD CONSTRAINT notification_message_section_fk_1 FOREIGN KEY (message_id) REFERENCES notification_message(id);


--
-- Name: order_line_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY order_line
    ADD CONSTRAINT order_line_fk_1 FOREIGN KEY (item_id) REFERENCES item(id);


--
-- Name: order_line_fk_3; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY order_line
    ADD CONSTRAINT order_line_fk_3 FOREIGN KEY (type_id) REFERENCES order_line_type(id);


--
-- Name: order_period_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY order_period
    ADD CONSTRAINT order_period_fk_1 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: order_period_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY order_period
    ADD CONSTRAINT order_period_fk_2 FOREIGN KEY (unit_id) REFERENCES period_unit(id);


--
-- Name: partner_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY partner
    ADD CONSTRAINT partner_fk_1 FOREIGN KEY (period_unit_id) REFERENCES period_unit(id);


--
-- Name: partner_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY partner
    ADD CONSTRAINT partner_fk_2 FOREIGN KEY (fee_currency_id) REFERENCES currency(id);


--
-- Name: partner_fk_3; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY partner
    ADD CONSTRAINT partner_fk_3 FOREIGN KEY (related_clerk) REFERENCES base_user(id);


--
-- Name: partner_fk_4; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY partner
    ADD CONSTRAINT partner_fk_4 FOREIGN KEY (user_id) REFERENCES base_user(id);


--
-- Name: partner_payout_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY partner_payout
    ADD CONSTRAINT partner_payout_fk_1 FOREIGN KEY (partner_id) REFERENCES partner(id);


--
-- Name: payment_authorization_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY payment_authorization
    ADD CONSTRAINT payment_authorization_fk_1 FOREIGN KEY (payment_id) REFERENCES payment(id);


--
-- Name: payment_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY payment
    ADD CONSTRAINT payment_fk_1 FOREIGN KEY (ach_id) REFERENCES ach(id);


--
-- Name: payment_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY payment
    ADD CONSTRAINT payment_fk_2 FOREIGN KEY (currency_id) REFERENCES currency(id);


--
-- Name: payment_fk_3; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY payment
    ADD CONSTRAINT payment_fk_3 FOREIGN KEY (payment_id) REFERENCES payment(id);


--
-- Name: payment_fk_4; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY payment
    ADD CONSTRAINT payment_fk_4 FOREIGN KEY (credit_card_id) REFERENCES credit_card(id);


--
-- Name: payment_fk_5; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY payment
    ADD CONSTRAINT payment_fk_5 FOREIGN KEY (result_id) REFERENCES payment_result(id);


--
-- Name: payment_fk_6; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY payment
    ADD CONSTRAINT payment_fk_6 FOREIGN KEY (method_id) REFERENCES payment_method(id);


--
-- Name: payment_info_cheque_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY payment_info_cheque
    ADD CONSTRAINT payment_info_cheque_fk_1 FOREIGN KEY (payment_id) REFERENCES payment(id);


--
-- Name: payment_invoice_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY payment_invoice
    ADD CONSTRAINT payment_invoice_fk_1 FOREIGN KEY (invoice_id) REFERENCES invoice(id);


--
-- Name: payment_invoice_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY payment_invoice
    ADD CONSTRAINT payment_invoice_fk_2 FOREIGN KEY (payment_id) REFERENCES payment(id);


--
-- Name: permission_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY permission
    ADD CONSTRAINT permission_fk_1 FOREIGN KEY (type_id) REFERENCES permission_type(id);


--
-- Name: permission_role_map_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY permission_role_map
    ADD CONSTRAINT permission_role_map_fk_1 FOREIGN KEY (role_id) REFERENCES role(id);


--
-- Name: permission_role_map_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY permission_role_map
    ADD CONSTRAINT permission_role_map_fk_2 FOREIGN KEY (permission_id) REFERENCES permission(id);


--
-- Name: permission_user_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY permission_user
    ADD CONSTRAINT permission_user_fk_1 FOREIGN KEY (user_id) REFERENCES base_user(id);


--
-- Name: permission_user_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY permission_user
    ADD CONSTRAINT permission_user_fk_2 FOREIGN KEY (permission_id) REFERENCES permission(id);


--
-- Name: plan_item_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY plan
    ADD CONSTRAINT plan_item_id_fk FOREIGN KEY (item_id) REFERENCES item(id);


--
-- Name: plan_item_item_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY plan_item
    ADD CONSTRAINT plan_item_item_id_fk FOREIGN KEY (item_id) REFERENCES item(id);


--
-- Name: plan_item_period_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY plan_item
    ADD CONSTRAINT plan_item_period_id_fk FOREIGN KEY (period_id) REFERENCES order_period(id);


--
-- Name: plan_item_plan_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY plan_item
    ADD CONSTRAINT plan_item_plan_id_fk FOREIGN KEY (plan_id) REFERENCES plan(id);


--
-- Name: plan_item_price_model_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY plan_item
    ADD CONSTRAINT plan_item_price_model_id_fk FOREIGN KEY (price_model_id) REFERENCES price_model(id);


--
-- Name: plan_period_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY plan
    ADD CONSTRAINT plan_period_id_fk FOREIGN KEY (period_id) REFERENCES order_period(id);


--
-- Name: pluggable_task_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY pluggable_task
    ADD CONSTRAINT pluggable_task_fk_1 FOREIGN KEY (type_id) REFERENCES pluggable_task_type(id);


--
-- Name: pluggable_task_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY pluggable_task
    ADD CONSTRAINT pluggable_task_fk_2 FOREIGN KEY (entity_id) REFERENCES entity(id);


--
-- Name: pluggable_task_parameter_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY pluggable_task_parameter
    ADD CONSTRAINT pluggable_task_parameter_fk_1 FOREIGN KEY (task_id) REFERENCES pluggable_task(id);


--
-- Name: pluggable_task_type_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY pluggable_task_type
    ADD CONSTRAINT pluggable_task_type_fk_1 FOREIGN KEY (category_id) REFERENCES pluggable_task_type_category(id);


--
-- Name: preference_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY preference
    ADD CONSTRAINT preference_fk_1 FOREIGN KEY (type_id) REFERENCES preference_type(id);


--
-- Name: preference_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY preference
    ADD CONSTRAINT preference_fk_2 FOREIGN KEY (table_id) REFERENCES jbilling_table(id);


--
-- Name: price_model_attr_model_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY price_model_attribute
    ADD CONSTRAINT price_model_attr_model_id_fk FOREIGN KEY (price_model_id) REFERENCES price_model(id);


--
-- Name: price_model_currency_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY price_model
    ADD CONSTRAINT price_model_currency_id_fk FOREIGN KEY (currency_id) REFERENCES currency(id);


--
-- Name: price_model_next_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY price_model
    ADD CONSTRAINT price_model_next_id_fk FOREIGN KEY (next_model_id) REFERENCES price_model(id);


--
-- Name: process_run_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY process_run
    ADD CONSTRAINT process_run_fk_1 FOREIGN KEY (process_id) REFERENCES billing_process(id);


--
-- Name: process_run_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY process_run
    ADD CONSTRAINT process_run_fk_2 FOREIGN KEY (status_id) REFERENCES generic_status(id);


--
-- Name: process_run_total_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY process_run_total
    ADD CONSTRAINT process_run_total_fk_1 FOREIGN KEY (currency_id) REFERENCES currency(id);


--
-- Name: process_run_total_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY process_run_total
    ADD CONSTRAINT process_run_total_fk_2 FOREIGN KEY (process_run_id) REFERENCES process_run(id);


--
-- Name: process_run_total_pm_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY process_run_total_pm
    ADD CONSTRAINT process_run_total_pm_fk_1 FOREIGN KEY (payment_method_id) REFERENCES payment_method(id);


--
-- Name: process_run_user_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY process_run_user
    ADD CONSTRAINT process_run_user_fk_1 FOREIGN KEY (process_run_id) REFERENCES process_run(id);


--
-- Name: process_run_user_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY process_run_user
    ADD CONSTRAINT process_run_user_fk_2 FOREIGN KEY (user_id) REFERENCES base_user(id);


--
-- Name: promotion_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY promotion
    ADD CONSTRAINT promotion_fk_1 FOREIGN KEY (item_id) REFERENCES item(id);


--
-- Name: promotion_user_map_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY promotion_user_map
    ADD CONSTRAINT promotion_user_map_fk_1 FOREIGN KEY (user_id) REFERENCES base_user(id);


--
-- Name: promotion_user_map_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY promotion_user_map
    ADD CONSTRAINT promotion_user_map_fk_2 FOREIGN KEY (promotion_id) REFERENCES promotion(id);


--
-- Name: purchase_order_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY purchase_order
    ADD CONSTRAINT purchase_order_fk_1 FOREIGN KEY (currency_id) REFERENCES currency(id);


--
-- Name: purchase_order_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY purchase_order
    ADD CONSTRAINT purchase_order_fk_2 FOREIGN KEY (billing_type_id) REFERENCES order_billing_type(id);


--
-- Name: purchase_order_fk_3; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY purchase_order
    ADD CONSTRAINT purchase_order_fk_3 FOREIGN KEY (period_id) REFERENCES order_period(id);


--
-- Name: purchase_order_fk_4; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY purchase_order
    ADD CONSTRAINT purchase_order_fk_4 FOREIGN KEY (user_id) REFERENCES base_user(id);


--
-- Name: purchase_order_fk_5; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY purchase_order
    ADD CONSTRAINT purchase_order_fk_5 FOREIGN KEY (created_by) REFERENCES base_user(id);


--
-- Name: user_role_map_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY user_role_map
    ADD CONSTRAINT user_role_map_fk_1 FOREIGN KEY (role_id) REFERENCES role(id);


--
-- Name: user_role_map_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: jbilling
--

ALTER TABLE ONLY user_role_map
    ADD CONSTRAINT user_role_map_fk_2 FOREIGN KEY (user_id) REFERENCES base_user(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--