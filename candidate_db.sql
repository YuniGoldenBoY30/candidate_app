/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : PostgreSQL
 Source Server Version : 130004
 Source Host           : localhost:5432
 Source Catalog        : candidate_db
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 130004
 File Encoding         : 65001

 Date: 15/01/2023 05:45:48
*/


-- ----------------------------
-- Sequence structure for auth_group_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_id_seq";
CREATE SEQUENCE "public"."auth_group_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_permissions_id_seq";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_permission_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_permission_id_seq";
CREATE SEQUENCE "public"."auth_permission_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_user_groups_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_user_groups_id_seq";
CREATE SEQUENCE "public"."auth_user_groups_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_user_id_seq";
CREATE SEQUENCE "public"."auth_user_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_user_user_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_user_user_permissions_id_seq";
CREATE SEQUENCE "public"."auth_user_user_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for corsheaders_corsmodel_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."corsheaders_corsmodel_id_seq";
CREATE SEQUENCE "public"."corsheaders_corsmodel_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_admin_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_admin_log_id_seq";
CREATE SEQUENCE "public"."django_admin_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_content_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_content_type_id_seq";
CREATE SEQUENCE "public"."django_content_type_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_migrations_id_seq";
CREATE SEQUENCE "public"."django_migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group";
CREATE TABLE "public"."auth_group" (
  "id" int4 NOT NULL DEFAULT nextval('auth_group_id_seq'::regclass),
  "name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group_permissions";
CREATE TABLE "public"."auth_group_permissions" (
  "id" int8 NOT NULL DEFAULT nextval('auth_group_permissions_id_seq'::regclass),
  "group_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_permission";
CREATE TABLE "public"."auth_permission" (
  "id" int4 NOT NULL DEFAULT nextval('auth_permission_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4 NOT NULL,
  "codename" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "public"."auth_permission" VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO "public"."auth_permission" VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO "public"."auth_permission" VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO "public"."auth_permission" VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO "public"."auth_permission" VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO "public"."auth_permission" VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO "public"."auth_permission" VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO "public"."auth_permission" VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO "public"."auth_permission" VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO "public"."auth_permission" VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO "public"."auth_permission" VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO "public"."auth_permission" VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO "public"."auth_permission" VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO "public"."auth_permission" VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO "public"."auth_permission" VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO "public"."auth_permission" VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO "public"."auth_permission" VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO "public"."auth_permission" VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO "public"."auth_permission" VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO "public"."auth_permission" VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO "public"."auth_permission" VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO "public"."auth_permission" VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO "public"."auth_permission" VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO "public"."auth_permission" VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO "public"."auth_permission" VALUES (25, 'Can add cors model', 7, 'add_corsmodel');
INSERT INTO "public"."auth_permission" VALUES (26, 'Can change cors model', 7, 'change_corsmodel');
INSERT INTO "public"."auth_permission" VALUES (27, 'Can delete cors model', 7, 'delete_corsmodel');
INSERT INTO "public"."auth_permission" VALUES (28, 'Can view cors model', 7, 'view_corsmodel');
INSERT INTO "public"."auth_permission" VALUES (29, 'Can add Token', 8, 'add_token');
INSERT INTO "public"."auth_permission" VALUES (30, 'Can change Token', 8, 'change_token');
INSERT INTO "public"."auth_permission" VALUES (31, 'Can delete Token', 8, 'delete_token');
INSERT INTO "public"."auth_permission" VALUES (32, 'Can view Token', 8, 'view_token');
INSERT INTO "public"."auth_permission" VALUES (33, 'Can add token', 9, 'add_tokenproxy');
INSERT INTO "public"."auth_permission" VALUES (34, 'Can change token', 9, 'change_tokenproxy');
INSERT INTO "public"."auth_permission" VALUES (35, 'Can delete token', 9, 'delete_tokenproxy');
INSERT INTO "public"."auth_permission" VALUES (36, 'Can view token', 9, 'view_tokenproxy');
INSERT INTO "public"."auth_permission" VALUES (37, 'Can add techs', 10, 'add_techs');
INSERT INTO "public"."auth_permission" VALUES (38, 'Can change techs', 10, 'change_techs');
INSERT INTO "public"."auth_permission" VALUES (39, 'Can delete techs', 10, 'delete_techs');
INSERT INTO "public"."auth_permission" VALUES (40, 'Can view techs', 10, 'view_techs');
INSERT INTO "public"."auth_permission" VALUES (41, 'Can add candidates', 11, 'add_candidates');
INSERT INTO "public"."auth_permission" VALUES (42, 'Can change candidates', 11, 'change_candidates');
INSERT INTO "public"."auth_permission" VALUES (43, 'Can delete candidates', 11, 'delete_candidates');
INSERT INTO "public"."auth_permission" VALUES (44, 'Can view candidates', 11, 'view_candidates');
INSERT INTO "public"."auth_permission" VALUES (45, 'Can add candidate techs', 12, 'add_candidatetechs');
INSERT INTO "public"."auth_permission" VALUES (46, 'Can change candidate techs', 12, 'change_candidatetechs');
INSERT INTO "public"."auth_permission" VALUES (47, 'Can delete candidate techs', 12, 'delete_candidatetechs');
INSERT INTO "public"."auth_permission" VALUES (48, 'Can view candidate techs', 12, 'view_candidatetechs');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user";
CREATE TABLE "public"."auth_user" (
  "id" int4 NOT NULL DEFAULT nextval('auth_user_id_seq'::regclass),
  "password" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "last_login" timestamptz(6),
  "is_superuser" bool NOT NULL,
  "username" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "first_name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "last_name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(254) COLLATE "pg_catalog"."default" NOT NULL,
  "is_staff" bool NOT NULL,
  "is_active" bool NOT NULL,
  "date_joined" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO "public"."auth_user" VALUES (1, 'pbkdf2_sha256$260000$dhWcm5sUKjoAmlJJNztvxR$lR+Yn27SFESAKB3/i4tQFZGokK1i/9zMfuM+jLJAw38=', '2023-01-15 01:53:23.10318-05', 't', 'yuniel', '', '', 'admin@admin.ad', 't', 't', '2023-01-15 01:53:06.094774-05');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user_groups";
CREATE TABLE "public"."auth_user_groups" (
  "id" int8 NOT NULL DEFAULT nextval('auth_user_groups_id_seq'::regclass),
  "user_id" int4 NOT NULL,
  "group_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user_user_permissions";
CREATE TABLE "public"."auth_user_user_permissions" (
  "id" int8 NOT NULL DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass),
  "user_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for authtoken_token
-- ----------------------------
DROP TABLE IF EXISTS "public"."authtoken_token";
CREATE TABLE "public"."authtoken_token" (
  "key" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "created" timestamptz(6) NOT NULL,
  "user_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of authtoken_token
-- ----------------------------

-- ----------------------------
-- Table structure for candidate_techs
-- ----------------------------
DROP TABLE IF EXISTS "public"."candidate_techs";
CREATE TABLE "public"."candidate_techs" (
  "candidate_id" uuid NOT NULL,
  "tech_id" uuid NOT NULL,
  "years" int4 NOT NULL
)
;

-- ----------------------------
-- Records of candidate_techs
-- ----------------------------
INSERT INTO "public"."candidate_techs" VALUES ('ed706d16-3e6d-4c58-9b7f-e1c527487c65', 'ee7bf1d8-9cf3-4ba6-81a6-a068ecb3691b', 4);
INSERT INTO "public"."candidate_techs" VALUES ('e9e8d4a2-389c-40bb-ad00-7721a81b9750', '68035185-cd37-4701-b4d2-bbad7cb8e3ff', 13);
INSERT INTO "public"."candidate_techs" VALUES ('d4f64a3f-ca43-4526-8bec-5117321766ba', '68035185-cd37-4701-b4d2-bbad7cb8e3ff', 12);
INSERT INTO "public"."candidate_techs" VALUES ('e9e8d4a2-389c-40bb-ad00-7721a81b9750', 'ee7bf1d8-9cf3-4ba6-81a6-a068ecb3691b', 1);
INSERT INTO "public"."candidate_techs" VALUES ('3e5ac3a2-17a8-4285-b7bb-6dc4fb0455df', '68035185-cd37-4701-b4d2-bbad7cb8e3ff', 8);
INSERT INTO "public"."candidate_techs" VALUES ('3e5ac3a2-17a8-4285-b7bb-6dc4fb0455df', 'ee7bf1d8-9cf3-4ba6-81a6-a068ecb3691b', 18);

-- ----------------------------
-- Table structure for candidates
-- ----------------------------
DROP TABLE IF EXISTS "public"."candidates";
CREATE TABLE "public"."candidates" (
  "id" uuid NOT NULL,
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "lastname" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "ci" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "address" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "age" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "gender" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of candidates
-- ----------------------------
INSERT INTO "public"."candidates" VALUES ('75a676dd-eae9-4265-b15f-4ab501b8e14d', 'Blu', 'lastname', '000000', 'sadasda', '10', 'male');
INSERT INTO "public"."candidates" VALUES ('9d4844f5-f846-4a72-b0fa-728cac694e59', 'Blasd', 'lastname', '000000', 'sadasda', '10', 'male');
INSERT INTO "public"."candidates" VALUES ('86212eac-37bb-4f15-8391-4dc3f90fce48', 'SFSDf', 'lastname', '000000', 'sadasda', '10', 'male');
INSERT INTO "public"."candidates" VALUES ('e9e8d4a2-389c-40bb-ad00-7721a81b9750', 'jose', 'lastname', '000000', 'sadasda', '10', 'male');
INSERT INTO "public"."candidates" VALUES ('ed706d16-3e6d-4c58-9b7f-e1c527487c65', 'juian', 'lastname', '000000', 'sadasda', '10', 'male');
INSERT INTO "public"."candidates" VALUES ('d467f486-1464-413d-92d3-04a892d0f4b9', 'Jose', 'Peres', '98965656532', 'string', '40', 'male');
INSERT INTO "public"."candidates" VALUES ('d4f64a3f-ca43-4526-8bec-5117321766ba', 'fernando', 'lastname', '000000', 'sadasda', '10', 'male');
INSERT INTO "public"."candidates" VALUES ('0a5cc817-0439-4a43-85cc-4795f2684660', 'string', 'string', 'string', 'string', 'string', 'string');
INSERT INTO "public"."candidates" VALUES ('5865f823-51af-4122-a321-933b9b36add5', 'string', 'string', 'string', 'string', 'string', 'string');
INSERT INTO "public"."candidates" VALUES ('9d45f339-b5cb-4f3c-8101-d1a0c7c27dac', 'string', 'string', 'string', 'string', 'string', 'string');
INSERT INTO "public"."candidates" VALUES ('8056d271-f220-429c-b292-5bbc500b6aac', 'string', 'string', 'string', 'string', 'string', 'string');
INSERT INTO "public"."candidates" VALUES ('d685d9e8-a4f6-4561-9fbc-03a6639ef3eb', 'string', 'string', 'string', 'string', 'string', 'string');
INSERT INTO "public"."candidates" VALUES ('d466875e-a5ae-4a26-8297-4c4113d7d152', 'ELTIGER', 'MOSNTRO', '94073029908', 'string', '20', 'male');
INSERT INTO "public"."candidates" VALUES ('d0ef10ab-023b-4ab7-a50f-524d0587e0c3', 'ELTIGER', 'MOSNTRO', '94073029908', 'string', '20', 'male');
INSERT INTO "public"."candidates" VALUES ('f647e755-be41-4e57-b1c1-4595d27d7320', 'ELTIGER', 'MOSNTRO', '94073029908', 'string', '20', 'male');
INSERT INTO "public"."candidates" VALUES ('babb2305-de36-4e5a-9e76-785bcf96edb7', 'ELTIGER', 'MOSNTRO', '94073029908', 'string', '20', 'male');
INSERT INTO "public"."candidates" VALUES ('e6dcae3d-25b8-4585-991b-bf97fb85fb41', 'ELTIGER', 'MOSNTRO', '94073029908', 'string', '20', 'male');
INSERT INTO "public"."candidates" VALUES ('3e5ac3a2-17a8-4285-b7bb-6dc4fb0455df', 'ELTIGER', 'MOSNTRO', '94073029908', 'string', '20', 'male');

-- ----------------------------
-- Table structure for corsheaders_corsmodel
-- ----------------------------
DROP TABLE IF EXISTS "public"."corsheaders_corsmodel";
CREATE TABLE "public"."corsheaders_corsmodel" (
  "id" int8 NOT NULL DEFAULT nextval('corsheaders_corsmodel_id_seq'::regclass),
  "cors" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of corsheaders_corsmodel
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_admin_log";
CREATE TABLE "public"."django_admin_log" (
  "id" int4 NOT NULL DEFAULT nextval('django_admin_log_id_seq'::regclass),
  "action_time" timestamptz(6) NOT NULL,
  "object_id" text COLLATE "pg_catalog"."default",
  "object_repr" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "action_flag" int2 NOT NULL,
  "change_message" text COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4,
  "user_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_content_type";
CREATE TABLE "public"."django_content_type" (
  "id" int4 NOT NULL DEFAULT nextval('django_content_type_id_seq'::regclass),
  "app_label" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "model" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "public"."django_content_type" VALUES (1, 'admin', 'logentry');
INSERT INTO "public"."django_content_type" VALUES (2, 'auth', 'permission');
INSERT INTO "public"."django_content_type" VALUES (3, 'auth', 'group');
INSERT INTO "public"."django_content_type" VALUES (4, 'auth', 'user');
INSERT INTO "public"."django_content_type" VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" VALUES (6, 'sessions', 'session');
INSERT INTO "public"."django_content_type" VALUES (7, 'corsheaders', 'corsmodel');
INSERT INTO "public"."django_content_type" VALUES (8, 'authtoken', 'token');
INSERT INTO "public"."django_content_type" VALUES (9, 'authtoken', 'tokenproxy');
INSERT INTO "public"."django_content_type" VALUES (10, 'api', 'techs');
INSERT INTO "public"."django_content_type" VALUES (11, 'api', 'candidates');
INSERT INTO "public"."django_content_type" VALUES (12, 'api', 'candidatetechs');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_migrations";
CREATE TABLE "public"."django_migrations" (
  "id" int8 NOT NULL DEFAULT nextval('django_migrations_id_seq'::regclass),
  "app" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "applied" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO "public"."django_migrations" VALUES (1, 'contenttypes', '0001_initial', '2023-01-15 00:51:52.575311-05');
INSERT INTO "public"."django_migrations" VALUES (2, 'auth', '0001_initial', '2023-01-15 00:51:52.745798-05');
INSERT INTO "public"."django_migrations" VALUES (3, 'admin', '0001_initial', '2023-01-15 00:51:52.787093-05');
INSERT INTO "public"."django_migrations" VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-01-15 00:51:52.792816-05');
INSERT INTO "public"."django_migrations" VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-15 00:51:52.798817-05');
INSERT INTO "public"."django_migrations" VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-01-15 00:51:52.813089-05');
INSERT INTO "public"."django_migrations" VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-01-15 00:51:52.820909-05');
INSERT INTO "public"."django_migrations" VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-01-15 00:51:52.82902-05');
INSERT INTO "public"."django_migrations" VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-01-15 00:51:52.836018-05');
INSERT INTO "public"."django_migrations" VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-01-15 00:51:52.843072-05');
INSERT INTO "public"."django_migrations" VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-01-15 00:51:52.84523-05');
INSERT INTO "public"."django_migrations" VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-15 00:51:52.851238-05');
INSERT INTO "public"."django_migrations" VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-01-15 00:51:52.869128-05');
INSERT INTO "public"."django_migrations" VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-15 00:51:52.875128-05');
INSERT INTO "public"."django_migrations" VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-01-15 00:51:52.883495-05');
INSERT INTO "public"."django_migrations" VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-01-15 00:51:52.88999-05');
INSERT INTO "public"."django_migrations" VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-15 00:51:52.89699-05');
INSERT INTO "public"."django_migrations" VALUES (18, 'authtoken', '0001_initial', '2023-01-15 00:51:52.926839-05');
INSERT INTO "public"."django_migrations" VALUES (19, 'authtoken', '0002_auto_20160226_1747', '2023-01-15 00:51:52.945956-05');
INSERT INTO "public"."django_migrations" VALUES (20, 'authtoken', '0003_tokenproxy', '2023-01-15 00:51:52.948716-05');
INSERT INTO "public"."django_migrations" VALUES (21, 'corsheaders', '0001_initial', '2023-01-15 00:51:52.959909-05');
INSERT INTO "public"."django_migrations" VALUES (22, 'corsheaders', '0002_alter_corsmodel_id', '2023-01-15 00:51:52.980938-05');
INSERT INTO "public"."django_migrations" VALUES (23, 'sessions', '0001_initial', '2023-01-15 00:51:53.013045-05');
INSERT INTO "public"."django_migrations" VALUES (24, 'api', '0001_initial', '2023-01-15 01:23:22.438284-05');
INSERT INTO "public"."django_migrations" VALUES (25, 'api', '0002_auto_20230115_0129', '2023-01-15 01:30:04.720546-05');
INSERT INTO "public"."django_migrations" VALUES (26, 'api', '0003_auto_20230115_0133', '2023-01-15 01:33:36.412124-05');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_session";
CREATE TABLE "public"."django_session" (
  "session_key" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "session_data" text COLLATE "pg_catalog"."default" NOT NULL,
  "expire_date" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO "public"."django_session" VALUES ('bktji6sqoxhmroq66v53lzr0ts83ftro', '.eJxVjMEOwiAQRP-FsyHQQgGP3v0GsssuUjU0Ke3J-O9K0oMe5jLvzbxEhH0rcW-8xpnEWWhx-u0Q0oNrB3SHeltkWuq2zii7Ig_a5HUhfl4O9--gQCvfdR4DeOdUGtBMhnFUnjMBZRvYAWPWaLxOyXCwPRRcdoO3E3jmoFC8PwKEOLc:1pGwtP:GUTEMa1e2K1F6gKxn0GwD8AqWCND0PgZxlWGs0EwRpA', '2023-01-29 01:53:23.106263-05');

-- ----------------------------
-- Table structure for techs
-- ----------------------------
DROP TABLE IF EXISTS "public"."techs";
CREATE TABLE "public"."techs" (
  "id" uuid NOT NULL,
  "title" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "content" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of techs
-- ----------------------------
INSERT INTO "public"."techs" VALUES ('e0309901-9af9-4720-8a3b-3614a383da11', 'AWS', NULL);
INSERT INTO "public"."techs" VALUES ('ee7bf1d8-9cf3-4ba6-81a6-a068ecb3691b', 'CSS', NULL);
INSERT INTO "public"."techs" VALUES ('68035185-cd37-4701-b4d2-bbad7cb8e3ff', 'PYTHON', NULL);
INSERT INTO "public"."techs" VALUES ('1482da8a-d5bc-40f8-a8b0-c2be57539e43', 'Angular', 'GRat Lenguage');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_id_seq"
OWNED BY "public"."auth_group"."id";
SELECT setval('"public"."auth_group_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_permissions_id_seq"
OWNED BY "public"."auth_group_permissions"."id";
SELECT setval('"public"."auth_group_permissions_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_permission_id_seq"
OWNED BY "public"."auth_permission"."id";
SELECT setval('"public"."auth_permission_id_seq"', 49, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_user_groups_id_seq"
OWNED BY "public"."auth_user_groups"."id";
SELECT setval('"public"."auth_user_groups_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_user_id_seq"
OWNED BY "public"."auth_user"."id";
SELECT setval('"public"."auth_user_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."auth_user_user_permissions_id_seq"
OWNED BY "public"."auth_user_user_permissions"."id";
SELECT setval('"public"."auth_user_user_permissions_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."corsheaders_corsmodel_id_seq"
OWNED BY "public"."corsheaders_corsmodel"."id";
SELECT setval('"public"."corsheaders_corsmodel_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_admin_log_id_seq"
OWNED BY "public"."django_admin_log"."id";
SELECT setval('"public"."django_admin_log_id_seq"', 2, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_content_type_id_seq"
OWNED BY "public"."django_content_type"."id";
SELECT setval('"public"."django_content_type_id_seq"', 13, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."django_migrations_id_seq"
OWNED BY "public"."django_migrations"."id";
SELECT setval('"public"."django_migrations_id_seq"', 27, true);

-- ----------------------------
-- Indexes structure for table auth_group
-- ----------------------------
CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename");

-- ----------------------------
-- Primary Key structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user
-- ----------------------------
CREATE INDEX "auth_user_username_6821ab7c_like" ON "public"."auth_user" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_user
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD CONSTRAINT "auth_user_username_key" UNIQUE ("username");

-- ----------------------------
-- Primary Key structure for table auth_user
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD CONSTRAINT "auth_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user_groups
-- ----------------------------
CREATE INDEX "auth_user_groups_group_id_97559544" ON "public"."auth_user_groups" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "public"."auth_user_groups" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_user_groups
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD CONSTRAINT "auth_user_groups_user_id_group_id_94350c0c_uniq" UNIQUE ("user_id", "group_id");

-- ----------------------------
-- Primary Key structure for table auth_user_groups
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD CONSTRAINT "auth_user_groups_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user_user_permissions
-- ----------------------------
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "public"."auth_user_user_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "public"."auth_user_user_permissions" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" UNIQUE ("user_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table authtoken_token
-- ----------------------------
CREATE INDEX "authtoken_token_key_10f0b77e_like" ON "public"."authtoken_token" USING btree (
  "key" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table authtoken_token
-- ----------------------------
ALTER TABLE "public"."authtoken_token" ADD CONSTRAINT "authtoken_token_user_id_key" UNIQUE ("user_id");

-- ----------------------------
-- Primary Key structure for table authtoken_token
-- ----------------------------
ALTER TABLE "public"."authtoken_token" ADD CONSTRAINT "authtoken_token_pkey" PRIMARY KEY ("key");

-- ----------------------------
-- Primary Key structure for table candidate_techs
-- ----------------------------
ALTER TABLE "public"."candidate_techs" ADD CONSTRAINT "candidate_techs_pkey" PRIMARY KEY ("candidate_id", "tech_id");

-- ----------------------------
-- Primary Key structure for table candidates
-- ----------------------------
ALTER TABLE "public"."candidates" ADD CONSTRAINT "candidates_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table corsheaders_corsmodel
-- ----------------------------
ALTER TABLE "public"."corsheaders_corsmodel" ADD CONSTRAINT "corsheaders_corsmodel_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_action_flag_check" CHECK (action_flag >= 0);

-- ----------------------------
-- Primary Key structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table django_migrations
-- ----------------------------
ALTER TABLE "public"."django_migrations" ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING btree (
  "expire_date" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);
CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING btree (
  "session_key" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table django_session
-- ----------------------------
ALTER TABLE "public"."django_session" ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");

-- ----------------------------
-- Primary Key structure for table techs
-- ----------------------------
ALTER TABLE "public"."techs" ADD CONSTRAINT "techs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_user_groups
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_groups" ADD CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table authtoken_token
-- ----------------------------
ALTER TABLE "public"."authtoken_token" ADD CONSTRAINT "authtoken_token_user_id_35299eff_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table candidate_techs
-- ----------------------------
ALTER TABLE "public"."candidate_techs" ADD CONSTRAINT "candidate_techs_candidate_id_fkey" FOREIGN KEY ("candidate_id") REFERENCES "public"."candidates" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."candidate_techs" ADD CONSTRAINT "candidate_techs_tech_id_fkey" FOREIGN KEY ("tech_id") REFERENCES "public"."techs" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."django_admin_log" ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
