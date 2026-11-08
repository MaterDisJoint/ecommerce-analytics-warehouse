select
    id                          as product_id,
    name                        as product_name,
    brand,
    category,
    department,
    sku,
    round(cost, 2)              as unit_cost,
    round(retail_price, 2)      as retail_price,
    distribution_center_id
from {{ source('thelook', 'products') }}
