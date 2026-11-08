select
    id                          as distribution_center_id,
    name                        as distribution_center_name,
    latitude,
    longitude
from {{ source('thelook', 'distribution_centers') }}
