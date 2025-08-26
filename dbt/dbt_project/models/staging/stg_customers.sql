with raw_customers as (
    select * from {{ ref('customers') }}
)
select
    id as customer_id,
    name,
    lower(email) as email,
    city
from raw_customers;
