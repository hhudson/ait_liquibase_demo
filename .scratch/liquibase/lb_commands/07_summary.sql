0.[DEST_SCHEMA] deinstall
0.[ORIG_SCHEMA] alter table departments drop column created_on;
0. empty demo_2023-Apr-27 folder

1. generate schema
[lbges] lb ges -split true -sql true -labels version1

2.get rid of xml
<include file="table/departments_table.xml"/> 
<include file="table/departments_table.sql"/> 

3. edit sql file
[lbformat] --liquibase formatted sql
--changeset table_script:departments_table 
remove "orig_schema"

5. [DEST_SCHEMA] deploy 
[lbdeploy] lb update -changelog-file controller.xml 

6. databasechangelog

7. [ORIG_SCHEMA] add column
SQL> alter table departments add created_on date;

8. edit script 
[lbrunonchange] -- ...
-- ... runOnChange:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(1) from all_tables where upper(table_name) = 'DEPARTMENTS';
...
--liquibase formatted sql
--changeset table_script:departments_table.created_on
alter table departments add created_on date;

9. [DEST_SCHEMA] deploy 
lb update -changelog-file controller.xml 
