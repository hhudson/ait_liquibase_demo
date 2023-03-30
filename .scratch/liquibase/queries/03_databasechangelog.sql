select author, filename, md5sum, comments, tag, labels --, description
from databasechangelog
order by dateexecuted desc
/