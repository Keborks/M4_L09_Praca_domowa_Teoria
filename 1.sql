CREATE ROLE user_training WITH LOGIN PASSWORD 'eKafp74shodI0cr0clm4';

CREATE SCHEMA training AUTHORIZATION user_training;

DROP ROLE user_training;

REASSIGN OWNED BY user_training TO postgres;

DROP ROLE user_training;

CREATE ROLE reporting_ro;

GRANT CONNECT ON DATABASE postgres TO reporting_ro;

GRANT USAGE ON SCHEMA  training TO reporting_ro; 

GRANT CREATE ON SCHEMA training TO reporting_ro;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA training TO reporting_ro;

CREATE ROLE reporting_user WITH LOGIN PASSWORD 'zyrafywchodzadoszafy';

GRANT reporting_ro TO reporting_user;

CREATE TABLE training.home(
id INT);

REVOKE CREATE ON SCHEMA training FROM reporting_ro;

CREATE TABLE training.home1(
id INT);

CREATE TABLE public.home1(
id INT);
