--liquibase formatted sql
--changeset ait:CHANGEME stripComments:false endDelimiter:/ runOnChange:true
create or replace trigger CHANGEME_biu
    before insert or update 
    on CHANGEME
    for each row
begin
    null;
end CHANGEME_biu;
/