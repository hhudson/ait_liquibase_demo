--liquibase formatted sql
--changeset ait:CHANGEME stripComments:false endDelimiter:/ runOnChange:true
create or replace package CHANGEME authid definer as

    procedure P_CHANGEME(
    p_param1_todo in varchar2);

end CHANGEME;
/
--rollback drop package body CHANGEME;