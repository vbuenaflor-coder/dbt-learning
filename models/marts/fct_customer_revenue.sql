 
 -- adding customer segmentation logic
 -- git practice
 -- customer ltv enhancement in progress
 select
    customer_id,
    customer_name,
    transaction_count,
    total_revenue,
    first_transaction_date,
    latest_transaction_date
from {{ ref('int_customer_revenue_rollup') }}
