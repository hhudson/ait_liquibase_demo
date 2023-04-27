select --id, author, filename, comments, tag, labels, exectype
-- exectype, description, liquibase, contexts, deployment_id 
from databasechangelog
order by dateexecuted desc
/

-- ID AUTHOR FILENAME DATEEXECUTED ORDEREXECUTED EXECTYPE MD5SUM DESCRIPTION COMMENTS TAG LIQUIBASE CONTEXTS LABELS DEPLOYMENT_ID 
-- alias DATABASECHANGELOG=select id, exectype from databasechangelog order by dateexecuted desc;