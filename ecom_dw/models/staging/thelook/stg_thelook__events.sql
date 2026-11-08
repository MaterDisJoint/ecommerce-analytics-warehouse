select
    id                          as event_id,
    user_id,
    session_id,
    sequence_number,
    created_at                  as event_at,
    lower(event_type)           as event_type,
    uri                         as page_uri,
    traffic_source,
    browser,
    city,
    state,
    postal_code
from {{ source('thelook', 'events') }}
