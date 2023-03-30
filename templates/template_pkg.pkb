--liquibase formatted sql
--changeset ait:CHANGEME_body stripComments:false endDelimiter:/ runOnChange:true
create or replace package body CHANGEME as

  procedure P_CHANGEME(
    p_param1_todo in varchar2)
  as
  begin
    null;
  exception
    when others then
      raise;
  end P_CHANGEME;


end CHANGEME;
/
--rollback drop package body CHANGEME;