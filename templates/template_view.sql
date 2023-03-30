--liquibase formatted sql
--changeset ait:CHANGEME stripComments:false runOnChange:true
create or replace force view CHANGEME as
  
;
--rollback drop view CHANGEME