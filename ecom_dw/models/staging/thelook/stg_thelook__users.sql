select
    id                          as user_id,
    age,
    gender,
    nullif(city, 'null')        as city,
    state,
    postal_code,
    country,
    latitude,
    longitude,
    traffic_source              as acquisition_source,
    created_at                  as signed_up_at
from {{ source('thelook', 'users') }}
