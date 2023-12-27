select 
    id as payment_id,
    orderid as order_id,
    payment_id as payment_method,
    status,
    amount/100 as amount,
    created as created_at
from {{source('jaffle_shop', 'payment')}}