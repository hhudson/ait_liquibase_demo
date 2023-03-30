select object_type, object_name
from user_objects
where object_type in ('PACKAGE', 'PACKAGE BODY', 'TABLE', 'VIEW', 'TRIGGER')
and object_name not like 'DATABASECHANGELOG%'
order by 1,2
/