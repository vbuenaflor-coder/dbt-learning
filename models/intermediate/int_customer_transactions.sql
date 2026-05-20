with transactions as (

    select *
    from {{ ref('stg_transactions') }}

),

customers as (

    select *
    from {{ ref('stg_customers') }}

),

joined as (

    select
        transactions.transaction_id,
        transactions.customer_id,
        customers.customer_name,
        transactions.transaction_date,
        transactions.amount
    from transactions
    left join customers
        on transactions.customer_id = customers.customer_id

)

select *
from joined
