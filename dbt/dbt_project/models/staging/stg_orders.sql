with raw_orders as (
    select * from {{ ref('orders') }}
)
select
    id as order_id,
    customer_id,
    amount,
    cast(order_date as date) as order_date
from raw_orders;
