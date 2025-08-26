with orders as (
    select * from {{ ref('stg_orders') }}
),
customers as (
    select * from {{ ref('stg_customers') }}
)
select
    c.customer_id,
    c.name,
    c.city,
    count(o.order_id) as total_orders,
    sum(o.amount) as total_spent
from customers c
left join orders o on c.customer_id = o.customer_id
group by c.customer_id, c.name, c.city;
