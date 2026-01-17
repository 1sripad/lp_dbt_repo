    
with cte as (
    select 
        customer_id,
        customer_name,
        email,
        phone,
        status 
    from {{ source('alias', 'raw_customers') }}
    where status is not null
)
select  customer_id,
        customer_name,
        email,
        phone,
        status from cte 

