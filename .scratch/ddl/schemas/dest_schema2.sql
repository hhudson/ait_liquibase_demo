create user dest_schema2 identified by myOracle0328;
GRANT CREATE SESSION TO dest_schema2;
GRANT CREATE TABLE TO dest_schema2;
GRANT CREATE VIEW TO dest_schema2;
GRANT CREATE SEQUENCE TO dest_schema2;
GRANT CREATE PROCEDURE TO dest_schema2;
GRANT CREATE TRIGGER TO dest_schema2;
GRANT CREATE ANY CONTEXT TO dest_schema2;
GRANT CREATE JOB TO dest_schema2;
ALTER USER dest_schema2 quota 100M on USERS;
