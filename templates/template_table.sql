--liquibase formatted sql
--changeset hayhudso:change_me stripComments:false 
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(1) from all_tables where upper(table_name) = upper('change_me');

create table change_me (
  change_me_id number generated always as identity not null,
  change_me_code varchar2(30) not null,
  change_me_name varchar2(30) not null,
  change_me_seq number not null,
  created_on date default sysdate not null,
	created_by varchar2(255 byte) default
    coalesce(
      sys_context('APEX$SESSION','app_user'),
      regexp_substr(sys_context('userenv','client_identifier'),'^[^:]*'),
      sys_context('userenv','session_user')
    )
    not null
    ,
  updated_on date,
  updated_by varchar2(255 byte)
);
--rollback drop table change_me;
