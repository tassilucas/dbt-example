
select
    days_dif
from {{ ref('days_diff') }}
where days_dif < 0
