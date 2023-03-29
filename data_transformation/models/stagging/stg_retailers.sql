with source as (
    select * from {{source('Sales','Retailers')}}
)

select *,current_timestamp() as ingestion_timestamp
from source