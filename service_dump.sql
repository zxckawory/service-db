--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+1)
-- Dumped by pg_dump version 16.4 (Debian 16.4-1.pgdg120+1)

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

--
-- Name: service; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA service;


ALTER SCHEMA service OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Accountant; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."Accountant" (
    "AccountantID" integer NOT NULL,
    "UserID" integer NOT NULL
);


ALTER TABLE service."Accountant" OWNER TO postgres;

--
-- Name: Accountant_AccountantID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Accountant_AccountantID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Accountant_AccountantID_seq" OWNER TO postgres;

--
-- Name: Accountant_AccountantID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Accountant_AccountantID_seq" OWNED BY service."Accountant"."AccountantID";


--
-- Name: Accountant_UserID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Accountant_UserID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Accountant_UserID_seq" OWNER TO postgres;

--
-- Name: Accountant_UserID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Accountant_UserID_seq" OWNED BY service."Accountant"."UserID";


--
-- Name: Analyzer; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."Analyzer" (
    "AnalyzerID" integer NOT NULL,
    "DateTimeStart" timestamp without time zone NOT NULL,
    "DateTimeEnd" timestamp without time zone NOT NULL
);


ALTER TABLE service."Analyzer" OWNER TO postgres;

--
-- Name: Analyzer_AnalyzerID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Analyzer_AnalyzerID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Analyzer_AnalyzerID_seq" OWNER TO postgres;

--
-- Name: Analyzer_AnalyzerID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Analyzer_AnalyzerID_seq" OWNED BY service."Analyzer"."AnalyzerID";


--
-- Name: Assistant; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."Assistant" (
    "AssistantID" integer NOT NULL,
    "LastDateTime" timestamp without time zone,
    "ServiceID" integer NOT NULL,
    "UserID" integer NOT NULL
);


ALTER TABLE service."Assistant" OWNER TO postgres;

--
-- Name: Assistant_AssistantID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Assistant_AssistantID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Assistant_AssistantID_seq" OWNER TO postgres;

--
-- Name: Assistant_AssistantID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Assistant_AssistantID_seq" OWNED BY service."Assistant"."AssistantID";


--
-- Name: Assistant_ServiceID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Assistant_ServiceID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Assistant_ServiceID_seq" OWNER TO postgres;

--
-- Name: Assistant_ServiceID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Assistant_ServiceID_seq" OWNED BY service."Assistant"."ServiceID";


--
-- Name: Assistant_UserID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Assistant_UserID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Assistant_UserID_seq" OWNER TO postgres;

--
-- Name: Assistant_UserID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Assistant_UserID_seq" OWNED BY service."Assistant"."UserID";


--
-- Name: History; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."History" (
    "HistoryId" integer NOT NULL,
    "UserID" integer NOT NULL,
    "LoginTime" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    "LogoutTime" timestamp without time zone,
    "IPAddress" inet NOT NULL,
    "DeviceInfo" text NOT NULL
);


ALTER TABLE service."History" OWNER TO postgres;

--
-- Name: History_HistoryId_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."History_HistoryId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."History_HistoryId_seq" OWNER TO postgres;

--
-- Name: History_HistoryId_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."History_HistoryId_seq" OWNED BY service."History"."HistoryId";


--
-- Name: History_UserId_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."History_UserId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."History_UserId_seq" OWNER TO postgres;

--
-- Name: History_UserId_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."History_UserId_seq" OWNED BY service."History"."UserID";


--
-- Name: Insurance; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."Insurance" (
    "InsuranceID" integer NOT NULL,
    "InsurancePoliceNumber" text NOT NULL,
    "InsurancePoliceType" text NOT NULL,
    "CompanyID" integer NOT NULL
);


ALTER TABLE service."Insurance" OWNER TO postgres;

--
-- Name: InsuranceCompany; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."InsuranceCompany" (
    "CompanyID" integer NOT NULL,
    "CompanyName" text NOT NULL,
    "CompanyAddress" text NOT NULL,
    "ITN" integer NOT NULL,
    "PaymentAccount" integer NOT NULL,
    "BIC" integer NOT NULL
);


ALTER TABLE service."InsuranceCompany" OWNER TO postgres;

--
-- Name: InsuranceCompany_CompanyID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."InsuranceCompany_CompanyID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."InsuranceCompany_CompanyID_seq" OWNER TO postgres;

--
-- Name: InsuranceCompany_CompanyID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."InsuranceCompany_CompanyID_seq" OWNED BY service."InsuranceCompany"."CompanyID";


--
-- Name: Insurance_CompanyID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Insurance_CompanyID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Insurance_CompanyID_seq" OWNER TO postgres;

--
-- Name: Insurance_CompanyID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Insurance_CompanyID_seq" OWNED BY service."Insurance"."CompanyID";


--
-- Name: Insurance_InsuranceID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Insurance_InsuranceID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Insurance_InsuranceID_seq" OWNER TO postgres;

--
-- Name: Insurance_InsuranceID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Insurance_InsuranceID_seq" OWNED BY service."Insurance"."InsuranceID";


--
-- Name: Invoice; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."Invoice" (
    "InvoiceID" integer NOT NULL,
    "PatientID" integer NOT NULL,
    "CompanyID" integer NOT NULL,
    "AccountantID" integer NOT NULL
);


ALTER TABLE service."Invoice" OWNER TO postgres;

--
-- Name: Invoice_AccountantID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Invoice_AccountantID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Invoice_AccountantID_seq" OWNER TO postgres;

--
-- Name: Invoice_AccountantID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Invoice_AccountantID_seq" OWNED BY service."Invoice"."AccountantID";


--
-- Name: Invoice_CompanyID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Invoice_CompanyID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Invoice_CompanyID_seq" OWNER TO postgres;

--
-- Name: Invoice_CompanyID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Invoice_CompanyID_seq" OWNED BY service."Invoice"."CompanyID";


--
-- Name: Invoice_InvoiceID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Invoice_InvoiceID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Invoice_InvoiceID_seq" OWNER TO postgres;

--
-- Name: Invoice_InvoiceID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Invoice_InvoiceID_seq" OWNED BY service."Invoice"."InvoiceID";


--
-- Name: Invoice_PatientID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Invoice_PatientID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Invoice_PatientID_seq" OWNER TO postgres;

--
-- Name: Invoice_PatientID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Invoice_PatientID_seq" OWNED BY service."Invoice"."PatientID";


--
-- Name: Order; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."Order" (
    "OrderID" integer NOT NULL,
    "DateOfCreation" date NOT NULL,
    "OrderStatus" text NOT NULL,
    "ServiceStatus" text NOT NULL,
    "OrderTime" time without time zone NOT NULL
);


ALTER TABLE service."Order" OWNER TO postgres;

--
-- Name: OrderPatient; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."OrderPatient" (
    "OrderPatientID" integer NOT NULL,
    "OrderID" integer NOT NULL,
    "PatientID" integer NOT NULL
);


ALTER TABLE service."OrderPatient" OWNER TO postgres;

--
-- Name: OrderPatient_OrderPatientID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."OrderPatient_OrderPatientID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."OrderPatient_OrderPatientID_seq" OWNER TO postgres;

--
-- Name: OrderPatient_OrderPatientID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."OrderPatient_OrderPatientID_seq" OWNED BY service."OrderPatient"."OrderPatientID";


--
-- Name: OrderService; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."OrderService" (
    "OrderServiceID" integer NOT NULL,
    "OrderID" integer NOT NULL,
    "ServiceID" integer NOT NULL
);


ALTER TABLE service."OrderService" OWNER TO postgres;

--
-- Name: OrderService_OrderID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."OrderService_OrderID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."OrderService_OrderID_seq" OWNER TO postgres;

--
-- Name: OrderService_OrderID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."OrderService_OrderID_seq" OWNED BY service."OrderService"."OrderID";


--
-- Name: OrderService_OrderServiceID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."OrderService_OrderServiceID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."OrderService_OrderServiceID_seq" OWNER TO postgres;

--
-- Name: OrderService_OrderServiceID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."OrderService_OrderServiceID_seq" OWNED BY service."OrderService"."OrderServiceID";


--
-- Name: OrderService_ServiceID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."OrderService_ServiceID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."OrderService_ServiceID_seq" OWNER TO postgres;

--
-- Name: OrderService_ServiceID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."OrderService_ServiceID_seq" OWNED BY service."OrderService"."ServiceID";


--
-- Name: Order_OrderID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Order_OrderID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Order_OrderID_seq" OWNER TO postgres;

--
-- Name: Order_OrderID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Order_OrderID_seq" OWNED BY service."Order"."OrderID";


--
-- Name: Passport; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."Passport" (
    "PassportID" integer NOT NULL,
    "PassportSeries" integer NOT NULL,
    "PassportNumber" integer NOT NULL,
    "PassportType" text NOT NULL
);


ALTER TABLE service."Passport" OWNER TO postgres;

--
-- Name: Passport_PassportID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Passport_PassportID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Passport_PassportID_seq" OWNER TO postgres;

--
-- Name: Passport_PassportID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Passport_PassportID_seq" OWNED BY service."Passport"."PassportID";


--
-- Name: Patient; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."Patient" (
    "PatientID" integer NOT NULL,
    "UserID" integer NOT NULL,
    "DateOfBirth" timestamp without time zone NOT NULL,
    "Phone" text NOT NULL,
    "Email" text NOT NULL,
    "PassportID" integer NOT NULL,
    "InsuranceID" integer NOT NULL
);


ALTER TABLE service."Patient" OWNER TO postgres;

--
-- Name: Patient_InsuranceID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Patient_InsuranceID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Patient_InsuranceID_seq" OWNER TO postgres;

--
-- Name: Patient_InsuranceID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Patient_InsuranceID_seq" OWNED BY service."Patient"."InsuranceID";


--
-- Name: Patient_PassportID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Patient_PassportID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Patient_PassportID_seq" OWNER TO postgres;

--
-- Name: Patient_PassportID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Patient_PassportID_seq" OWNED BY service."Patient"."PassportID";


--
-- Name: Patient_PatientID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Patient_PatientID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Patient_PatientID_seq" OWNER TO postgres;

--
-- Name: Patient_PatientID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Patient_PatientID_seq" OWNED BY service."Patient"."PatientID";


--
-- Name: Patient_UserID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Patient_UserID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Patient_UserID_seq" OWNER TO postgres;

--
-- Name: Patient_UserID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Patient_UserID_seq" OWNED BY service."Patient"."UserID";


--
-- Name: ProvidedService; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."ProvidedService" (
    "ProvidedServiceID" integer NOT NULL,
    "ServiceID" integer NOT NULL,
    "AssistantID" integer NOT NULL,
    "AnalyzerID" integer NOT NULL,
    "ComplitionTime" timestamp without time zone,
    "OrderID" integer
);


ALTER TABLE service."ProvidedService" OWNER TO postgres;

--
-- Name: ProvidedService_AnalyzerID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."ProvidedService_AnalyzerID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."ProvidedService_AnalyzerID_seq" OWNER TO postgres;

--
-- Name: ProvidedService_AnalyzerID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."ProvidedService_AnalyzerID_seq" OWNED BY service."ProvidedService"."AnalyzerID";


--
-- Name: ProvidedService_AssistantID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."ProvidedService_AssistantID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."ProvidedService_AssistantID_seq" OWNER TO postgres;

--
-- Name: ProvidedService_AssistantID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."ProvidedService_AssistantID_seq" OWNED BY service."ProvidedService"."AssistantID";


--
-- Name: ProvidedService_ProvidedServiceID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."ProvidedService_ProvidedServiceID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."ProvidedService_ProvidedServiceID_seq" OWNER TO postgres;

--
-- Name: ProvidedService_ProvidedServiceID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."ProvidedService_ProvidedServiceID_seq" OWNED BY service."ProvidedService"."ProvidedServiceID";


--
-- Name: ProvidedService_ServiceID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."ProvidedService_ServiceID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."ProvidedService_ServiceID_seq" OWNER TO postgres;

--
-- Name: ProvidedService_ServiceID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."ProvidedService_ServiceID_seq" OWNED BY service."ProvidedService"."ServiceID";


--
-- Name: Service; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."Service" (
    "ServiceID" integer NOT NULL,
    "ServiceName" text NOT NULL,
    "ServiceCost" numeric NOT NULL,
    "DateClose" date NOT NULL,
    "avgDeviation" numeric NOT NULL
);


ALTER TABLE service."Service" OWNER TO postgres;

--
-- Name: Service_ServiceID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."Service_ServiceID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."Service_ServiceID_seq" OWNER TO postgres;

--
-- Name: Service_ServiceID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."Service_ServiceID_seq" OWNED BY service."Service"."ServiceID";


--
-- Name: User; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."User" (
    "UserID" integer NOT NULL,
    "Login" text NOT NULL,
    "Password" text NOT NULL,
    "FullName" text NOT NULL,
    "TypeID" integer NOT NULL
);


ALTER TABLE service."User" OWNER TO postgres;

--
-- Name: UserType; Type: TABLE; Schema: service; Owner: postgres
--

CREATE TABLE service."UserType" (
    "TypeID" integer NOT NULL,
    "UserType" text NOT NULL
);


ALTER TABLE service."UserType" OWNER TO postgres;

--
-- Name: UserType_TypeID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."UserType_TypeID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."UserType_TypeID_seq" OWNER TO postgres;

--
-- Name: UserType_TypeID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."UserType_TypeID_seq" OWNED BY service."UserType"."TypeID";


--
-- Name: User_TypeID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."User_TypeID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."User_TypeID_seq" OWNER TO postgres;

--
-- Name: User_TypeID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."User_TypeID_seq" OWNED BY service."User"."TypeID";


--
-- Name: User_UserID_seq; Type: SEQUENCE; Schema: service; Owner: postgres
--

CREATE SEQUENCE service."User_UserID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE service."User_UserID_seq" OWNER TO postgres;

--
-- Name: User_UserID_seq; Type: SEQUENCE OWNED BY; Schema: service; Owner: postgres
--

ALTER SEQUENCE service."User_UserID_seq" OWNED BY service."User"."UserID";


--
-- Name: Accountant AccountantID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Accountant" ALTER COLUMN "AccountantID" SET DEFAULT nextval('service."Accountant_AccountantID_seq"'::regclass);


--
-- Name: Accountant UserID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Accountant" ALTER COLUMN "UserID" SET DEFAULT nextval('service."Accountant_UserID_seq"'::regclass);


--
-- Name: Analyzer AnalyzerID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Analyzer" ALTER COLUMN "AnalyzerID" SET DEFAULT nextval('service."Analyzer_AnalyzerID_seq"'::regclass);


--
-- Name: Assistant AssistantID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Assistant" ALTER COLUMN "AssistantID" SET DEFAULT nextval('service."Assistant_AssistantID_seq"'::regclass);


--
-- Name: Assistant ServiceID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Assistant" ALTER COLUMN "ServiceID" SET DEFAULT nextval('service."Assistant_ServiceID_seq"'::regclass);


--
-- Name: Assistant UserID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Assistant" ALTER COLUMN "UserID" SET DEFAULT nextval('service."Assistant_UserID_seq"'::regclass);


--
-- Name: History HistoryId; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."History" ALTER COLUMN "HistoryId" SET DEFAULT nextval('service."History_HistoryId_seq"'::regclass);


--
-- Name: History UserID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."History" ALTER COLUMN "UserID" SET DEFAULT nextval('service."History_UserId_seq"'::regclass);


--
-- Name: Insurance InsuranceID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Insurance" ALTER COLUMN "InsuranceID" SET DEFAULT nextval('service."Insurance_InsuranceID_seq"'::regclass);


--
-- Name: Insurance CompanyID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Insurance" ALTER COLUMN "CompanyID" SET DEFAULT nextval('service."Insurance_CompanyID_seq"'::regclass);


--
-- Name: InsuranceCompany CompanyID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."InsuranceCompany" ALTER COLUMN "CompanyID" SET DEFAULT nextval('service."InsuranceCompany_CompanyID_seq"'::regclass);


--
-- Name: Invoice InvoiceID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Invoice" ALTER COLUMN "InvoiceID" SET DEFAULT nextval('service."Invoice_InvoiceID_seq"'::regclass);


--
-- Name: Invoice PatientID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Invoice" ALTER COLUMN "PatientID" SET DEFAULT nextval('service."Invoice_PatientID_seq"'::regclass);


--
-- Name: Invoice CompanyID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Invoice" ALTER COLUMN "CompanyID" SET DEFAULT nextval('service."Invoice_CompanyID_seq"'::regclass);


--
-- Name: Invoice AccountantID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Invoice" ALTER COLUMN "AccountantID" SET DEFAULT nextval('service."Invoice_AccountantID_seq"'::regclass);


--
-- Name: Order OrderID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Order" ALTER COLUMN "OrderID" SET DEFAULT nextval('service."Order_OrderID_seq"'::regclass);


--
-- Name: OrderPatient OrderPatientID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."OrderPatient" ALTER COLUMN "OrderPatientID" SET DEFAULT nextval('service."OrderPatient_OrderPatientID_seq"'::regclass);


--
-- Name: OrderService OrderServiceID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."OrderService" ALTER COLUMN "OrderServiceID" SET DEFAULT nextval('service."OrderService_OrderServiceID_seq"'::regclass);


--
-- Name: OrderService OrderID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."OrderService" ALTER COLUMN "OrderID" SET DEFAULT nextval('service."OrderService_OrderID_seq"'::regclass);


--
-- Name: OrderService ServiceID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."OrderService" ALTER COLUMN "ServiceID" SET DEFAULT nextval('service."OrderService_ServiceID_seq"'::regclass);


--
-- Name: Passport PassportID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Passport" ALTER COLUMN "PassportID" SET DEFAULT nextval('service."Passport_PassportID_seq"'::regclass);


--
-- Name: Patient PatientID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Patient" ALTER COLUMN "PatientID" SET DEFAULT nextval('service."Patient_PatientID_seq"'::regclass);


--
-- Name: Patient UserID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Patient" ALTER COLUMN "UserID" SET DEFAULT nextval('service."Patient_UserID_seq"'::regclass);


--
-- Name: Patient PassportID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Patient" ALTER COLUMN "PassportID" SET DEFAULT nextval('service."Patient_PassportID_seq"'::regclass);


--
-- Name: Patient InsuranceID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Patient" ALTER COLUMN "InsuranceID" SET DEFAULT nextval('service."Patient_InsuranceID_seq"'::regclass);


--
-- Name: ProvidedService ProvidedServiceID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."ProvidedService" ALTER COLUMN "ProvidedServiceID" SET DEFAULT nextval('service."ProvidedService_ProvidedServiceID_seq"'::regclass);


--
-- Name: ProvidedService ServiceID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."ProvidedService" ALTER COLUMN "ServiceID" SET DEFAULT nextval('service."ProvidedService_ServiceID_seq"'::regclass);


--
-- Name: ProvidedService AssistantID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."ProvidedService" ALTER COLUMN "AssistantID" SET DEFAULT nextval('service."ProvidedService_AssistantID_seq"'::regclass);


--
-- Name: ProvidedService AnalyzerID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."ProvidedService" ALTER COLUMN "AnalyzerID" SET DEFAULT nextval('service."ProvidedService_AnalyzerID_seq"'::regclass);


--
-- Name: Service ServiceID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Service" ALTER COLUMN "ServiceID" SET DEFAULT nextval('service."Service_ServiceID_seq"'::regclass);


--
-- Name: User UserID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."User" ALTER COLUMN "UserID" SET DEFAULT nextval('service."User_UserID_seq"'::regclass);


--
-- Name: User TypeID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."User" ALTER COLUMN "TypeID" SET DEFAULT nextval('service."User_TypeID_seq"'::regclass);


--
-- Name: UserType TypeID; Type: DEFAULT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."UserType" ALTER COLUMN "TypeID" SET DEFAULT nextval('service."UserType_TypeID_seq"'::regclass);


--
-- Data for Name: Accountant; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."Accountant" ("AccountantID", "UserID") FROM stdin;
1	1
2	2
3	3
4	4
5	5
\.


--
-- Data for Name: Analyzer; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."Analyzer" ("AnalyzerID", "DateTimeStart", "DateTimeEnd") FROM stdin;
1	2024-09-01 08:00:00	2024-09-01 10:00:00
2	2024-09-15 09:00:00	2024-09-15 11:30:00
3	2024-09-18 14:00:00	2024-09-18 15:30:00
4	2024-10-01 10:00:00	2024-10-01 12:00:00
5	2024-10-10 13:00:00	2024-10-10 14:30:00
\.


--
-- Data for Name: Assistant; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."Assistant" ("AssistantID", "LastDateTime", "ServiceID", "UserID") FROM stdin;
1	2024-09-30 10:00:00	1	11
2	2024-09-25 12:00:00	2	12
3	2024-09-20 11:30:00	3	13
4	2024-09-18 15:00:00	4	14
5	2024-09-10 09:45:00	5	15
\.


--
-- Data for Name: History; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."History" ("HistoryId", "UserID", "LoginTime", "LogoutTime", "IPAddress", "DeviceInfo") FROM stdin;
\.


--
-- Data for Name: Insurance; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."Insurance" ("InsuranceID", "InsurancePoliceNumber", "InsurancePoliceType", "CompanyID") FROM stdin;
1	INSa	Health	1
2	INSb	Life	2
3	INSc	Travel	3
4	INSd	Auto	4
5	INSe	Home	5
\.


--
-- Data for Name: InsuranceCompany; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."InsuranceCompany" ("CompanyID", "CompanyName", "CompanyAddress", "ITN", "PaymentAccount", "BIC") FROM stdin;
1	Alpha Insurance	Main St	123456789	98765432	11111
2	Beta Insurance	Oak St	987654321	12345678	22222
3	Gamma Insurance	Pine St	123123123	98798798	33333
4	Delta Insurance	Elm St	321321321	12312312	44444
5	Epsilon Insurance	Cedar St	654654654	32132132	55555
\.


--
-- Data for Name: Invoice; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."Invoice" ("InvoiceID", "PatientID", "CompanyID", "AccountantID") FROM stdin;
\.


--
-- Data for Name: Order; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."Order" ("OrderID", "DateOfCreation", "OrderStatus", "ServiceStatus", "OrderTime") FROM stdin;
1	2024-09-01	Pending	Active	08:00:00
2	2024-09-10	Completed	Closed	09:30:00
3	2024-09-15	In Progress	Active	14:00:00
4	2024-10-01	Pending	Active	10:00:00
5	2024-10-05	Completed	Closed	13:00:00
\.


--
-- Data for Name: OrderPatient; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."OrderPatient" ("OrderPatientID", "OrderID", "PatientID") FROM stdin;
\.


--
-- Data for Name: OrderService; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."OrderService" ("OrderServiceID", "OrderID", "ServiceID") FROM stdin;
\.


--
-- Data for Name: Passport; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."Passport" ("PassportID", "PassportSeries", "PassportNumber", "PassportType") FROM stdin;
\.


--
-- Data for Name: Patient; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."Patient" ("PatientID", "UserID", "DateOfBirth", "Phone", "Email", "PassportID", "InsuranceID") FROM stdin;
\.


--
-- Data for Name: ProvidedService; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."ProvidedService" ("ProvidedServiceID", "ServiceID", "AssistantID", "AnalyzerID", "ComplitionTime", "OrderID") FROM stdin;
1	1	1	1	\N	\N
2	2	2	2	\N	\N
3	3	3	3	\N	\N
4	4	4	4	\N	\N
5	5	5	5	\N	\N
\.


--
-- Data for Name: Service; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."Service" ("ServiceID", "ServiceName", "ServiceCost", "DateClose", "avgDeviation") FROM stdin;
1	Consultation	100.00	2024-10-10	2.5
2	Surgery	5000.00	2024-11-15	1.0
3	Therapy	150.00	2024-09-20	3.0
4	Rehabilitation	200.00	2024-08-30	4.5
5	Emergency	300.00	2024-10-05	2.0
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."User" ("UserID", "Login", "Password", "FullName", "TypeID") FROM stdin;
1	Dcibov	ABK8ua	Scarlet Fuentes	1
2	Myno	V9drEb	Lauren Jones	1
3	Wozigafyky	qaqc0N	Eva Cannon	1
4	Desolu	fa5pT5	Gustavo York	1
5	Doriroru	lT8a5w	Graham Moss	1
6	Kitlo	m0gsgG	Karen Odom	2
7	Qalafa	Qzf6MF	Lane Ruiz	2
8	Dydy	JU1vhw	Sylvia Valentine	2
9	Zecuegcu	ftxTn0	Landon Bridges	2
10	Zfymiydo	my6jEf	Jadyn Bond	2
11	Ujyvaajo	474jbA	Curtis Burton	3
12	Puto	TpPJ08	Jovani Kemp	3
13	Qysywi	YAm1Ee	Sergio Curry	3
14	Zyzamaiij	LWsr3r	Sydney Barr	3
15	Csulyxa	YJ3AoE	Madilynn Mccall	3
16	Xoqamoti	y5BX4n	Matias Love	4
17	Zypir	1foCeR	Nikolas Dougherty	4
18	Esatkyfu	6SbIY3	Lane Mcconnell	4
19	Xefebyge	4shl2N	Landin Pittman	4
20	Telovohidy	tzrfH7	Izabella Page	4
\.


--
-- Data for Name: UserType; Type: TABLE DATA; Schema: service; Owner: postgres
--

COPY service."UserType" ("TypeID", "UserType") FROM stdin;
1	Accountant
2	Administrator
3	Assistant
4	Patient
\.


--
-- Name: Accountant_AccountantID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Accountant_AccountantID_seq"', 5, true);


--
-- Name: Accountant_UserID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Accountant_UserID_seq"', 1, false);


--
-- Name: Analyzer_AnalyzerID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Analyzer_AnalyzerID_seq"', 5, true);


--
-- Name: Assistant_AssistantID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Assistant_AssistantID_seq"', 5, true);


--
-- Name: Assistant_ServiceID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Assistant_ServiceID_seq"', 1, false);


--
-- Name: Assistant_UserID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Assistant_UserID_seq"', 1, false);


--
-- Name: History_HistoryId_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."History_HistoryId_seq"', 1, false);


--
-- Name: History_UserId_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."History_UserId_seq"', 1, false);


--
-- Name: InsuranceCompany_CompanyID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."InsuranceCompany_CompanyID_seq"', 5, true);


--
-- Name: Insurance_CompanyID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Insurance_CompanyID_seq"', 1, false);


--
-- Name: Insurance_InsuranceID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Insurance_InsuranceID_seq"', 5, true);


--
-- Name: Invoice_AccountantID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Invoice_AccountantID_seq"', 1, false);


--
-- Name: Invoice_CompanyID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Invoice_CompanyID_seq"', 1, false);


--
-- Name: Invoice_InvoiceID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Invoice_InvoiceID_seq"', 1, false);


--
-- Name: Invoice_PatientID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Invoice_PatientID_seq"', 1, false);


--
-- Name: OrderPatient_OrderPatientID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."OrderPatient_OrderPatientID_seq"', 1, false);


--
-- Name: OrderService_OrderID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."OrderService_OrderID_seq"', 1, false);


--
-- Name: OrderService_OrderServiceID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."OrderService_OrderServiceID_seq"', 1, false);


--
-- Name: OrderService_ServiceID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."OrderService_ServiceID_seq"', 1, false);


--
-- Name: Order_OrderID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Order_OrderID_seq"', 5, true);


--
-- Name: Passport_PassportID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Passport_PassportID_seq"', 1, false);


--
-- Name: Patient_InsuranceID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Patient_InsuranceID_seq"', 1, false);


--
-- Name: Patient_PassportID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Patient_PassportID_seq"', 1, false);


--
-- Name: Patient_PatientID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Patient_PatientID_seq"', 1, false);


--
-- Name: Patient_UserID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Patient_UserID_seq"', 1, false);


--
-- Name: ProvidedService_AnalyzerID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."ProvidedService_AnalyzerID_seq"', 1, false);


--
-- Name: ProvidedService_AssistantID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."ProvidedService_AssistantID_seq"', 1, false);


--
-- Name: ProvidedService_ProvidedServiceID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."ProvidedService_ProvidedServiceID_seq"', 5, true);


--
-- Name: ProvidedService_ServiceID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."ProvidedService_ServiceID_seq"', 1, false);


--
-- Name: Service_ServiceID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."Service_ServiceID_seq"', 10, true);


--
-- Name: UserType_TypeID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."UserType_TypeID_seq"', 4, true);


--
-- Name: User_TypeID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."User_TypeID_seq"', 1, false);


--
-- Name: User_UserID_seq; Type: SEQUENCE SET; Schema: service; Owner: postgres
--

SELECT pg_catalog.setval('service."User_UserID_seq"', 21, true);


--
-- Name: Accountant Accountant_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Accountant"
    ADD CONSTRAINT "Accountant_pkey" PRIMARY KEY ("AccountantID");


--
-- Name: Analyzer Analyzer_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Analyzer"
    ADD CONSTRAINT "Analyzer_pkey" PRIMARY KEY ("AnalyzerID");


--
-- Name: Assistant Assistant_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Assistant"
    ADD CONSTRAINT "Assistant_pkey" PRIMARY KEY ("AssistantID");


--
-- Name: History History_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."History"
    ADD CONSTRAINT "History_pkey" PRIMARY KEY ("HistoryId");


--
-- Name: InsuranceCompany InsuranceCompany_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."InsuranceCompany"
    ADD CONSTRAINT "InsuranceCompany_pkey" PRIMARY KEY ("CompanyID");


--
-- Name: Insurance Insurance_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Insurance"
    ADD CONSTRAINT "Insurance_pkey" PRIMARY KEY ("InsuranceID");


--
-- Name: Invoice Invoice_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Invoice"
    ADD CONSTRAINT "Invoice_pkey" PRIMARY KEY ("InvoiceID");


--
-- Name: OrderPatient OrderPatient_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."OrderPatient"
    ADD CONSTRAINT "OrderPatient_pkey" PRIMARY KEY ("OrderPatientID");


--
-- Name: OrderService OrderService_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."OrderService"
    ADD CONSTRAINT "OrderService_pkey" PRIMARY KEY ("OrderServiceID");


--
-- Name: Order Order_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY ("OrderID");


--
-- Name: Passport Passport_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Passport"
    ADD CONSTRAINT "Passport_pkey" PRIMARY KEY ("PassportID");


--
-- Name: Patient Patient_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Patient"
    ADD CONSTRAINT "Patient_pkey" PRIMARY KEY ("PatientID");


--
-- Name: ProvidedService ProvidedService_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."ProvidedService"
    ADD CONSTRAINT "ProvidedService_pkey" PRIMARY KEY ("ProvidedServiceID");


--
-- Name: Service Service_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Service"
    ADD CONSTRAINT "Service_pkey" PRIMARY KEY ("ServiceID");


--
-- Name: UserType UserType_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."UserType"
    ADD CONSTRAINT "UserType_pkey" PRIMARY KEY ("TypeID");


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("UserID");


--
-- Name: Accountant accountant_user_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Accountant"
    ADD CONSTRAINT accountant_user_fk FOREIGN KEY ("UserID") REFERENCES service."User"("UserID");


--
-- Name: Assistant assistant_service_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Assistant"
    ADD CONSTRAINT assistant_service_fk FOREIGN KEY ("ServiceID") REFERENCES service."Service"("ServiceID");


--
-- Name: Assistant assistant_user_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Assistant"
    ADD CONSTRAINT assistant_user_fk FOREIGN KEY ("UserID") REFERENCES service."User"("UserID");


--
-- Name: History history_user_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."History"
    ADD CONSTRAINT history_user_fk FOREIGN KEY ("UserID") REFERENCES service."User"("UserID");


--
-- Name: Insurance insurance_insurancecompany_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Insurance"
    ADD CONSTRAINT insurance_insurancecompany_fk FOREIGN KEY ("CompanyID") REFERENCES service."InsuranceCompany"("CompanyID");


--
-- Name: Invoice invoice_accountant_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Invoice"
    ADD CONSTRAINT invoice_accountant_fk FOREIGN KEY ("AccountantID") REFERENCES service."Accountant"("AccountantID");


--
-- Name: Invoice invoice_insurancecompany_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Invoice"
    ADD CONSTRAINT invoice_insurancecompany_fk FOREIGN KEY ("CompanyID") REFERENCES service."InsuranceCompany"("CompanyID");


--
-- Name: Invoice invoice_patient_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Invoice"
    ADD CONSTRAINT invoice_patient_fk FOREIGN KEY ("PatientID") REFERENCES service."Patient"("PatientID");


--
-- Name: OrderPatient orderpatient_order_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."OrderPatient"
    ADD CONSTRAINT orderpatient_order_fk FOREIGN KEY ("OrderID") REFERENCES service."Order"("OrderID");


--
-- Name: OrderPatient orderpatient_patient_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."OrderPatient"
    ADD CONSTRAINT orderpatient_patient_fk FOREIGN KEY ("PatientID") REFERENCES service."Patient"("PatientID");


--
-- Name: OrderService orderservice_order_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."OrderService"
    ADD CONSTRAINT orderservice_order_fk FOREIGN KEY ("OrderID") REFERENCES service."Order"("OrderID");


--
-- Name: OrderService orderservice_service_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."OrderService"
    ADD CONSTRAINT orderservice_service_fk FOREIGN KEY ("ServiceID") REFERENCES service."Service"("ServiceID");


--
-- Name: Patient patient_insurance_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Patient"
    ADD CONSTRAINT patient_insurance_fk FOREIGN KEY ("InsuranceID") REFERENCES service."Insurance"("InsuranceID");


--
-- Name: Patient patient_passport_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Patient"
    ADD CONSTRAINT patient_passport_fk FOREIGN KEY ("PassportID") REFERENCES service."Passport"("PassportID");


--
-- Name: Patient patient_user_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."Patient"
    ADD CONSTRAINT patient_user_fk FOREIGN KEY ("UserID") REFERENCES service."User"("UserID");


--
-- Name: ProvidedService providedservice_analyzer_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."ProvidedService"
    ADD CONSTRAINT providedservice_analyzer_fk FOREIGN KEY ("AnalyzerID") REFERENCES service."Analyzer"("AnalyzerID");


--
-- Name: ProvidedService providedservice_assistant_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."ProvidedService"
    ADD CONSTRAINT providedservice_assistant_fk FOREIGN KEY ("AssistantID") REFERENCES service."Assistant"("AssistantID");


--
-- Name: ProvidedService providedservice_order_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."ProvidedService"
    ADD CONSTRAINT providedservice_order_fk FOREIGN KEY ("OrderID") REFERENCES service."Order"("OrderID");


--
-- Name: ProvidedService providedservice_service_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."ProvidedService"
    ADD CONSTRAINT providedservice_service_fk FOREIGN KEY ("ServiceID") REFERENCES service."Service"("ServiceID");


--
-- Name: User user_usertype_fk; Type: FK CONSTRAINT; Schema: service; Owner: postgres
--

ALTER TABLE ONLY service."User"
    ADD CONSTRAINT user_usertype_fk FOREIGN KEY ("TypeID") REFERENCES service."UserType"("TypeID");


--
-- PostgreSQL database dump complete
--

