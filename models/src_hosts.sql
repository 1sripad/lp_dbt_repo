with raw_hosts as
(
    select * from airbnb.raw.raw_hosts
)
select 
id,
name as emp_name,
created_at as created_date,
updated_at as updated_date
from
raw_hosts