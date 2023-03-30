--liquibase formatted sql
--changeset hayhudso:CHANGEME stripComments:false runOnChange:true
create or replace force view CHANGEME as
  
;
--rollback drop view CHANGEME