 with customer_transactions as (

    select *
    from {{ ref('int_customer_transactions') }}

),

aggregated as (

    select
        customer_id,
        customer_name,

        count(distinct transaction_id) as transaction_count,

        sum(amount) as total_revenue,

        min(transaction_date) as first_transaction_date,

        max(transaction_date) as latest_transaction_date

    from customer_transactions
    group by 1, 2

)

select *
from aggregated