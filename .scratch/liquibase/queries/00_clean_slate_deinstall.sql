drop TABLE   AITCHANGES;
drop TABLE   AITCHANGESLOCK;
drop TABLE   AITCHANGES_ACTIONS;
drop TABLE   EMPLOYEES;
drop TABLE   DEPARTMENTS;
drop TRIGGER AITCHANGES_ACTIONS_TRG;
drop VIEW    AITCHANGES_DETAILS;
drop VIEW    EMP_V
/
select object_type, object_name
from user_objects
where object_type in ('PACKAGE', 'PACKAGE BODY', 'TABLE', 'VIEW', 'TRIGGER')
order by 1,2
/