select
    id                          as inventory_item_id,
    product_id,
    created_at                  as inflow_at,
    sold_at,
    round(cost, 2)              as unit_cost
from {{ source('thelook', 'inventory_items') }}
